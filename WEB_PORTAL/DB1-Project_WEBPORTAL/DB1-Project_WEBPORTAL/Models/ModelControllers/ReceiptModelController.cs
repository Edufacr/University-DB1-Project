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
        
        public static ReceiptModelController Singleton;
        
        protected ReceiptModelController()
        {
            connection = DBConnection.getInstance().Connection;
            
            GetPropertyPendingReceipts = new SqlCommand("SP_getPendingReceipts", connection);
            GetPropertyPendingReceipts.CommandType = CommandType.StoredProcedure;
            
            GetProofOfPaymentReceipts = new SqlCommand("SP_getReceiptsFromProofOfPayment", connection);
            GetProofOfPaymentReceipts.CommandType = CommandType.StoredProcedure;
            
            GetPropertyPaymentProofs = new SqlCommand("SP_getPaidReceipts", connection);
            GetPropertyPaymentProofs.CommandType = CommandType.StoredProcedure;
            
        }

        public static ReceiptModelController getInstance()
        {
            return Singleton ??= new ReceiptModelController();
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
                    PaymentProofModel paymentProof = new PaymentProofModel();
                    
                    paymentProof.Amount = Convert.ToSingle(reader["Amount"]);

                    paymentProof.Date = Convert.ToString(reader["ProofOfPaymentDate"]);

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

    }
}