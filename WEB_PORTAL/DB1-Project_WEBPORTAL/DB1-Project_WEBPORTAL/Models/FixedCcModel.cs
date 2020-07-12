using System.ComponentModel.DataAnnotations;

namespace DB1_Project_WEBPORTAL.Models
{
    public class FixedCcModel : CcModel
    {
        [Required] [Display(Name = "Monto")]
        public float Amount { set; get; }
    }
}