﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using DB1_Project_WEBPORTAL.Models.ModelControllers;

namespace DB1_Project_WEBPORTAL.Models.ModelControllers
{
    public class OwnerModelController
    {
        private SqlConnection connection;
        
        private SqlCommand InsertOwner;
        private SqlCommand DeleteOwner;
        private SqlCommand UpdateOwner;

        private SqlCommand InsertOwnerOfProperty; //TODO
        private SqlCommand DeleteOwnerOfProperty;

        private SqlCommand GetOwnersOfProperty;
        private SqlCommand GetActiveOwners;
        private SqlCommand GetOwnersByName;
        private SqlCommand GetOwnersByDocValue;
        
        public static OwnerModelController Singleton;

                
        private OwnerModelController()
        {
            connection = DBConnection.getInstance().Connection;
            
            InsertOwner = new SqlCommand("SP_B_insertOwner", connection);
            InsertOwner.CommandType = CommandType.StoredProcedure;
            
            DeleteOwner = new SqlCommand("SP_B_deleteOwner", connection);
            DeleteOwner.CommandType = CommandType.StoredProcedure;
            
            UpdateOwner = new SqlCommand("SP_B_updateOwner", connection);
            UpdateOwner.CommandType = CommandType.StoredProcedure;
            
            DeleteOwnerOfProperty = new SqlCommand("SP_B_deletePropertyOwner", connection);
            DeleteOwnerOfProperty.CommandType = CommandType.StoredProcedure;
            
            InsertOwnerOfProperty = new SqlCommand("SP_B_insertPropertyOwner", connection);
            InsertOwnerOfProperty.CommandType = CommandType.StoredProcedure;
            
            GetOwnersOfProperty = new SqlCommand("SP_getOwnersOfProperty", connection);
            GetOwnersOfProperty.CommandType = CommandType.StoredProcedure;
            
            GetActiveOwners = new SqlCommand("SP_getActiveOwners", connection);
            GetActiveOwners.CommandType = CommandType.StoredProcedure;
            
            GetOwnersByName = new SqlCommand("SP_getOwnerInfoByName", connection);
            GetOwnersByName.CommandType = CommandType.StoredProcedure;
            
            GetOwnersByDocValue = new SqlCommand("SP_getOwnerInfoByDocValue", connection);
            GetOwnersByDocValue.CommandType = CommandType.StoredProcedure;
        }
        
        public static OwnerModelController getInstance()
        {
            
            return Singleton ??= new OwnerModelController();

        }

        public int ExecuteInsertOwner(OwnerModel ownerInstance)
        {
            InsertOwner.Parameters.Add("@inName", SqlDbType.VarChar, 50).Value = ownerInstance.Name;
            InsertOwner.Parameters.Add("@inDocValue", SqlDbType.VarChar, 30).Value = ownerInstance.DocValue;
            InsertOwner.Parameters.Add("@inDocType", SqlDbType.VarChar, 50).Value = ownerInstance.DocType;
  
            return ExecuteNonQueryCommand(InsertOwner);
            
        }

        public int ExecuteDeleteOwner(OwnerModel ownerInstance)
        {
            DeleteOwner.Parameters.Add("@inDocValue", SqlDbType.VarChar, 30).Value = ownerInstance.DocValue;
            DeleteOwner.Parameters.Add("@inDocType", SqlDbType.VarChar, 50).Value = ownerInstance.DocType;

            return ExecuteNonQueryCommand(DeleteOwner);
            
        }

        public int ExecuteUpdateOwner(OwnerUpdateModel newOwner)
        {
            UpdateOwner.Parameters.Add("@inDocValue", SqlDbType.VarChar, 30).Value = newOwner.DocValue;
     

            UpdateOwner.Parameters.Add("@inDocType", SqlDbType.VarChar, 50).Value = newOwner.DocType;
            
            UpdateOwner.Parameters.Add("@inNewName", SqlDbType.VarChar, 50).Value = newOwner.NewName;
            UpdateOwner.Parameters.Add("@inNewDocValue", SqlDbType.VarChar, 30).Value = newOwner.NewDocValue;
            UpdateOwner.Parameters.Add("@inNewDocType", SqlDbType.VarChar, 50).Value = newOwner.NewDocType;
            
            return ExecuteNonQueryCommand(UpdateOwner);
            
        }
        
