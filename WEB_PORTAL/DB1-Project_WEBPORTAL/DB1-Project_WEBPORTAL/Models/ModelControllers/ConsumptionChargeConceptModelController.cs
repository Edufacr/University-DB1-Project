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