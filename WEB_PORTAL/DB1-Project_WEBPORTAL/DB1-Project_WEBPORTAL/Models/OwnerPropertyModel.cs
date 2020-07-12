using System.ComponentModel.DataAnnotations;

namespace DB1_Project_WEBPORTAL.Models
{
    public class OwnerPropertyModel
    {
        [Required]
        [Display(Name = "Tipo Identificación")]
        public string DocType { get; set; }
        
        [Required]
        [Display(Name = "Identificación")]
        public string DocValue { get; set; }
        
        [Required]
        [Display(Name = "Número Finca")]
        public int PropertyNumber { get; set; }
    }
}