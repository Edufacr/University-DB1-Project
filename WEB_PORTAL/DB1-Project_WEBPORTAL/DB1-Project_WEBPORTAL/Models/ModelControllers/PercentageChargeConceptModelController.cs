using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace DB1_Project_WEBPORTAL.Models.ModelControllers
{
    public class PercentageChargeConceptModelController : ChargeConceptModelController
    {
        private SqlCommand GetPercentageCCsOnProperty;
        public static PercentageChargeConceptModelController Singleton;
        
        protected PercentageChargeConceptModelController()
        {
            
            GetPercentageCCsOnProperty = new SqlCommand("SP_getPercentageCcOnProperty", connection);
            GetPercentageCCsOnProperty.CommandType = CommandType.StoredProcedure;
            
        }
        
        public static ChargeConceptModelController getInstance()
        {
            
            return Singleton ??= new PercentageChargeConceptModelController();

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
            GetPercentageCCsOnProperty.Parameters.Add("@inPropertyNum", SqlDbType.Int).Value 
                = property.PropertyNumber;
            try
            {
                connection.Open();
                SqlDataReader reader = GetPercentageCCsOnProperty.ExecuteReader();

                while (reader.Read())
                {
                    PercentageCC_onPropertyModel ccOnProperty = new PercentageCC_onPropertyModel();
                    
                    ccOnProperty.ChargeConceptName = Convert.ToString(reader["CCName"]);

                    ccOnProperty.ExpirationDays = Convert.ToInt32(reader["ExpirationDays"]);
                    
                    ccOnProperty.MoratoryInterestRate = Convert.ToSingle(reader["MoratoryInterestRate"]);

                    ccOnProperty.ReciptEmisionDay = Convert.ToInt32(reader["ReciptEmisionDay"]);
                    
                    ccOnProperty.BeginDate = Convert.ToString(reader["BeginDate"]);

                    ccOnProperty.EndDate = Convert.ToString(reader["EndDate"]);

                    ccOnProperty.PercentageValue = Convert.ToSingle(reader["PercentageValue"]);
                    
                    result.Add(ccOnProperty);
                }
                GetPercentageCCsOnProperty.Parameters.Clear();
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