using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Microsoft.AspNetCore.Mvc.ApplicationModels;
using DB1_Project_WEBPORTAL.Models.ModelControllers;

namespace DB1_Project_WEBPORTAL.Models.ModelControllers
{
    public class ConsumptionChargeConceptModelController : ChargeConceptModelController
    {
        
        private SqlCommand GetConsumptionCCsOnProperty;
        public static ConsumptionChargeConceptModelController Singleton;
        
        protected ConsumptionChargeConceptModelController()
        {
            
            GetConsumptionCCsOnProperty = new SqlCommand("SP_getConsumptionCcOnProperty", connection);
            GetConsumptionCCsOnProperty.CommandType = CommandType.StoredProcedure;
            
        }
        
        public static ChargeConceptModelController getInstance()
        {
            
            return Singleton ??= new ConsumptionChargeConceptModelController();

        }

        public override List<CC_onPropertyModel> ExecuteGetCCsOnProperty(PropertyModel property)
        {
            List<CC_onPropertyModel> result = new List<CC_onPropertyModel>();
            GetConsumptionCCsOnProperty.Parameters.Add("@inPropertyNum", SqlDbType.Int).Value 
                = property.PropertyNumber;
            try
            {
                connection.Open();
                SqlDataReader reader = GetConsumptionCCsOnProperty.ExecuteReader();

                while (reader.Read())
                {
                    ConsumptionCC_onPropertyModel ccOnProperty = new ConsumptionCC_onPropertyModel();
                    
                    ccOnProperty.ChargeConceptName = Convert.ToString(reader["CCName"]);

                    ccOnProperty.ExpirationDays = Convert.ToInt32(reader["ExpirationDays"]);
                    
                    ccOnProperty.MoratoryInterestRate = Convert.ToSingle(reader["MoratoryInterestRate"]);

                    ccOnProperty.ReciptEmisionDay = Convert.ToInt32(reader["ReciptEmisionDay"]);
                    
                    ccOnProperty.BeginDate = Convert.ToString(reader["BeginDate"]);

                    ccOnProperty.EndDate = Convert.ToString(reader["EndDate"]);

                    ccOnProperty.ValueM3 = Convert.ToSingle(reader["ValueM3"]);

                    ccOnProperty.MinValue = Convert.ToSingle(reader["MinValue"]);
                    
                    result.Add(ccOnProperty);
                }
                GetConsumptionCCsOnProperty.Parameters.Clear();
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