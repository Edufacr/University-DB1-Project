namespace DB1_Project_WEBPORTAL
{
    public interface IConstants
    {
        /*
         *  ERROR CODES
         */

        public static readonly int NOT_OLDER_RECEIPT_ERROR = -50003;
        
        /*
         *  Entity Names
         */

        public static readonly string LEGAL_OWNER_DOCTYPE = "Cedula Juridica";
        
        /*
         *  Request Types
         */

        public static readonly int USER_REQUESTTYPE = 0;
        public static readonly int ADMIN_REQUESTTYPE = 1;
        public static readonly int RETURN_TO_USER_INDEX_REQUESTTYPE = 2;
        public static readonly int RETURN_TO_INDEX_REQUESTTYPE = 3;

    }
}