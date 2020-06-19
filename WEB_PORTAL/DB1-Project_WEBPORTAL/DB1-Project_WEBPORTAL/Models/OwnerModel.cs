using System.ComponentModel.DataAnnotations;

namespace DB1_Project_WEBPORTAL.Models
{
    public class OwnerModel
    {
        [Required]
        [Display( Name = "Nombre")]
        public string Name { get; set; }
        
        [Required]
        [Display(Name = "Tipo Documento")]
        public string DocType { get; set; }
        
        [Required]
        [Display(Name = "ID")]
        public string DocValue { get; set; }

    }
}