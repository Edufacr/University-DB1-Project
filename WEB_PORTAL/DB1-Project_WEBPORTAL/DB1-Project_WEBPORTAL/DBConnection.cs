using System.Data.SqlClient;

namespace DB1_Project_WEBPORTAL
{
    public class DBConnection
    {
        private string connectionString = IConnectionStrings.CONNECTIONSTRING;
        public SqlConnection Connection;
        public static DBConnection Singleton;

        private DBConnection()
        {
            Connection = new SqlConnection();
            Connection.ConnectionString = connectionString;
        }

        public static DBConnection getInstance()
        {
            return Singleton ??= new DBConnection();
        }

        
    }
}