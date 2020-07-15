using System;
using System.ComponentModel.DataAnnotations;
using System.Security.Cryptography;

namespace DB1_Project_WEBPORTAL.Models
{
    public class ChangeModel
    {
        [Required][Display(Name = "Registro original")] public string jsonBefore { get; set; }
        [Required][Display(Name = "Nuevo registro")] public string jsonAfter { get; set; }
        [Required][Display(Name = "Tipo de Entidad")] public string entityType { get; set; }
        [Required][Display(Name = "Fecha y Hora")] public DateTime changeDateTime { get; set; }
        [Required][Display(Name = "Hecho por")] public string changeUser { get; set; }
        [Required][Display(Name = "IP del cambio")] public string changeIp { get; set; }
    }
}