        public int ExecuteDeleteOwnerOfProperty(OwnerPropertyModel pRelation)
        {
            DeleteOwnerOfProperty.Parameters.Add("@inPropertyNumber", SqlDbType.Int).Value = pRelation.PropertyNumber;
            DeleteOwnerOfProperty.Parameters.Add("@inOwnerDocValue", SqlDbType.VarChar, 30).Value = pRelation.DocValue;
            DeleteOwnerOfProperty.Parameters.Add("@inOwnerDocType", SqlDbType.VarChar, 50).Value = pRelation.DocType;
            return ExecuteNonQueryCommand(DeleteOwnerOfProperty);
        }
        
        public int ExecuteInsertOwnerOfProperty(OwnerPropertyModel pRelation)
        {
            InsertOwnerOfProperty.Parameters.Add("@inPropertyNumber", SqlDbType.Int).Value = pRelation.PropertyNumber;
            InsertOwnerOfProperty.Parameters.Add("@inOwnerDocValue", SqlDbType.VarChar, 30).Value = pRelation.DocValue;
            InsertOwnerOfProperty.Parameters.Add("@inOwnerDocType", SqlDbType.VarChar, 50).Value = pRelation.DocType;
            
            Console.WriteLine(pRelation.PropertyNumber);
            Console.WriteLine(pRelation.DocValue);
            Console.WriteLine(pRelation.DocType);
            
            return ExecuteNonQueryCommand(InsertOwnerOfProperty);
        }

        

        public List<OwnerModel> ExecuteGetOwnersOfProperty(PropertyModel property)
        {
            GetOwnersOfProperty.Parameters.Add("@pPropertyNumber", SqlDbType.Int).Value = property.PropertyNumber;
            
            List<OwnerModel> result = ExecuteQueryCommand(GetOwnersOfProperty);
            return result;
        }

        public List<OwnerModel> ExcecuteGetActiveOwners()
        {
            List<OwnerModel> result = ExecuteQueryCommand(GetActiveOwners);
            return result;        
        }
        
        public List<OwnerModel> ExcecuteGetOwnersByName(OwnerModel owner)
        {
            GetOwnersByName.Parameters.Add("@pName", SqlDbType.VarChar, 50).Value = owner.Name;

            List<OwnerModel> result = ExecuteQueryCommand(GetOwnersByName);
            return result;
        }
        
        
        public List<OwnerModel> ExcecuteGetOwnersByDocValue(string pDocValue, string pDocType)
        {
            GetOwnersByDocValue.Parameters.Add("@pDocValue",SqlDbType.VarChar, 30).Value = pDocValue;
            GetOwnersByDocValue.Parameters.Add("@pDocType", SqlDbType.VarChar, 50).Value = pDocType;
            
            List<OwnerModel> result = ExecuteQueryCommand(GetOwnersByDocValue);
            return result;
            
        }

        public List<DocTypeModel> GetDocIdTypes()
        {
            SqlCommand getDocTypes = new SqlCommand("SP_getDocTypeNames", connection);
            getDocTypes.CommandType = CommandType.StoredProcedure;
            
            List<DocTypeModel> result = new List<DocTypeModel>();
            
            try
            {
                connection.Open();
                SqlDataReader reader = getDocTypes.ExecuteReader();

                while (reader.Read())
                {
                    DocTypeModel type = new DocTypeModel();
                    
                    type.Name = Convert.ToString(reader["Name"]);

                    result.Add(type);
                    
                }
                connection.Close();
            }
            catch (Exception e)
            {
                throw (e);
            }

            return result;
        }


        public int ExecuteNonQueryCommand(SqlCommand command)
        {
            var returnParameter = command.Parameters.Add("@ReturnVal", SqlDbType.Int);
            returnParameter.Direction = ParameterDirection.ReturnValue;
            
            command.Parameters.Add("@inInsertedBy", SqlDbType.VarChar, 50).Value = ILoggedUser.LoggedUser.Name;
            command.Parameters.Add("@inInsertedFrom", SqlDbType.VarChar, 50).Value = ILoggedUser.Ip;
            
            try
            {
                connection.Open();
                command.ExecuteNonQuery();
                int result = (int)returnParameter.Value;
                connection.Close();
                command.Parameters.Clear();

                return result;
            }
            catch (Exception e)
            {
                throw (e);
            }

        }
        
        public List<OwnerModel> ExecuteQueryCommand(SqlCommand command)
        {

            List<OwnerModel> result = new List<OwnerModel>();
            
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    OwnerModel owner = new OwnerModel();
                    
                    owner.Name = Convert.ToString(reader["Name"]);
                    owner.DocValue = Convert.ToString(reader["DocValue"]);
                    owner.DocType = Convert.ToString(reader["Doctype"]);
                    
                    result.Add(owner);
                    
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
        
        
         
         
    }
}