using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
namespace DB1_Project_WEBPORTAL.Models.ModelControllers{
    public class ApModelController
    {
        public static ApModelController Singleton;
        protected SqlConnection connection;
        //SPs
        private SqlCommand GetAps;
        private SqlCommand GetMovementsByApNumber;
        private SqlCommand GetApDetails;

        public static ApModelController getInstance(){
            return Singleton ??= new ApModelController();
        }
        public ApModel ExecuteGetApDetails(int pApNumber){
            GetApDetails.Parameters.Add("@inApNumber",SqlDbType.Int).Value = pApNumber;
            List<ApModel> list = ExecuteQuerryCommand(GetApDetails);
            return list[0];
        }
        public List<ApMovementModel> ExecuteGetMovementsByApNumber(int pApNumber){
            List<ApMovementModel> resultList = new List<ApMovementModel>();
            try{
                connection.Open();
                GetMovementsByApNumber.Parameters.Add("@inApNumber",SqlDbType.Int).Value = pApNumber;

                SqlDataReader reader = GetMovementsByApNumber.ExecuteReader();
                while (reader.Read())
                {
                    ApMovementModel apMove = new ApMovementModel();
                    
                    apMove.MovNumber = Convert.ToInt32(reader["MovNumber"]);
                    apMove.MovTypeName = Convert.ToString(reader["MovTypeName"]);
                    apMove.Amount = Convert.ToDouble(reader["Amount"]);                    
                    apMove.MonthlyInterest = Convert.ToDouble(reader["MonthlyInterest"]);
                    apMove.PaymentTermsLeft = Convert.ToInt32(reader["PaymentTermsLeft"]);
                    apMove.NewBalance = Convert.ToDouble(reader["NewBalance"]);
                    apMove.Date = Convert.ToDateTime(reader["Date"]);
                    apMove.InsertedAt = Convert.ToDateTime(reader["InsertedAt"]);

                    resultList.Add(apMove);
                }
                GetMovementsByApNumber.Parameters.Clear();
                connection.Close();
            }
            catch (Exception e){
                throw (e);
            }
            return resultList;
        }
        public List<ApModel> ExecuteGetAps(int pPropertyNum){
            GetAps.Parameters.Add("@inPropertyNum",SqlDbType.Int).Value = pPropertyNum;
            return ExecuteQuerryCommand(GetAps);
        }
        private List<ApModel> ExecuteQuerryCommand(SqlCommand command){
            List<ApModel> resultList = new List<ApModel>();
            try{
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    ApModel ap = new ApModel();
                    
                    ap.ApNumber = Convert.ToInt32(reader["ApNumber"]);
                    ap.Balance = Convert.ToDouble(reader["Balance"]);
                    ap.FeeValue = Convert.ToDouble(reader["FeeValue"]);
                    ap.InitialAmount = Convert.ToInt32(reader["InitialAmount"]);
                    ap.AnnualInterestRate = (float)Convert.ToDouble(reader["AnnualInterestRate"]);
                    ap.PaymentTerms = Convert.ToInt32(reader["PaymentTerms"]);
                    ap.PaymentTermsLeft = Convert.ToInt32(reader["PaymentTermsLeft"]);
                    ap.InsertedAt = Convert.ToDateTime(reader["InsertedAt"]);
                    ap.UpdatedAt = Convert.ToDateTime(reader["UpdatedAt"]);
                    
                    resultList.Add(ap);
                }
                command.Parameters.Clear();
                connection.Close();
            }
            catch (Exception e){
                throw (e);
            }
            return resultList;
        }
        private ApModelController(){
            connection = DBConnection.getInstance().Connection;

            GetMovementsByApNumber = new SqlCommand("SP_getMovementsByApNumber",connection);
            GetMovementsByApNumber.CommandType = CommandType.StoredProcedure;
            
            GetAps = new SqlCommand("SP_getAps",connection);
            GetAps.CommandType = CommandType.StoredProcedure;

            GetApDetails = new SqlCommand("SP_getApDetails",connection);
            GetApDetails.CommandType = CommandType.StoredProcedure;
        }   
    }
}