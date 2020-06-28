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

        public override List<CC_onPropertyModel> ExecuteGetCCsOnProperty(PropertyModel property)
        {
            List<CC_onPropertyModel> result = new List<CC_onPropertyModel>();
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