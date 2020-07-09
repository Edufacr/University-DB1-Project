using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using DB1_Project_WEBPORTAL.Models.ModelControllers;

namespace DB1_Project_WEBPORTAL.Models.ModelControllers
{
    public class LegalOwnerModelController
    {
        private SqlConnection connection;
        
        private SqlCommand InsertLegalOwner;
        private SqlCommand UpdateLegalOwner;

        private SqlCommand GetActiveLegalOwners;
        private SqlCommand GetLegalOwnerByDocValue;
        
        public static LegalOwnerModelController Singleton;

        
        private LegalOwnerModelController()
        {
            connection = DBConnection.getInstance().Connection;
            
            InsertLegalOwner = new SqlCommand("SP_insertLegalOwner", connection);
            InsertLegalOwner.CommandType = CommandType.StoredProcedure;
            
            
            UpdateLegalOwner = new SqlCommand("SP_updateLegalOwner", connection);
            UpdateLegalOwner.CommandType = CommandType.StoredProcedure;
            
            
            GetActiveLegalOwners = new SqlCommand("SP_getActiveLegalOwners", connection);
            GetActiveLegalOwners.CommandType = CommandType.StoredProcedure;
            
            GetLegalOwnerByDocValue = new SqlCommand("SP_getLegalOwnerInfoByDocValue", connection);
            GetLegalOwnerByDocValue.CommandType = CommandType.StoredProcedure;
        }

        
        public static LegalOwnerModelController getInstance()
        {
            
            return Singleton ??= new LegalOwnerModelController();
            
        }



        public int ExecuteInsertLegalOwner(LegalOwnerModel legalOwner)
        {

            OwnerModelController ownerController = OwnerModelController.getInstance();

            OwnerModel owner = new OwnerModel();
            owner.Name = legalOwner.Name;
            owner.DocType = "Cedula Juridica";
            owner.DocValue = legalOwner.DocValue;

            int result = ownerController.ExecuteInsertOwner(owner);
            if (result > 0)
            {
                InsertLegalOwner.Parameters.Add("@pName", SqlDbType.VarChar, 50).Value = legalOwner.ResponsibleName;
                InsertLegalOwner.Parameters.Add("@pResp_DocType", SqlDbType.VarChar, 50).Value = legalOwner.RespDocType;
                InsertLegalOwner.Parameters.Add("@pResp_DocValue", SqlDbType.VarChar, 30).Value =
                    legalOwner.RespDocValue;
                InsertLegalOwner.Parameters.Add("@pLegalOwner_DocValue", SqlDbType.VarChar, 30).Value =
                    legalOwner.DocValue;

                return ExecuteNonQueryCommand(InsertLegalOwner);
            }

            return -1;
        }

        public int ExecuteUpdateLegalOwner(LegalOwnerModel legalOwner)
        {
            UpdateLegalOwner.Parameters.Add("@pNewResponsibleName", SqlDbType.VarChar, 50).Value =
                legalOwner.ResponsibleName;
            UpdateLegalOwner.Parameters.Add("@pNewResp_DocId_type", SqlDbType.VarChar, 50).Value = legalOwner.RespDocType;
            UpdateLegalOwner.Parameters.Add("@pNewResp_DocValue", SqlDbType.VarChar, 30).Value = legalOwner.RespDocValue;
            UpdateLegalOwner.Parameters.Add("@pLegalOwner_DocValue", SqlDbType.VarChar, 30).Value = legalOwner.DocValue;
            UpdateLegalOwner.Parameters.Add("@pNewLegalName", SqlDbType.VarChar, 50).Value = legalOwner.Name;
            return ExecuteNonQueryCommand(UpdateLegalOwner);
        }

        public List<LegalOwnerModel> ExecuteGetActiveLegalOwners()
        {
            List<LegalOwnerModel> result = ExecuteQueryCommand(GetActiveLegalOwners);
            return result;
        }
        
        public List<LegalOwnerModel> ExecuteGetLegalOwnerByDocValue(string pDocValue)
        {
            GetLegalOwnerByDocValue.Parameters.Add("@pDocValue", SqlDbType.VarChar, 30).Value = pDocValue;
            List<LegalOwnerModel> result = ExecuteQueryCommand(GetLegalOwnerByDocValue);
            return result;
            
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
        
        public List<LegalOwnerModel> ExecuteQueryCommand(SqlCommand command)
        {

            List<LegalOwnerModel> result = new List<LegalOwnerModel>();
            
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    LegalOwnerModel legalOwner = new LegalOwnerModel();
                    
                    legalOwner.Name = Convert.ToString(reader["LegalName"]);
                    legalOwner.DocValue = Convert.ToString(reader["LegalDocValue"]);
                    legalOwner.ResponsibleName = Convert.ToString(reader["ResponsibleName"]);
                    legalOwner.RespDocValue = Convert.ToString(reader["RespDocValue"]);
                    legalOwner.RespDocType = Convert.ToString(reader["RespDocType"]);
                    
                    result.Add(legalOwner);
                    
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
        

    }
}