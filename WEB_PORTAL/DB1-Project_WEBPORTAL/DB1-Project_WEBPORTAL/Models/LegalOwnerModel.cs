using System.ComponentModel.DataAnnotations;

namespace DB1_Project_WEBPORTAL.Models
{
    public class LegalOwnerModel
    {
        [Required]
        [Display( Name = "Nombre Entidad")]
        public string Name { get; set; }
        
        [Required]
        [Display(Name = "Cédula Jurídica")]
        public string DocValue { get; set; }
        
        [Required]
        [Display(Name = "Nombre Responsable")]
        public string ResponsibleName { get; set; }
        
        [Required]
        [Display(Name = "ID Responsable")]
        public string RespDocValue { get; set; }
        
        [Required]
        [Display(Name = "Tipo ID Responsable")]
        public string RespDocType { get; set; }

    }
}