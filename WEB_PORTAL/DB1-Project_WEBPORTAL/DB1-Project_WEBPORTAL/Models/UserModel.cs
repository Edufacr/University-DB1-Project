using System.ComponentModel.DataAnnotations;


namespace DB1_Project_WEBPORTAL.Models
{
    public class UserModel
    {
        [Required]
        [Display( Name = "Usuario")]
        public string Name { get; set; }
         
        [Required]
        [Display(Name = "Contraseña")]
        public string Password { get; set; }

        [Required] [Display(Name = "Es Administrador")] public bool isAdmin { get; set; }
    }
}