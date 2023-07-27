﻿using Lighting.Areas.Identity.GeneraIProperty;
using System.ComponentModel.DataAnnotations;

namespace Lighting.Areas.Identity.Data
{
    public class IR_Banner : IProperty
    {
        [Key]
        public int Id { get; set; }
        public string? ImageBanner { get; set; }
        public int? Status { get; set; }
        public DateTime? created_at { get; set; }
        public DateTime? updated_at { get; set; }
    }
}