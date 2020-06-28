using System.ComponentModel.DataAnnotations;
using DB1_Project_WEBPORTAL.Models;

namespace DB1_Project_WEBPORTAL.Models
{
    public class ConsumptionCC_onPropertyModel : CC_onPropertyModel
    {
        [Required] [Display(Name = "Valor M3")]
        public float ValueM3;
        [Required] [Display(Name = "Valor Mínimo")]
        public float MinValue;
    }
}