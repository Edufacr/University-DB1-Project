using System.ComponentModel.DataAnnotations;

namespace DB1_Project_WEBPORTAL.Models
{
    public class MoratoryInterestCcModel : CcModel
    {
        [Required][Display(Name = "Valor Interés")] public float InterestValue { get; set; }
    }
}