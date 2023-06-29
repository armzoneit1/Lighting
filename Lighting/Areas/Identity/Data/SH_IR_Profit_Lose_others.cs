﻿using Lighting.Areas.Identity.GeneraIProperty;
using System.ComponentModel.DataAnnotations;

namespace Lighting.Areas.Identity.Data
{
    public class SH_IR_Profit_Lose_others : IProperty
    {
        [Key]
        public int id { get; set; }
        public string? titleTH { get; set; }
        public string? titleENG { get; set; }
        public string? amount { get; set; }
        public string? percentProfit { get; set; }
        public DateTime? created_at { get; set; }
        public DateTime? updated_at { get; set; }
    }
}
