using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using University_DB1_FirstProject;
using DB1_Project_WEBPORTAL.Models.ModelControllers;

namespace DB1_Project_WEBPORTAL.Models.ModelControllers
{
    public class ChargeConceptModelController
    {
        protected SqlConnection connection;

        private SqlCommand InsertCCProperty;
        private SqlCommand DeleteCCProperty;
        private SqlCommand UpdateCCProperty;

        private SqlCommand GetCCsOnProperty;
        
        

        
        protected ChargeConceptModelController()
        {
            connection = DBConnection.getInstance().Connection;
            
            InsertCCProperty = new SqlCommand("SP_insertCC_onPropety", connection);
            InsertCCProperty.CommandType = CommandType.StoredProcedure;
            
            DeleteCCProperty = new SqlCommand("SP_deleteCC_onProperty", connection);
            DeleteCCProperty.CommandType = CommandType.StoredProcedure;
            
            UpdateCCProperty = new SqlCommand("SP_updateCC_onProperty", connection);
            UpdateCCProperty.CommandType = CommandType.StoredProcedure;
            
            GetCCsOnProperty = new SqlCommand("SP_getActiveCCs_ofProperty", connection);
            GetCCsOnProperty.CommandType = CommandType.StoredProcedure;
        }
        

        public int ExecuteInsertCCProperty(string pCcName, int pPropertyNumber)
        {

            InsertCCProperty.Parameters.Add("@pPropertyNumber", SqlDbType.Int).Value = pPropertyNumber;
            InsertCCProperty.Parameters.Add("@pChargeConceptName", SqlDbType.VarChar, 50).Value = pCcName;
            
            return ExecuteNonQueryCommand(InsertCCProperty);
            
        }
        
        public int ExecuteDeleteCCProperty(string pCcName, int pPropertyNumber)
        {
            
            DeleteCCProperty.Parameters.Add("@pPropertyNumber", SqlDbType.Int).Value = pPropertyNumber;
            DeleteCCProperty.Parameters.Add("@pCCName", SqlDbType.VarChar, 50).Value = pCcName;
            
            return ExecuteNonQueryCommand(DeleteCCProperty);
            
        }

        public virtual List<CcModel> ExecuteGetCCsOnProperty(PropertyModel property)
        {
            List<CcModel> result = new List<CcModel>();
            GetCCsOnProperty.Parameters.Add("@pPropertyNumber", SqlDbType.Int).Value 
                = property.PropertyNumber;
            try
            {
                connection.Open();
                SqlDataReader reader = GetCCsOnProperty.ExecuteReader();

                while (reader.Read())
                {
                    CcModel ChargeConcept = new CcModel();
                    
                    ChargeConcept.ChargeConceptName = Convert.ToString(reader["CCName"]);

                    ChargeConcept.ExpirationDays = Convert.ToInt32(reader["ExpirationDays"]);
                    
                    ChargeConcept.MoratoryInterestRate = Convert.ToSingle(reader["MoratoryInterestRate"]);

                    ChargeConcept.ReciptEmisionDay = Convert.ToInt32(reader["ReciptEmisionDay"]);
                    
                    result.Add(ChargeConcept);
                    
                }
                GetCCsOnProperty.Parameters.Clear();
                connection.Close();
            }
            catch (Exception e)
            {
                throw (e);
            }

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
                return result;
            }
            catch (Exception e)
            {
                throw (e);
            }

        }
        
    }
}