using System.ComponentModel.DataAnnotations;

namespace DB1_Project_WEBPORTAL.Models
{
    public class PaymentProofModel
    {
        [Required][Display(Name = "Número de Comprobante")] public int ProofNumber { get; set; }
        [Required][Display(Name = "Fecha")] public string Date { get; set; }
        [Required][Display(Name = "Monto Total")] public float Amount { get; set; }
    }
}