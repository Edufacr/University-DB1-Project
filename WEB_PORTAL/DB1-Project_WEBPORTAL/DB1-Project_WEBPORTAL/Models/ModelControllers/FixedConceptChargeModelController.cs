using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace DB1_Project_WEBPORTAL.Models.ModelControllers
{
    public class FixedConceptChargeModelController : ChargeConceptModelController
    {
        private SqlCommand GetFixedCCsOnProperty;
        public static FixedConceptChargeModelController Singleton;

        
        protected FixedConceptChargeModelController()
        {
            
            GetFixedCCsOnProperty = new SqlCommand("SP_getFixedCcOnProperty", connection);
            GetFixedCCsOnProperty.CommandType = CommandType.StoredProcedure;
            
        }
        
        public static ChargeConceptModelController getInstance()
        {
            
            return Singleton ??= new FixedConceptChargeModelController();

        }
        
        /*
        //TODO Check parameters data type
        public int ExecuteUpdateChargeConcept(string ccName, CcModel changedChargeConcept)
        {
            UpdateCCProperty.Parameters.Add("@pName", SqlDbType.VarChar, 50).Value = ccName;
            UpdateCCProperty.Parameters.Add("@pNewName", SqlDbType.VarChar, 50).Value 
                = changedChargeConcept.ChargeConceptName;
            UpdateCCProperty.Parameters.Add("@pNewExpirationDays", SqlDbType.VarChar, 50).Value 
                = changedChargeConcept.ExpirationDays;
            UpdateCCProperty.Parameters.Add("@pNewMoratoryInterestRate", SqlDbType.VarChar, 50).Value
                = changedChargeConcept.MoratoryInterestRate;
            UpdateCCProperty.Parameters.Add("@pNewReciptEmisionDay", SqlDbType.VarChar, 50).Value
                = changedChargeConcept.ReciptEmisionDay;
            
            return ExecuteNonQueryCommand(UpdateCCProperty);
        }
        */

        public override List<CcModel> ExecuteGetCCsOnProperty(PropertyModel property)
        {
            List<CcModel> result = new List<CcModel>();
            GetFixedCCsOnProperty.Parameters.Add("@inPropertyNum", SqlDbType.Int).Value 
                = property.PropertyNumber;
            try
            {
                connection.Open();
                SqlDataReader reader = GetFixedCCsOnProperty.ExecuteReader();

                while (reader.Read())
                {
                    FixedCC_onPropertyModel ccOnProperty = new FixedCC_onPropertyModel();
                    
                    ccOnProperty.ChargeConceptName = Convert.ToString(reader["CCName"]);

                    ccOnProperty.ExpirationDays = Convert.ToInt32(reader["ExpirationDays"]);
                    
                    ccOnProperty.MoratoryInterestRate = Convert.ToSingle(reader["MoratoryInterestRate"]);

                    ccOnProperty.ReciptEmisionDay = Convert.ToInt32(reader["ReciptEmisionDay"]);
                    
                    ccOnProperty.BeginDate = Convert.ToString(reader["BeginDate"]);

                    ccOnProperty.EndDate = Convert.ToString(reader["EndDate"]);

                    ccOnProperty.Amount = Convert.ToSingle(reader["Amount"]);
                    
                    result.Add(ccOnProperty);
                }
                
                GetFixedCCsOnProperty.Parameters.Clear();
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