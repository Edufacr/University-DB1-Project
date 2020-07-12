using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace DB1_Project_WEBPORTAL.Models.ModelControllers
{
    public class FixedConceptChargeModelController : ChargeConceptModelController
    {
        private SqlCommand GetFixedCCsOnProperty;
        private SqlCommand GetFixedCCs;
        private SqlCommand UpdateFixedCC;
        
        private SqlCommand GetFixedCCByName;

        
        public static FixedConceptChargeModelController Singleton;
        
        protected FixedConceptChargeModelController()
        {
            
            GetFixedCCsOnProperty = new SqlCommand("SP_getFixedCcOnProperty", connection);
            GetFixedCCsOnProperty.CommandType = CommandType.StoredProcedure;
            
            GetFixedCCs = new SqlCommand("SP_getFixedCCs", connection);
            GetFixedCCs.CommandType = CommandType.StoredProcedure;
            
            GetFixedCCByName = new SqlCommand("SP_getFixedCCByName", connection);
            GetFixedCCByName.CommandType = CommandType.StoredProcedure;

            UpdateFixedCC = new SqlCommand("SP_updateFixedCC", connection);
            UpdateFixedCC.CommandType = CommandType.StoredProcedure;
            
        }
        
        public static ChargeConceptModelController getInstance()
        {
            
            return Singleton ??= new FixedConceptChargeModelController();

        }

        
        public int ExecuteUpdateFixedCC(string pCCName, FixedCcModel pChangedCC)
        {
            
            UpdateFixedCC.Parameters.Add("@inName", SqlDbType.VarChar, 50).Value = pCCName;
            UpdateFixedCC.Parameters.Add("@inNewName", SqlDbType.VarChar, 50).Value = pChangedCC.ChargeConceptName;
            UpdateFixedCC.Parameters.Add("@inNewExpirationDays", SqlDbType.TinyInt).Value = pChangedCC.ExpirationDays;
            UpdateFixedCC.Parameters.Add("@inNewReciptEmisionDay", SqlDbType.TinyInt).Value = pChangedCC.ReciptEmisionDay;
            UpdateFixedCC.Parameters.Add("@inNewMoratoryInterestRate", SqlDbType.Real).Value = pChangedCC.MoratoryInterestRate;
            UpdateFixedCC.Parameters.Add("@inNewAmount", SqlDbType.Money).Value = pChangedCC.Amount;
            
            
            var returnParameter = UpdateFixedCC.Parameters.Add("@ReturnVal", SqlDbType.Int);
            returnParameter.Direction = ParameterDirection.ReturnValue;
            try
            {
                connection.Open();
                UpdateFixedCC.ExecuteNonQuery();
                int result = (int)returnParameter.Value;
                connection.Close();
                UpdateFixedCC.Parameters.Clear();
                return result;
            }
            catch (Exception e)
            {
                throw (e);
            }
            
        }
        
        public List<FixedCcModel> ExecuteGetFixedCCByName(string pCCName)
        {
            GetFixedCCByName.Parameters.Add("@inName", SqlDbType.VarChar, 50).Value = pCCName;
            return ExecuteQueryCommand(GetFixedCCByName);
        }
        
        public List<FixedCcModel> ExecuteGetCCs()
        {
            return ExecuteQueryCommand(GetFixedCCs);
        }
        
        public List<FixedCcModel> ExecuteQueryCommand(SqlCommand command)
        {
            List<FixedCcModel> result = new List<FixedCcModel>();
            
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    FixedCcModel chargeConcept = new FixedCcModel();
                    
                    chargeConcept.ChargeConceptName = Convert.ToString(reader["CCName"]);

                    chargeConcept.ExpirationDays = Convert.ToInt32(reader["ExpirationDays"]);
                    
                    chargeConcept.MoratoryInterestRate = Convert.ToSingle(reader["MoratoryInterestRate"]);

                    chargeConcept.ReciptEmisionDay = Convert.ToInt32(reader["ReciptEmisionDay"]);

                    chargeConcept.Amount = Convert.ToSingle(reader["Amount"]);
                    
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