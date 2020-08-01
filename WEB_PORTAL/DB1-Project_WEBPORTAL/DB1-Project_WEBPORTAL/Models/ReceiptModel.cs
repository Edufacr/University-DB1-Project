using System.ComponentModel.DataAnnotations;

namespace DB1_Project_WEBPORTAL.Models
{
    public class ReceiptModel
    {
        [Required][Display(Name = "Número de Recibo")] public int ReceiptNumber { get; set; }
        [Required][Display(Name = "Concepto de Cobro")] public string ChargeConceptName { get; set; }
        [Required][Display(Name = "Fecha de Emisión")] public string ReceiptDate { get; set; }
        [Required][Display(Name = "Fecha de Vencimiento")] public string DueDate { get; set; }
        [Required][Display(Name = "Monto")] public float Amount { get; set; }
    }
}