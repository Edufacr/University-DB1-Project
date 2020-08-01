using System;
using System.ComponentModel.DataAnnotations;
//! Crear Model
namespace DB1_Project_WEBPORTAL.Models
{
    public class ApMovementModel
    {
        [Required][Display (Name = "Numero de Movimiento")] public int MovNumber { set; get; }
        [Required][Display (Name = "Tipo de Movimiento")] public string MovTypeName { set; get; }
        [Required][Display (Name = "Monto")] public double Amount { set; get; }
        [Required][Display (Name = "Interes Mensual")] public double MonthlyInterest { set; get; }
        [Required][Display (Name = "Numero de cuotas pendientes")] public int PaymentTermsLeft { set; get; }
        [Required][Display (Name = "Nuevo balance")] public double NewBalance { set; get; }
        [Required][Display (Name = "Fecha")] public DateTime Date { set; get; }
        [Required][Display (Name = "Fecha de creación")] public DateTime InsertedAt { set; get; }
    }
}