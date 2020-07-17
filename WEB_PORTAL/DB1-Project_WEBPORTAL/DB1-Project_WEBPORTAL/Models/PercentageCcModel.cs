using System.ComponentModel.DataAnnotations;

namespace DB1_Project_WEBPORTAL.Models
{
    public class PercentageCcModel : CcModel
    {
        [Required][Display(Name = "Valor Porcentaje")] public float PercentageValue { get; set; }
    }
}