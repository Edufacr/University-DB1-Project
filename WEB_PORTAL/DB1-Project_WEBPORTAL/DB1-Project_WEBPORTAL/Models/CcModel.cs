using System.ComponentModel.DataAnnotations;

namespace DB1_Project_WEBPORTAL.Models
{
    public class CcModel
    {
        [Required][Display (Name = "Concepto de Cobro")] public string ChargeConceptName { set; get; }
        [Required][Display (Name = "Días de Expiración")] public int ExpirationDays{ set; get; }
        [Required][Display (Name = "Tasa de Intereses Moratorios")] public float MoratoryInterestRate{ set; get; }
        [Required][Display (Name = "Día Emisión Recibo")] public int ReciptEmisionDay{ set; get; }
    }
}