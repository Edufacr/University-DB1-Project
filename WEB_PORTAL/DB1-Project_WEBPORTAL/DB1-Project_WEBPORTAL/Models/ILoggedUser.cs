namespace DB1_Project_WEBPORTAL.Models
{
    public interface ILoggedUser
    {
        public static UserModel LoggedUser { get; set; }
        public static string Ip { get; set; }
    }
}