﻿using Lighting.Areas.Identity.GeneraIProperty;
using System.ComponentModel.DataAnnotations;

namespace Lighting.Areas.Identity.Data
{
    public class SH_IR_cinanve_statement : IProperty
    {
        [Key]
        public int id { get; set; }
        public string? titleTH { get; set; }
        public string? titleENG { get; set; }
        public string? detailsTitleTH { get; set; }
        public string? detailsTitleENG { get; set; }
        public string? financial_positionTitleTH { get; set; }
        public string? financial_positionTitleENG { get; set; }
        public string? profitLostTitleTH { get; set; }
        public string? profitLostTitleENG { get; set; }
        public string? Comprehensive_IncomeTitleTH { get; set; }
        public string? Comprehensive_IncomeTitleENG { get; set; }
        public string? cash_flowTitleTH { get; set; }
        public string? cash_flowTitleENG { get; set; }
        public string? downloadFileTitleTH { get; set; }
        public string? downloadFileTitleENG { get; set; }
        public string? ListTitleTH { get; set; }
        public string? ListTitleENG { get; set; }
        public string? amountTitleTH { get; set; }
        public string? amountTitleENG { get; set; }
        public string? percentTitleTH { get; set; }
        public string? percentTitleENG { get; set; }
        public string? dayTitleTH { get; set; }
        public string? dayTitleENG { get; set; }
        public DateTime? created_at { get; set; }
        public DateTime? updated_at { get; set; }
    }
}
