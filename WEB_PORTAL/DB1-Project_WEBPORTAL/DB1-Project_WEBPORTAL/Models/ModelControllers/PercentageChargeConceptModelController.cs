using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace DB1_Project_WEBPORTAL.Models.ModelControllers
{
    public class PercentageChargeConceptModelController : ChargeConceptModelController
    {
        private SqlCommand GetPercentageCCsOnProperty;
        
        private SqlCommand GetPercentageCCs;
        private SqlCommand UpdatePercentageCC;
        private SqlCommand GetPercentageCCByName;
        
        public static PercentageChargeConceptModelController Singleton;
        
        protected PercentageChargeConceptModelController()
        {
            
            GetPercentageCCsOnProperty = new SqlCommand("SP_getPercentageCcOnProperty", connection);
            GetPercentageCCsOnProperty.CommandType = CommandType.StoredProcedure;
            
            GetPercentageCCs = new SqlCommand("SP_getPercentageCCs", connection);
            GetPercentageCCs.CommandType = CommandType.StoredProcedure;
            
            GetPercentageCCByName = new SqlCommand("SP_getPercentageCCByName", connection);
            GetPercentageCCByName.CommandType = CommandType.StoredProcedure;

            UpdatePercentageCC = new SqlCommand("SP_B_updatePercentageCC", connection);
            UpdatePercentageCC.CommandType = CommandType.StoredProcedure;
            
        }
        
        public static ChargeConceptModelController getInstance()
        {
            
            return Singleton ??= new PercentageChargeConceptModelController();

        }
        
        
        public int ExecuteUpdatePercentageCC(string pCCName, PercentageCcModel pChangedCC)
        {
            
            UpdatePercentageCC.Parameters.Add("@inName", SqlDbType.VarChar, 50).Value = pCCName;
            UpdatePercentageCC.Parameters.Add("@inNewName", SqlDbType.VarChar, 50).Value = pChangedCC.ChargeConceptName;
            UpdatePercentageCC.Parameters.Add("@inNewExpirationDays", SqlDbType.TinyInt).Value = pChangedCC.ExpirationDays;
            UpdatePercentageCC.Parameters.Add("@inNewReciptEmisionDay", SqlDbType.TinyInt).Value = pChangedCC.ReciptEmisionDay;
            UpdatePercentageCC.Parameters.Add("@inNewMoratoryInterestRate", SqlDbType.Real).Value = pChangedCC.MoratoryInterestRate;
            UpdatePercentageCC.Parameters.Add("@inNewPercentageValue", SqlDbType.Money).Value = pChangedCC.PercentageValue;
            
            
            var returnParameter = UpdatePercentageCC.Parameters.Add("@ReturnVal", SqlDbType.Int);
            returnParameter.Direction = ParameterDirection.ReturnValue;
            try
            {
                connection.Open();
                UpdatePercentageCC.ExecuteNonQuery();
                int result = (int)returnParameter.Value;
                connection.Close();
                UpdatePercentageCC.Parameters.Clear();
                return result;
            }
            catch (Exception e)
            {
                throw (e);
            }
            
        }

        public List<PercentageCcModel> ExecuteGetPercentageCCByName(string pCCName)
        {
            GetPercentageCCByName.Parameters.Add("@inName", SqlDbType.VarChar, 50).Value = pCCName;
            return ExecuteQueryCommand(GetPercentageCCByName);
        }
        
        public List<PercentageCcModel> ExecuteGetCCs()
        {
            return ExecuteQueryCommand(GetPercentageCCs);
        }

        public List<PercentageCcModel> ExecuteQueryCommand(SqlCommand command)
        {
            List<PercentageCcModel> result = new List<PercentageCcModel>();
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    PercentageCcModel chargeConcept = new PercentageCcModel();
                    
                    chargeConcept.ChargeConceptName = Convert.ToString(reader["CCName"]);

                    chargeConcept.ExpirationDays = Convert.ToInt32(reader["ExpirationDays"]);
                    
                    chargeConcept.MoratoryInterestRate = Convert.ToSingle(reader["MoratoryInterestRate"]);

                    chargeConcept.ReciptEmisionDay = Convert.ToInt32(reader["ReciptEmisionDay"]);

                    chargeConcept.PercentageValue = Convert.ToSingle(reader["PercentageValue"]);
                    
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