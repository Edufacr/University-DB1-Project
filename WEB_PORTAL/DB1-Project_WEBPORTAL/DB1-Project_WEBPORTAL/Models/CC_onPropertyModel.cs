using System.ComponentModel.DataAnnotations;

namespace DB1_Project_WEBPORTAL.Models
{
    public class CC_onPropertyModel
    {
        [Required][Display (Name = "Concepto de Cobro")] public string ChargeConceptName;
        [Required][Display (Name = "Días de Expiración")] public int ExpirationDays;
        [Required][Display (Name = "Tasa de Intereses Moratorios")] public float MoratoryInterestRate;
        [Required][Display (Name = "Día Emisión Recibo")] public int ReciptEmisionDay;
        [Required][Display (Name = "Fecha Inicio")]  public string BeginDate;
        [Required][Display (Name = "Fecha Fin")]  public string EndDate;
    }
}