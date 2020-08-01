using System;
using System.ComponentModel.DataAnnotations;
namespace DB1_Project_WEBPORTAL.Models
{
    public class ApModel
    {
        [Required][Display (Name = "Número de AP")] public int ApNumber { set; get; }
        [Required][Display (Name = "Monto inicial")] public double InitialAmount { set; get; }
        [Required][Display (Name = "Balance")] public double Balance{ set; get; }
        [Required][Display (Name = "Tasa de interés anual")] public float AnnualInterestRate{ set; get; }
        [Required][Display (Name = "Plazo en meses")] public int PaymentTerms{ set; get; } 
        [Required][Display (Name = "Cuotas restantes")] public int PaymentTermsLeft{ set; get; }
        [Required][Display (Name = "Monto por cuota")] public double FeeValue{ set; get; }
        [Required][Display (Name = "Fecha de creación")] public DateTime InsertedAt{ set; get; }
        [Required][Display (Name = "Fecha de última actualización")] public DateTime UpdatedAt{ set; get; }

    }
}