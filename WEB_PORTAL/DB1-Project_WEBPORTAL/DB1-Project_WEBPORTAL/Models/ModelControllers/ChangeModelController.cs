using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace DB1_Project_WEBPORTAL.Models.ModelControllers
{
    public class ChangeModelController
    {
        protected SqlConnection connection;

        private SqlCommand GetChanges;
        private SqlCommand GetEntityTypes;

        public static ChangeModelController Singleton;

        protected ChangeModelController()
        {
            connection = DBConnection.getInstance().Connection;

            GetChanges = new SqlCommand("SP_getChangeLogsByDate", connection);
            GetChanges.CommandType = CommandType.StoredProcedure;
            GetEntityTypes = new SqlCommand("SP_getEntityNames", connection);
            GetEntityTypes.CommandType = CommandType.StoredProcedure;

        }

        public static ChangeModelController getInstance()
        {

            return Singleton ??= new ChangeModelController();

        }

        public void AddParametersToGetChanges(FilterModel filter)
        {
            
            Console.WriteLine(filter.startDate);
            Console.WriteLine(filter.endDate);
            
            GetChanges.Parameters.Add("@inEntityName", SqlDbType.VarChar, 50).Value = filter.entityName;
            GetChanges.Parameters.Add("@inStartDate", SqlDbType.DateTime).Value = filter.startDate;
            GetChanges.Parameters.Add("@inEndDate", SqlDbType.DateTime).Value = filter.endDate;

        }

        public List<ChangeModel> ExecuteGetChanges()
        {

            List<ChangeModel> result = new List<ChangeModel>();

            try
            {
                connection.Open();
                SqlDataReader reader = GetChanges.ExecuteReader();

                while (reader.Read())
                {
                    ChangeModel change = new ChangeModel();

                    change.jsonBefore = Convert.ToString(reader["JsonBefore"]);
                    change.jsonAfter = Convert.ToString(reader["JsonAfter"]);
                    change.entityType = Convert.ToString(reader["EntityName"]);
                    change.changeDateTime = Convert.ToDateTime(reader["InsertedAt"]);
                    change.changeUser = Convert.ToString(reader["InsertdBy"]);
                    change.changeIp = Convert.ToString(reader["InsertedFrom"]);

                    result.Add(change);

                }
                GetChanges.Parameters.Clear();

                connection.Close();
            }
            catch (Exception e)
            {
                throw (e);
            }

            return result;

        }


        public List<EntityTypeModel> ExecuteGetEntityTypes()
        {
            List<EntityTypeModel> result = new List<EntityTypeModel>();

            try
            {
                connection.Open();
                SqlDataReader reader = GetEntityTypes.ExecuteReader();

                while (reader.Read())
                {
                    EntityTypeModel entity = new EntityTypeModel();

                    entity.name = Convert.ToString(reader["Name"]);
                    
                    result.Add(entity);

                }
                GetEntityTypes.Parameters.Clear();
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
