using System.ComponentModel.DataAnnotations;

namespace DB1_Project_WEBPORTAL.Models
{
    public class MoratoryInterestCC_onProperty : MoratoryInterestCcModel
    {
        [Required][Display (Name = "Fecha Inicio")]  public string BeginDate{ set; get; }
        [Required][Display (Name = "Fecha Fin")]  public string EndDate{ set; get; }
    }
}