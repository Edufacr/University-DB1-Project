using System.ComponentModel.DataAnnotations;

namespace DB1_Project_WEBPORTAL.Models
{
    public class UserPropertyModel
    {
        [Required]
        [Display( Name = "Usuario")]
        public string Name { get; set; }
        
        [Required]
        [Display(Name = "Número Finca")]
        public int PropertyNumber { get; set; }

    }
}