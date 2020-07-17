using System.ComponentModel.DataAnnotations;
using DB1_Project_WEBPORTAL.Models;

namespace DB1_Project_WEBPORTAL.Models
{
    public class PercentageCC_onPropertyModel : PercentageCcModel
    {
        [Required][Display (Name = "Fecha Inicio")]  public string BeginDate{ set; get; }
        [Required][Display (Name = "Fecha Fin")]  public string EndDate{ set; get; }
    }
}