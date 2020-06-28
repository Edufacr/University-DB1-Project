using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace DB1_Project_WEBPORTAL.Models.ModelControllers
{
    public class MIConceptChargeModelController : ChargeConceptModelController
    {
        private SqlCommand GetMoratoryInterestCCsOnProperty;
        public static MIConceptChargeModelController Singleton;
        
        protected MIConceptChargeModelController()
        {
            
            GetMoratoryInterestCCsOnProperty = new SqlCommand("SP_getMoratoryInterestCcOnProperty", connection);
            GetMoratoryInterestCCsOnProperty.CommandType = CommandType.StoredProcedure;
            
        }
        
        public static ChargeConceptModelController getInstance()
        {
            
            return Singleton ??= new MIConceptChargeModelController();

        }

        public override List<CC_onPropertyModel> ExecuteGetCCsOnProperty(PropertyModel property)
        {
            List<CC_onPropertyModel> result = new List<CC_onPropertyModel>();
            GetMoratoryInterestCCsOnProperty.Parameters.Add("@inPropertyNum", SqlDbType.Int).Value 
                = property.PropertyNumber;
            try
            {
                connection.Open();
                SqlDataReader reader = GetMoratoryInterestCCsOnProperty.ExecuteReader();

                while (reader.Read())
                {
                    MoratoryInterestCC_onProperty ccOnProperty = new MoratoryInterestCC_onProperty();
                    
                    ccOnProperty.ChargeConceptName = Convert.ToString(reader["CCName"]);

                    ccOnProperty.ExpirationDays = Convert.ToInt32(reader["ExpirationDays"]);
                    
                    ccOnProperty.MoratoryInterestRate = Convert.ToSingle(reader["MoratoryInterestRate"]);

                    ccOnProperty.ReciptEmisionDay = Convert.ToInt32(reader["ReciptEmisionDay"]);
                    
                    ccOnProperty.BeginDate = Convert.ToString(reader["BeginDate"]);

                    ccOnProperty.EndDate = Convert.ToString(reader["EndDate"]);

                    ccOnProperty.InterestValue = Convert.ToSingle(reader["Amount"]);
                    
                    result.Add(ccOnProperty);
                }
                GetMoratoryInterestCCsOnProperty.Parameters.Clear();
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