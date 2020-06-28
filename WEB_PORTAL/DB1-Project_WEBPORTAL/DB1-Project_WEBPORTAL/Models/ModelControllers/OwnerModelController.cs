using System;
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
            
            InsertOwner = new SqlCommand("SP_insertOwner", connection);
            InsertOwner.CommandType = CommandType.StoredProcedure;
            
            DeleteOwner = new SqlCommand("SP_deleteOwner", connection);
            DeleteOwner.CommandType = CommandType.StoredProcedure;
            
            UpdateOwner = new SqlCommand("SP_updateOwner", connection);
            UpdateOwner.CommandType = CommandType.StoredProcedure;
            
            DeleteOwnerOfProperty = new SqlCommand("SP_deletePropertyOwner", connection);
            DeleteOwnerOfProperty.CommandType = CommandType.StoredProcedure;
            
            InsertOwnerOfProperty = new SqlCommand("SP_insertPropertyOwner", connection);
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
            InsertOwner.Parameters.Add("@pName", SqlDbType.VarChar, 50).Value = ownerInstance.Name;
            InsertOwner.Parameters.Add("@pDocValue", SqlDbType.VarChar, 30).Value = ownerInstance.DocValue;
            InsertOwner.Parameters.Add("@pDocType", SqlDbType.VarChar, 50).Value = ownerInstance.DocType;
  
            return ExecuteNonQueryCommand(InsertOwner);
            
        }

        public int ExecuteDeleteOwner(OwnerModel ownerInstance)
        {
            DeleteOwner.Parameters.Add("@pDocValue", SqlDbType.VarChar, 30).Value = ownerInstance.DocValue;
            DeleteOwner.Parameters.Add("@pDocType", SqlDbType.VarChar, 50).Value = ownerInstance.DocType;

            return ExecuteNonQueryCommand(DeleteOwner);
            
        }

        public int ExecuteUpdateOwner(OwnerUpdateModel newOwner)
        {
            UpdateOwner.Parameters.Add("@pDocValue", SqlDbType.VarChar, 30).Value = newOwner.DocValue;
     

            UpdateOwner.Parameters.Add("@pDocType", SqlDbType.VarChar, 50).Value = newOwner.DocType;
            
            UpdateOwner.Parameters.Add("@pNewName", SqlDbType.VarChar, 50).Value = newOwner.NewName;
            UpdateOwner.Parameters.Add("@pNewDocValue", SqlDbType.VarChar, 30).Value = newOwner.NewDocValue;
            UpdateOwner.Parameters.Add("@pNewDocType", SqlDbType.VarChar, 50).Value = newOwner.NewDocType;
            
            return ExecuteNonQueryCommand(UpdateOwner);
            
        }
        
        public int ExecuteDeleteOwnerOfProperty(PropertyModel property, OwnerModel owner)
        {
            DeleteOwnerOfProperty.Parameters.Add("@pPropertyPropertyNumber", SqlDbType.Int).Value = property.PropertyNumber;
            DeleteOwnerOfProperty.Parameters.Add("@pOwnerDocValue", SqlDbType.VarChar, 30).Value = owner.DocValue;
            DeleteOwnerOfProperty.Parameters.Add("@pOwnerDocType", SqlDbType.VarChar, 50).Value = owner.DocType;
            return ExecuteNonQueryCommand(DeleteOwnerOfProperty);
        }
        
        public int ExecuteInsertOwnerOfProperty(PropertyModel property, OwnerModel owner)
        {
            InsertOwnerOfProperty.Parameters.Add("@pPropertyNumber", SqlDbType.Int).Value = property.PropertyNumber;
            InsertOwnerOfProperty.Parameters.Add("@pOwnerDocValue", SqlDbType.VarChar, 30).Value = owner.DocValue;
            InsertOwnerOfProperty.Parameters.Add("@pOwnerDocType", SqlDbType.VarChar, 50).Value = owner.DocType;
            
            Console.WriteLine(property.PropertyNumber);
            Console.WriteLine(owner.DocValue);
            Console.WriteLine(owner.DocType);
            
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