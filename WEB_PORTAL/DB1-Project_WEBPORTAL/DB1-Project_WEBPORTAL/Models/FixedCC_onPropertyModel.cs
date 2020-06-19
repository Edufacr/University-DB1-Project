using System.ComponentModel.DataAnnotations;

namespace DB1_Project_WEBPORTAL.Models
{
    public class FixedCC_onPropertyModel : CC_onPropertyModel
    {
        [Required] [Display(Name = "Monto")]
        public float Amount;
    }
}