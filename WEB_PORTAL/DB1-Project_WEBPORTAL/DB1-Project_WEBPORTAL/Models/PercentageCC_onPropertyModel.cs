using System.ComponentModel.DataAnnotations;
using DB1_Project_WEBPORTAL.Models;

namespace DB1_Project_WEBPORTAL.Models
{
    public class PercentageCC_onPropertyModel : CC_onPropertyModel
    {
        [Required] [Display(Name = "Valor Porcentaje")]
        public float PercentageValue;
    }
}