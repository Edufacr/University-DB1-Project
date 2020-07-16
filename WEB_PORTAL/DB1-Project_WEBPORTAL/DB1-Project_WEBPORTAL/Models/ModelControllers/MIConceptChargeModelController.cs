using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace DB1_Project_WEBPORTAL.Models.ModelControllers
{
    public class MIConceptChargeModelController : ChargeConceptModelController
    {
        private SqlCommand GetMoratoryInterestCCsOnProperty;
        private SqlCommand GetMoratoryInterestCCs;
        private SqlCommand UpdateMoratoryInterestCC;
        
        private SqlCommand GetMoratoryInterestCCByName;


        
        public static MIConceptChargeModelController Singleton;
        
        
        protected MIConceptChargeModelController()
        {
            
            GetMoratoryInterestCCsOnProperty = new SqlCommand("SP_getMoratoryInterestCcOnProperty", connection);
            GetMoratoryInterestCCsOnProperty.CommandType = CommandType.StoredProcedure;
            
            GetMoratoryInterestCCs = new SqlCommand("SP_getMoratoryInterestCCs", connection);
            GetMoratoryInterestCCs.CommandType = CommandType.StoredProcedure;

            GetMoratoryInterestCCByName = new SqlCommand("SP_getMoratoryInterestCCByName", connection);
            GetMoratoryInterestCCByName.CommandType = CommandType.StoredProcedure;
            
            UpdateMoratoryInterestCC = new SqlCommand("SP_B_updateMoratoryInterestCC", connection);
            UpdateMoratoryInterestCC.CommandType = CommandType.StoredProcedure;
            
        }
        
        public static ChargeConceptModelController getInstance()
        {
            
            return Singleton ??= new MIConceptChargeModelController();

        }
        
        public int ExecuteUpdateMoratoryInterestCC(string pCCName, MoratoryInterestCcModel pChangedCC)
        {
            
            UpdateMoratoryInterestCC.Parameters.Add("@inName", SqlDbType.VarChar, 50).Value = pCCName;
            UpdateMoratoryInterestCC.Parameters.Add("@inNewName", SqlDbType.VarChar, 50).Value = pChangedCC.ChargeConceptName;
            UpdateMoratoryInterestCC.Parameters.Add("@inNewExpirationDays", SqlDbType.TinyInt).Value = pChangedCC.ExpirationDays;
            UpdateMoratoryInterestCC.Parameters.Add("@inNewReciptEmisionDay", SqlDbType.TinyInt).Value = pChangedCC.ReciptEmisionDay;
            UpdateMoratoryInterestCC.Parameters.Add("@inNewMoratoryInterestRate", SqlDbType.Real).Value = pChangedCC.MoratoryInterestRate;
            UpdateMoratoryInterestCC.Parameters.Add("@inNewAmount", SqlDbType.Money).Value = pChangedCC.InterestValue;
            
            UpdateMoratoryInterestCC.Parameters.Add("@inInsertedBy", SqlDbType.VarChar, 50).Value = ILoggedUser.LoggedUser.Name;
            UpdateMoratoryInterestCC.Parameters.Add("@inInsertedFrom", SqlDbType.VarChar, 50).Value = ILoggedUser.Ip;

            var returnParameter = UpdateMoratoryInterestCC.Parameters.Add("@ReturnVal", SqlDbType.Int);
            returnParameter.Direction = ParameterDirection.ReturnValue;
            try
            {
                connection.Open();
                UpdateMoratoryInterestCC.ExecuteNonQuery();
                int result = (int)returnParameter.Value;
                connection.Close();
                UpdateMoratoryInterestCC.Parameters.Clear();
                return result;
            }
            catch (Exception e)
            {
                throw (e);
            }
            
        }
        
        public List<MoratoryInterestCcModel> ExecuteGetMoratoryInterestCCByName(string pCCName)
        {
            GetMoratoryInterestCCByName.Parameters.Add("@inName", SqlDbType.VarChar, 50).Value = pCCName;
            return ExecuteQueryCommand(GetMoratoryInterestCCByName);
        }
        
        public  List<MoratoryInterestCcModel> ExecuteGetCCs()
        {
            return ExecuteQueryCommand(GetMoratoryInterestCCs);
        }
        
        public List<MoratoryInterestCcModel> ExecuteQueryCommand(SqlCommand command)
        {
            List<MoratoryInterestCcModel> result = new List<MoratoryInterestCcModel>();
            
            try
            {
                connection.Open();
                SqlDataReader reader = GetMoratoryInterestCCs.ExecuteReader();

                while (reader.Read())
                {
                    MoratoryInterestCcModel chargeConcept = new MoratoryInterestCcModel();
                    
                    chargeConcept.ChargeConceptName = Convert.ToString(reader["CCName"]);

                    chargeConcept.ExpirationDays = Convert.ToInt32(reader["ExpirationDays"]);
                    
                    chargeConcept.MoratoryInterestRate = Convert.ToSingle(reader["MoratoryInterestRate"]);

                    chargeConcept.ReciptEmisionDay = Convert.ToInt32(reader["ReciptEmisionDay"]);

                    chargeConcept.InterestValue = Convert.ToSingle(reader["Amount"]);
                    
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