﻿using System.ComponentModel.DataAnnotations;

namespace DB1_Project_WEBPORTAL.Models
{
    public class ConsumptionCcModel : CcModel
    {
        [Required] [Display(Name = "Valor M3")]
        public float ValueM3;
        [Required] [Display(Name = "Valor Mínimo")]
        public float MinValue;
    }
}