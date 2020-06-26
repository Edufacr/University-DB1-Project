using System.ComponentModel.DataAnnotations;

namespace DB1_Project_WEBPORTAL.Models
{
    public class OwnerModel
    {
        [Required]
        [Display( Name = "Nombre")]
        public string Name { get; set; }
        
        [Required]
        [Display(Name = "Tipo Identificación")]
        public string DocType { get; set; }
        
        [Required]
        [Display(Name = "Identificación")]
        public string DocValue { get; set; }
        

    }

    public class DocTypeModel
    {
        [Required]
        [Display( Name = "Nombre")]
        public string Name { get; set; }
    }
    
}