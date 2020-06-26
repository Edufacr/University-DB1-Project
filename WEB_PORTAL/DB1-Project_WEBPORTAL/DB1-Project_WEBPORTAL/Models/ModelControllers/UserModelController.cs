using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using DB1_Project_WEBPORTAL.Models.ModelControllers;

namespace DB1_Project_WEBPORTAL.Models.ModelControllers
{
    public class UserModelController
    {
        private SqlConnection connection;
        
        private SqlCommand InsertUser;
        private SqlCommand DeleteUser;
        private SqlCommand UpdateUser;
        
        private SqlCommand DeleteUserOfProperty;
        private SqlCommand InsertUserOfProperty; 

       
        private SqlCommand GetUsersOfProperty;
        private SqlCommand GetActiveUsers;
        private SqlCommand GetUsersByUsername;

        private SqlCommand ValidatePassword;
        private SqlCommand GetPassword;

        public static UserModelController Singleton;


        private UserModelController()
        {
            connection = DBConnection.getInstance().Connection;
            
            InsertUser = new SqlCommand("SP_insertUser", connection);
            InsertUser.CommandType = CommandType.StoredProcedure;
            
            DeleteUser = new SqlCommand("SP_deleteUser", connection);
            DeleteUser.CommandType = CommandType.StoredProcedure;
            
            UpdateUser = new SqlCommand("SP_updateUser", connection);
            UpdateUser.CommandType = CommandType.StoredProcedure;
            
            DeleteUserOfProperty = new SqlCommand("SP_deletePropertiesUser", connection);
            DeleteUserOfProperty.CommandType = CommandType.StoredProcedure;
            
            InsertUserOfProperty = new SqlCommand("SP_insertPropertiesUsers", connection);
            InsertUserOfProperty.CommandType = CommandType.StoredProcedure;
            
            GetUsersOfProperty = new SqlCommand("SP_getPropertyUsers", connection);
            GetUsersOfProperty.CommandType = CommandType.StoredProcedure;
            
            GetActiveUsers = new SqlCommand("SP_getActiveUsers", connection);
            GetActiveUsers.CommandType = CommandType.StoredProcedure;
            
            ValidatePassword = new SqlCommand("SP_validateUserPsswrd", connection);
            ValidatePassword.CommandType = CommandType.StoredProcedure;
            
            GetPassword = new SqlCommand("SP_getUserPassword", connection);
            GetPassword.CommandType = CommandType.StoredProcedure;

        }

        public static UserModelController getInstance()
        {
            return Singleton ??= new UserModelController();
        }
            


        public int ExecuteInsertUser(UserModel user)
        {

            InsertUser.Parameters.Add("@pUsername", SqlDbType.VarChar, 50).Value = user.Name;
            InsertUser.Parameters.Add("@pPassword", SqlDbType.VarChar, 50).Value = user.Password;
            InsertUser.Parameters.Add("@pAdminType", SqlDbType.Bit).Value = user.isAdmin;
            
            return ExecuteNonQueryCommand(InsertUser);
            
        }
        
        public int ExecuteDeleteUser(UserModel user)
        {
            
            DeleteUser.Parameters.Add("@pUsername", SqlDbType.VarChar, 50).Value = user.Name;

            return ExecuteNonQueryCommand(DeleteUser);
            
        }
        
        public int ExecuteUpdateUser(UserModel originalUser, UserModel newUser)
        {

            UpdateUser.Parameters.Add("@pUsername", SqlDbType.VarChar, 50).Value = originalUser.Name;
            UpdateUser.Parameters.Add("@pNewUserName", SqlDbType.VarChar, 50).Value = newUser.Name;
            UpdateUser.Parameters.Add("@pNewPassword", SqlDbType.VarChar, 50).Value = newUser.Password;
            
            
            return ExecuteNonQueryCommand(UpdateUser);
            
        }
        
        public int ExecuteDeleteUserOfProperty(UserModel user, PropertyModel property)
        {
            
            DeleteUserOfProperty.Parameters.Add("@pUsername", SqlDbType.VarChar, 50).Value = user.Name;
            DeleteUserOfProperty.Parameters.Add("@pPropertyNumber", SqlDbType.Int).Value = property.PropertyNumber;
            
            return ExecuteNonQueryCommand(DeleteUserOfProperty);
            
        }
        
        public int ExecuteInsertUserOfProperty(UserModel user, PropertyModel property)
        {
            
            InsertUserOfProperty.Parameters.Add("@pUsername", SqlDbType.VarChar, 50).Value = user.Name;
            InsertUserOfProperty.Parameters.Add("@pPropertyNumber", SqlDbType.Int).Value = property.PropertyNumber;
            
            return ExecuteNonQueryCommand(InsertUserOfProperty);
            
        }
        
        public List<UserModel> ExecuteGetUsersOfProperty(PropertyModel property)
        {
            
            GetUsersOfProperty.Parameters.Add("@pPropertyNumber", SqlDbType.Int).Value = property.PropertyNumber;
            
            return ExecuteQueryCommand(GetUsersOfProperty);
            
        }
        
        public List<UserModel> ExecuteGetActiveUsers()
        {
            return ExecuteQueryCommand(GetActiveUsers);
        }
        
        public bool ExecuteValidatePassword(string username, string passwordEntry)
        {
            
            Console.WriteLine(username);
            Console.WriteLine(passwordEntry);
            
            ValidatePassword.Parameters.Add("@Username", SqlDbType.VarChar, 50).Value = username;
            ValidatePassword.Parameters.Add("@Password", SqlDbType.VarChar, 50).Value = passwordEntry;

            int result = ExecuteNonQueryCommand(ValidatePassword);
            if (result == -5000)
            {
                return false; //incorrect password
            }

            return true; //correct password 

        }

        public string ExecuteGetPassword(UserModel user)
        {
            
            string password;
            
            GetPassword.Parameters.Add("@pUsername", SqlDbType.VarChar, 50).Value = user.Name;
            
            try
            {
                
                connection.Open();
                SqlDataReader reader = GetPassword.ExecuteReader();
                reader.Read();
                password = Convert.ToString(reader["Password"]);   
                connection.Close();
                
            }
            catch (Exception e)
            {
                throw (e);
            }
            
            return password;

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
        
        public List<UserModel> ExecuteQueryCommand(SqlCommand command)
        {

            List<UserModel> result = new List<UserModel>();
            
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    UserModel user = new UserModel();
                    
                    user.Name = Convert.ToString(reader["Username"]);

                    user.isAdmin = Convert.ToBoolean(reader["UserType"]);
                    
                    result.Add(user);
                    
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