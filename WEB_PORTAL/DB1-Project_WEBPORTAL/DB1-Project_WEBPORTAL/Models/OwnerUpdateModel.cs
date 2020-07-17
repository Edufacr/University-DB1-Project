using System.ComponentModel.DataAnnotations;

namespace DB1_Project_WEBPORTAL.Models
{
    public class OwnerUpdateModel
    {
        
        [Required]
        public string DocType { get; set; }
        
        [Required] 
        public string DocValue { get; set; }
        
        [Required]
        [Display( Name = "Nombre")]
        public string NewName { get; set; }
        
        [Required]
        [Display( Name = "Tipo Identificación")]
        public string NewDocType { get; set; }
        
        [Required]
        [Display( Name = "Identificación")]
        public string NewDocValue { get; set; }
    }
    
}