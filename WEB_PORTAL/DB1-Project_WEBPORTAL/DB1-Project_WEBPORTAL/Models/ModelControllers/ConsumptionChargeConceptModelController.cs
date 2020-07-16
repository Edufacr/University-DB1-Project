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
        private SqlCommand GetConsumptionCCs;
        private SqlCommand UpdateConsumptionCC;
        
        private SqlCommand GetConsumptionCCByName;

        
        public static ConsumptionChargeConceptModelController Singleton;
        
        protected ConsumptionChargeConceptModelController()
        {
            
            GetConsumptionCCsOnProperty = new SqlCommand("SP_getConsumptionCcOnProperty", connection);
            GetConsumptionCCsOnProperty.CommandType = CommandType.StoredProcedure;
            
            GetConsumptionCCs = new SqlCommand("SP_getConsumptionCCs", connection);
            GetConsumptionCCs.CommandType = CommandType.StoredProcedure;
            
            GetConsumptionCCByName = new SqlCommand("SP_getConsumptionCCByName", connection);
            GetConsumptionCCByName.CommandType = CommandType.StoredProcedure;

            UpdateConsumptionCC = new SqlCommand("SP_B_updateConsumptionCC", connection);
            UpdateConsumptionCC.CommandType = CommandType.StoredProcedure;
            
        }
        
        public static ChargeConceptModelController getInstance()
        {
            
            return Singleton ??= new ConsumptionChargeConceptModelController();

        }

        public int ExecuteUpdateConsumptionCC(string pCCName, ConsumptionCcModel pChangedCC)
        {
            
            UpdateConsumptionCC.Parameters.Add("@inName", SqlDbType.VarChar, 50).Value = pCCName;
            UpdateConsumptionCC.Parameters.Add("@inNewName", SqlDbType.VarChar, 50).Value = pChangedCC.ChargeConceptName;
            UpdateConsumptionCC.Parameters.Add("@inNewExpirationDays", SqlDbType.TinyInt).Value = pChangedCC.ExpirationDays;
            UpdateConsumptionCC.Parameters.Add("@inNewReciptEmisionDay", SqlDbType.TinyInt).Value = pChangedCC.ReciptEmisionDay;
            UpdateConsumptionCC.Parameters.Add("@inNewMoratoryInterestRate", SqlDbType.Real).Value = pChangedCC.MoratoryInterestRate;
            UpdateConsumptionCC.Parameters.Add("@inNewValueM3", SqlDbType.Money).Value = pChangedCC.ValueM3;
            UpdateConsumptionCC.Parameters.Add("@inNewMinValue", SqlDbType.Money).Value = pChangedCC.MinValue;
            
            
            var returnParameter = UpdateConsumptionCC.Parameters.Add("@ReturnVal", SqlDbType.Int);
            returnParameter.Direction = ParameterDirection.ReturnValue;
            try
            {
                connection.Open();
                UpdateConsumptionCC.ExecuteNonQuery();
                int result = (int)returnParameter.Value;
                connection.Close();
                UpdateConsumptionCC.Parameters.Clear();
                return result;
            }
            catch (Exception e)
            {
                throw (e);
            }
            
        }
        
        public List<ConsumptionCcModel> ExecuteGetConsumptionCCByName(string pCCName)
        {
            GetConsumptionCCByName.Parameters.Add("@inName", SqlDbType.VarChar, 50).Value = pCCName;
            return ExecuteQueryCommand(GetConsumptionCCByName);
        }
        
        public List<ConsumptionCcModel> ExecuteGetCCs()
        {
            return ExecuteQueryCommand(GetConsumptionCCs);
        }
        
        public List<ConsumptionCcModel> ExecuteQueryCommand(SqlCommand command)
        {
            List<ConsumptionCcModel> result = new List<ConsumptionCcModel>();

            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    ConsumptionCcModel chargeConcept = new ConsumptionCcModel();
                    
                    chargeConcept.ChargeConceptName = Convert.ToString(reader["CCName"]);

                    chargeConcept.ExpirationDays = Convert.ToInt32(reader["ExpirationDays"]);
                    
                    chargeConcept.MoratoryInterestRate = Convert.ToSingle(reader["MoratoryInterestRate"]);

                    chargeConcept.ReciptEmisionDay = Convert.ToInt32(reader["ReciptEmisionDay"]);

                    chargeConcept.ValueM3 = Convert.ToSingle(reader["ValueM3"]);

                    chargeConcept.MinValue = Convert.ToSingle(reader["MinValue"]);
                    
                    result.Add(chargeConcept);
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