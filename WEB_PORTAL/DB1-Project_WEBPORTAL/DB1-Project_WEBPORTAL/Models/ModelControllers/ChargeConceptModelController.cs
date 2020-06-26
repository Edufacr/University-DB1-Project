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
            
            UpdateCCProperty = new SqlCommand("sp_updateCC_onProperty", connection);
            UpdateCCProperty.CommandType = CommandType.StoredProcedure;
            
            GetCCsOnProperty = new SqlCommand("SP_getActiveCCs_ofProperty", connection);
            GetCCsOnProperty.CommandType = CommandType.StoredProcedure;
        }
        

        public int ExecuteInsertCCProperty(CC_onPropertyModel chargeConcept, PropertyModel property)
        {

            InsertCCProperty.Parameters.Add("@pPropertyNumber", SqlDbType.Int).Value = property.PropertyNumber;
            InsertCCProperty.Parameters.Add("@pChargeConceptName", SqlDbType.VarChar, 50).Value = chargeConcept.ChargeConceptName;
            InsertCCProperty.Parameters.Add("@pBeginDate", SqlDbType.Date).Value = chargeConcept.BeginDate;
            
            return ExecuteNonQueryCommand(InsertCCProperty);
            
        }
        
        public int ExecuteDeleteCCProperty(CC_onPropertyModel chargeConcept, PropertyModel property)
        {
            
            DeleteCCProperty.Parameters.Add("@pPropertyNumber", SqlDbType.Int).Value = property.PropertyNumber;
            DeleteCCProperty.Parameters.Add("@pCCName", SqlDbType.VarChar, 50).Value = chargeConcept.ChargeConceptName;
            
            return ExecuteNonQueryCommand(DeleteCCProperty);
            
        }
        
        public int ExecuteUpdateCCProperty(CC_onPropertyModel originalChargeConcept, PropertyModel property,
            CC_onPropertyModel changedChargeConcept)
        
        {
            
            UpdateCCProperty.Parameters.Add("@pPropertyNumber", SqlDbType.Int).Value = property.PropertyNumber;
            UpdateCCProperty.Parameters.Add("@pCCName", SqlDbType.VarChar, 50).Value = originalChargeConcept.ChargeConceptName;
            
            UpdateCCProperty.Parameters.Add("@pNewBeginDate", SqlDbType.Date).Value = changedChargeConcept.BeginDate;
            UpdateCCProperty.Parameters.Add("@pNewEndDate", SqlDbType.Date).Value = changedChargeConcept.EndDate;
            
            return ExecuteNonQueryCommand(UpdateCCProperty);
            
        }
        
        public virtual List<CC_onPropertyModel> ExecuteGetCCsOnProperty(PropertyModel property)
        {
            List<CC_onPropertyModel> result = new List<CC_onPropertyModel>();
            GetCCsOnProperty.Parameters.Add("@pPropertyNumber", SqlDbType.Int).Value 
                = property.PropertyNumber;
            try
            {
                connection.Open();
                SqlDataReader reader = GetCCsOnProperty.ExecuteReader();

                while (reader.Read())
                {
                    CC_onPropertyModel ccOnProperty = new CC_onPropertyModel();
                    
                    ccOnProperty.ChargeConceptName = Convert.ToString(reader["CCName"]);

                    ccOnProperty.ExpirationDays = Convert.ToInt32(reader["ExpirationDays"]);
                    
                    ccOnProperty.MoratoryInterestRate = Convert.ToSingle(reader["MoratoryInterestRate"]);

                    ccOnProperty.ReciptEmisionDay = Convert.ToInt32(reader["ReciptEmisionDay"]);
                    
                    ccOnProperty.BeginDate = Convert.ToString(reader["BeginDate"]);

                    ccOnProperty.EndDate = Convert.ToString(reader["EndDate"]);
                    
                    result.Add(ccOnProperty);
                    
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