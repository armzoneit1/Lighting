﻿using Lighting.Areas.Identity.GeneraIProperty;
using System.ComponentModel.DataAnnotations;

namespace Lighting.Areas.Identity.Data
{
    public partial class O_Author_board_director : IProperty
    {
        [Key]
        public int id { get; set; }
        public string? title_TH { get; set; }
        public string? title_ENG { get; set; }
        public string? detailsTitleTH { get; set; }
        public string? detailsTitleENG { get; set; }
        public string? titleDetails_TH { get; set; }
        public string? titleDetails_ENG { get; set; }
        public string? detail_th { get; set; }
        public string? detail_en { get; set; }
        public DateTime? created_at { get; set; }
        public DateTime? updated_at { get; set; }
    }
}