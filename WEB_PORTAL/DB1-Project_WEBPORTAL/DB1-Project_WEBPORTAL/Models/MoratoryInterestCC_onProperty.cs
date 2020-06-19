using System.ComponentModel.DataAnnotations;

namespace DB1_Project_WEBPORTAL.Models
{
    public class MoratoryInterestCC_onProperty : CC_onPropertyModel
    {
        [Required][Display(Name = "Valor Interés")] public float InterestValue;
    }
}