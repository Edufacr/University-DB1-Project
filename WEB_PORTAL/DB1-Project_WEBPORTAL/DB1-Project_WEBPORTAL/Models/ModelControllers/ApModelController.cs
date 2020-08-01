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
        private SqlCommand getAps;
        private SqlCommand getMovementsByApNumber;

        public static ApModelController getInstance(){
            return Singleton ??= new ApModelController();
        }
        public int ExecuteGetMovementsByApNumber(int pApNumber){
            //return ExecuteQuerryCommand(getMovementsByApNumber);
            return 0;
        }
        public List<ApModel> ExecuteGetAps(){
            return ExecuteQuerryCommand(getAps);
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
                    ap.MoratoryInterestRate = (float)Convert.ToDouble(reader["MoratoryInterestRate"]);
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

            getMovementsByApNumber = new SqlCommand("SP_getMovementsByApNumber",connection);
            getMovementsByApNumber.CommandType = CommandType.StoredProcedure;
            
            getAps = new SqlCommand("SP_getAps",connection);
            getAps.CommandType = CommandType.StoredProcedure;
        }
            
    }

}