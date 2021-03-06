using System.ComponentModel.DataAnnotations;

namespace DB1_Project_WEBPORTAL.Models
{
    public class PropertyModel
    {
        [Required]
        [Display(Name = "Dirección")]
        public string Address { get; set; }
        
        [Required]
        [Display(Name = "Valor")]
        public float Value { get; set; }
        
        [Required]
        [Display(Name = "Número Finca")]
        public int PropertyNumber { get; set; }
        
        [Required] [Display(Name = "Consumo Acumulado")] public int AccumulatedM3 { get; set; }
        
        [Required] [Display(Name = "Último Consumo Acumulado")] public int AccumulatedLRM3 { get; set; }
    }
}