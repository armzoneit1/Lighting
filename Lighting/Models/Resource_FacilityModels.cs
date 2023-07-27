﻿using Lighting.Areas.Identity.Data;

namespace Lighting.Models
{
    public class Resource_FacilityModels
    {

        public int? count_RF_Manufacturing { get; set; }
        public RF_Manufacturing? fod_RF_Manufacturing { get; set; }
        public RF_Manufacturing_Images? RF_Manufacturing_Images { get; set; }
        public class RF_Manufacturing_Images_table
        {
            public int count_row { get; set; }
            public int id { get; set; }
            public string? upload_image { get; set; }
            public string? upload_image_ENG { get; set; }
            public int active_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        }

        public int? count_RF_Warehouse_Logistics { get; set; }
        public RF_Warehouse_Logistics? fod_RF_Warehouse_Logistics { get; set; }
        public RF_Warehouse_Logistics_Images? RF_Warehouse_Logistics_Images { get; set; }
        public class RF_Warehouse_Logistics_Images_table
        {
            public int count_row { get; set; }
            public int id { get; set; }
            public string? upload_image { get; set; }
            public string? upload_image_ENG { get; set; }
            public int active_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        }

        public int? count_RF_Oversea_Offices { get; set; }
        public RF_Oversea_Offices? fod_RF_Oversea_Offices { get; set; }
        public RF_Oversea_Offices_Images? RF_Oversea_Offices_Images { get; set; }
        public class RF_Oversea_Offices_Images_table
        {
            public int count_row { get; set; }
            public int id { get; set; }
            public string? upload_image { get; set; }
            public string? upload_image_ENG { get; set; }
            public int active_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        }

        public int? count_RF_Solid_States { get; set; }
        public RF_Solid_States? fod_RF_Solid_States { get; set; }
        public RF_Solid_States_Images? RF_Solid_States_Images { get; set; }
        public class RF_Solid_States_Images_table
        {
            public int count_row { get; set; }
            public int id { get; set; }
            public string? upload_image { get; set; }
            public string? upload_image_ENG { get; set; }
            public int active_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        }

        public int? count_RF_Assembly_Services { get; set; }
        public RF_Assembly_Services? fod_RF_Assembly_Services { get; set; }
        public RF_Assembly_Services_Images? RF_Assembly_Services_Images { get; set; }
        public class RF_Assembly_Services_Images_table
        {
            public int count_row { get; set; }
            public int id { get; set; }
            public string? upload_image { get; set; }
            public string? upload_image_ENG { get; set; }
            public int active_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        }

        public int? count_RF_Solution_Centers { get; set; }
        public RF_Solution_Centers? fod_RF_Solution_Centers { get; set; }
        public RF_Solution_Centers_Images? RF_Solution_Centers_Images { get; set; }
        public class RF_Solution_Centers_Images_table
        {
            public int count_row { get; set; }
            public int id { get; set; }
            public string? upload_image { get; set; }
            public string? upload_image_ENG { get; set; }
            public int active_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        }
    }
}