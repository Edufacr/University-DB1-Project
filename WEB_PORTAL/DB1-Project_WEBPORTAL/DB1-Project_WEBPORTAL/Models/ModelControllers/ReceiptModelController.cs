using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace DB1_Project_WEBPORTAL.Models.ModelControllers
{
    public class ReceiptModelController
    {
        protected SqlConnection connection;

        private SqlCommand GetPropertyPendingReceipts;
        private SqlCommand GetProofOfPaymentReceipts;
        private SqlCommand GetPropertyPaymentProofs;
        private SqlCommand GetProofOfPaymentDetails;
        private SqlCommand GetSelectedReceipts;
        private SqlCommand PaySelectedReceipts;
        private SqlCommand PaySelectedReceiptsWithAP;
        private SqlCommand SelectReceipt;
        private SqlCommand ClearSelectedReceiptTable;
        private SqlCommand GetSelectedReceiptsTotal;
        private SqlCommand GetFeeAmount;

        private SqlCommand GetReceiptDetailsWithAp;
        
        public static ReceiptModelController Singleton;
        
        protected ReceiptModelController()
        {
            connection = DBConnection.getInstance().Connection;
            
            GetPropertyPendingReceipts = new SqlCommand("SP_getPendingReceipts", connection);
            GetPropertyPendingReceipts.CommandType = CommandType.StoredProcedure;
            
            GetProofOfPaymentReceipts = new SqlCommand("SP_getReceiptsFromProofOfPayment", connection);
            GetProofOfPaymentReceipts.CommandType = CommandType.StoredProcedure;
            
            GetPropertyPaymentProofs = new SqlCommand("SP_getProofOfPaymentByPropertyNum", connection);
            GetPropertyPaymentProofs.CommandType = CommandType.StoredProcedure;

            GetProofOfPaymentDetails = new SqlCommand("SP_getProofOfPaymentByProofNumber",connection);
            GetProofOfPaymentDetails.CommandType = CommandType.StoredProcedure;
            
            GetSelectedReceipts = new SqlCommand("SP_getSelectedReceipts",connection);
            GetSelectedReceipts.CommandType = CommandType.StoredProcedure;

            GetSelectedReceiptsTotal = new SqlCommand("SP_getSelectedTotalAmount",connection);
            GetSelectedReceiptsTotal.CommandType = CommandType.StoredProcedure;
            
            PaySelectedReceipts = new SqlCommand("SP_paySelectedReceipts",connection);
            PaySelectedReceipts.CommandType = CommandType.StoredProcedure;

            PaySelectedReceiptsWithAP = new SqlCommand("SP_generateAP",connection);
            PaySelectedReceiptsWithAP.CommandType = CommandType.StoredProcedure;
            
            SelectReceipt = new SqlCommand("SP_selectReceipt ",connection);
            SelectReceipt.CommandType = CommandType.StoredProcedure;
            
            ClearSelectedReceiptTable = new SqlCommand("SP_clearSelectedReceiptsTable",connection);
            ClearSelectedReceiptTable.CommandType = CommandType.StoredProcedure;

            GetFeeAmount = new SqlCommand("SP_calculateFeeValue",connection);
            GetFeeAmount.CommandType = CommandType.StoredProcedure;

            GetReceiptDetailsWithAp = new SqlCommand("SP_getReceiptWithAp",connection);
            GetReceiptDetailsWithAp.CommandType = CommandType.StoredProcedure;            
        }

        public static ReceiptModelController getInstance()
        {
            return Singleton ??= new ReceiptModelController();
        }
        public ReceiptModel ExecuteGetReceiptDetailsWithAp(int pMovNumber){
            Console.WriteLine(pMovNumber);
            GetReceiptDetailsWithAp.Parameters.Add("@inMovNumber",SqlDbType.Int).Value = pMovNumber;
            Console.WriteLine(GetReceiptDetailsWithAp.Parameters["@inMovNumber"].Value);
            return ExecuteQueryCommand(GetReceiptDetailsWithAp)[0];
        }

        public int ExecutePaySelectedReceipts()
        {
            return ExecuteNonQueryCommand(PaySelectedReceipts);
        }
        public int ExecutePaySelectedReceiptsWithAP(int pPropertyNumber, int pPaymentTerms)
        {
            PaySelectedReceiptsWithAP.Parameters.Add("@inPropertyNumber",SqlDbType.Int).Value = pPropertyNumber;
            PaySelectedReceiptsWithAP.Parameters.Add("@inPaymentTerms",SqlDbType.Int).Value = pPaymentTerms;
            return ExecuteNonQueryCommand(PaySelectedReceiptsWithAP);
        }
        
        public int ExecuteCreateSelectedReceiptTable()
        {
            return ExecuteNonQueryCommand(ClearSelectedReceiptTable);
        }

        public int ExecuteSelectReceipt(int pReceiptNumber)
        {
            SelectReceipt.Parameters.Add("@inReceiptNumber", SqlDbType.Int).Value = pReceiptNumber;
            return ExecuteNonQueryCommand(SelectReceipt);
        }
        
        public List<ReceiptModel> ExecuteGetProofOfPaymentReceipts(int pProofNumber)
        {
            GetProofOfPaymentReceipts.Parameters.Add("@inProofNumber", SqlDbType.Int).Value = pProofNumber;
            return ExecuteQueryCommand(GetProofOfPaymentReceipts);
        }
        public List<ReceiptModel> ExecuteGetPropertyPendingReceipts(int pPropertyNumber)
        {
            GetPropertyPendingReceipts.Parameters.Add("@inPropertyNum", SqlDbType.Int).Value = pPropertyNumber;
            return ExecuteQueryCommand(GetPropertyPendingReceipts);
        }
        public double ExecuteGetFeeAmount(double pTotal,int pTerms){
            GetFeeAmount.Parameters.Add("@inOriginalAmount",SqlDbType.Money).Value = pTotal;
            GetFeeAmount.Parameters.Add("@inPaymentTerms",SqlDbType.Int).Value = pTerms;
            GetFeeAmount.Parameters.Add("@outAnnualInterestRate",SqlDbType.Decimal).Value = 0;
            return ExecuteOutputParameterQuerry("@outFeeValue",GetFeeAmount);
        }

        public List<ReceiptModel> ExecuteGetSelectedReceipts()
        {
            return ExecuteQueryCommand(GetSelectedReceipts);
        }
        public double ExecuteGetSelectedReceiptsTotal(){
            return ExecuteOutputParameterQuerry("@outTotal",GetSelectedReceiptsTotal);
        }
        public List<ReceiptModel> ExecuteQueryCommand(SqlCommand command)
        {
            List<ReceiptModel> result = new List<ReceiptModel>();
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    ReceiptModel receipt = new ReceiptModel();
                    
                    receipt.ReceiptNumber = Convert.ToInt32(reader["ReceiptNumber"]);

                    receipt.ChargeConceptName = Convert.ToString(reader["ChargeConceptName"]);
                    
                    receipt.Amount = Convert.ToSingle(reader["Amount"]);

                    receipt.DueDate = Convert.ToString(reader["DueDate"]);
                    
                    receipt.ReceiptDate = Convert.ToString(reader["ReceiptDate"]);

                    result.Add(receipt);
                }
                command.Parameters.Clear();

                connection.Close();
            }
            catch (Exception e)
            {
                throw (e);
            }
            return result;
        }
        
        public List<PaymentProofModel> ExecuteGetPropertyPaymentProofs(int pPropertyNumber)
        {
            List<PaymentProofModel> result = new List<PaymentProofModel>();
            GetPropertyPaymentProofs.Parameters.Add("@inPropertyNum", SqlDbType.Int).Value = pPropertyNumber;
            try
            {
                connection.Open();
                SqlDataReader reader = GetPropertyPaymentProofs.ExecuteReader();

                while (reader.Read())
                {
                    PaymentProofModel paymentProof = ConstructPaymentProof(reader);
                    result.Add(paymentProof);
                }
                GetPropertyPaymentProofs.Parameters.Clear();

                connection.Close();
            }
            catch (Exception e)
            {
                throw (e);
            }
            return result;
        }

        public PaymentProofModel ExecuteGetProofOfPaymentDetails(int pProofNumber)
        {
            PaymentProofModel paymentProof;
            GetProofOfPaymentDetails.Parameters.Add("@inProofNumber",SqlDbType.Int).Value = pProofNumber;
            try
            {
                connection.Open();
                SqlDataReader reader = GetProofOfPaymentDetails.ExecuteReader();
                reader.Read();
                paymentProof = ConstructPaymentProof(reader);
                GetProofOfPaymentDetails.Parameters.Clear();
                connection.Close();
            }
            catch (Exception e)
            {
                throw (e);
            }
            return paymentProof;
        }
        
        private PaymentProofModel ConstructPaymentProof(SqlDataReader reader)
        {
            PaymentProofModel paymentProof = new PaymentProofModel();
            
            paymentProof.ProofNumber = Convert.ToInt32(reader["ProofNumber"]);
            paymentProof.Amount = Convert.ToSingle(reader["TotalAmount"]);
            paymentProof.Date = Convert.ToString(reader["ProofOfPaymentDate"]);

            return paymentProof;
        }

        public int ExecuteNonQueryCommand(SqlCommand command)
        {
            var returnParameter = command.Parameters.Add("@ReturnVal", SqlDbType.Int);
            returnParameter.Direction = ParameterDirection.ReturnValue;

            try
            {
                connection.Open();
                command.ExecuteNonQuery();
                int result = (int)returnParameter.Value;
                connection.Close();
                command.Parameters.Clear();
                return result;
            }
            catch (Exception e)
            {
                throw (e);
            }
        }
        public double ExecuteOutputParameterQuerry(string pParameterName,SqlCommand pCommand){
            try
            {
                double result = 0;
                pCommand.Parameters.Add(pParameterName,SqlDbType.Money).Direction = ParameterDirection.Output;
                connection.Open();
                pCommand.ExecuteNonQuery();
                connection.Close();
                var outParameter = pCommand.Parameters[pParameterName].Value;
                if(!outParameter.Equals(DBNull.Value)){
                    result = Convert.ToDouble(outParameter);
                }
                pCommand.Parameters.Clear();
                return result;
            }
            catch (Exception e)
            {
                throw (e);
            }
        }


    }
}