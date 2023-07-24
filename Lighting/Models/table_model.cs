﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lighting.Models
{
    public class table_model
    {
        public class M_chairman_table
        {
            public int? count_row { get; set; }
            public int? id { get; set; }
            public string? name_th { get; set; }
            public string? name_en { get; set; }
            public string? rank_th { get; set; }
            public string? rank_en { get; set; }
            public string? image_nameTH { get; set; }
            public string? image_nameEN { get; set; }
            public int? use_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        }
        public class P_philosophy_table
        {
            public int? count_row { get; set; }
            public int? id { get; set; }
            public string? image_name { get; set; }
            public int? num_order { get; set; }
            public int? use_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        }        
        public class Organizational_Structure_table
        {
            public int? count_row { get; set; }
            public int? id { get; set; }
            public string? image_nameTH { get; set; }
            public string? image_nameEN { get; set; }
            public int? num_order { get; set; }
            public int? use_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        }
        public class Company_Overview_table
        {
            public int? count_row { get; set; }
            public int? id { get; set; }
            public string? image_name { get; set; }
            public int? num_order { get; set; }
            public int? use_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        }
        public class Companyprofile_table
        {
            public int? count_row { get; set; }
            public int? id { get; set; }
            public string? title_th { get; set; }
            public string? title_en { get; set; }
            public string? detail_th { get; set; }
            public string? detail_en { get; set; }
            public int? use_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        }
        public class Board_of_Directors_table
        {
            public int? count_row { get; set; }
            public int? id { get; set; }
            public string? name_th { get; set; }
            public string? name_en { get; set; }
            public string? image_nameTH { get; set; }
            public string? image_nameEN { get; set; }
            public string? position_th { get; set; }
            public string? position_en { get; set; }
            public int? type_board { get; set; }
            public int? use_status { get; set; }
            public int? sort_number { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        } 
        public class CorporateGovernance_File_table
        {
            public int? count_row { get; set; }
            public int? id { get; set; }
            public string? image_name { get; set; }
            public string? image_name_ENG { get; set; }
            public string? title_file_th { get; set; }
            public string? title_file_en { get; set; }
            public string? file_name { get; set; }
            public string? file_name_ENG { get; set; }
            public string? file_type { get; set; }
            public int? use_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        }
        public class CorporateGovernance_Cate_table
        {
            public int? count_row { get; set; }
            public int? id { get; set; }
            public string? detail_th { get; set; }
            public string? detail_en { get; set; }
            public string? title_th { get; set; }
            public string? title_en { get; set; }
            public int? use_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        } 
        public class Business_ethics_details_table
        {
            public int? count_row { get; set; }
            public int id { get; set; }
            public string? title_TH { get; set; }
            public string? title_ENG { get; set; }
            public string? image_name { get; set; }
            public string? image_name_ENG { get; set; }
            public int? use_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }

        }
        public class CRS_policy_File_table
        {
            public int? count_row { get; set; }
            public int id { get; set; }
            public string? image_name { get; set; }
            public string? image_name_ENG { get; set; }
            public string? title_file_th { get; set; }
            public string? title_file_en { get; set; }
            public string? file_name { get; set; }
            public string? file_name_ENG { get; set; }
            public string? file_type { get; set; }
            public int? use_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        } 
        public class Anti_fraud_File_table
        {
            public int? count_row { get; set; } 
            public int id { get; set; }
            public string? image_name { get; set; }
            public string? image_name_ENG { get; set; }
            public string? title_file_th { get; set; }
            public string? title_file_en { get; set; }
            public string? file_name { get; set; }
            public string? file_name_ENG { get; set; }
            public string? file_type { get; set; }
            public int? use_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        } 
        public class O_Gift_entertainment_File_table
        { 
            public int? count_row { get; set; }
            public int id { get; set; }
            public string? image_name { get; set; }
            public string? image_name_ENG { get; set; }
            public string? title_file_th { get; set; }
            public string? title_file_en { get; set; }
            public string? file_name { get; set; }
            public string? file_name_ENG { get; set; }
            public string? file_type { get; set; }
            public int? use_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        }
        public class O_Channel_clue_File_table
        { 
            public int? count_row { get; set; }
            public int id { get; set; }
            public string? image_name { get; set; }
            public string? image_name_ENG { get; set; }
            public string? title_file_th { get; set; }
            public string? title_file_en { get; set; }
            public string? file_name { get; set; }
            public string? file_name_ENG { get; set; }
            public string? file_type { get; set; }
            public int? use_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        }
        public class O_Author_chairman_File_table
        {
            public int? count_row { get; set; }
            public int id { get; set; }
            public string? image_name { get; set; }
            public string? image_name_ENG { get; set; }
            public string? title_file_th { get; set; }
            public string? title_file_en { get; set; }
            public string? file_name { get; set; }
            public string? file_name_ENG { get; set; }
            public string? file_type { get; set; }
            public int? use_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }

        }
        public class O_Author_chairman_executive_File_table
        { 
            public int? count_row { get; set; }
            public int id { get; set; }
            public string? image_name { get; set; }
            public string? image_name_ENG { get; set; }
            public string? title_file_th { get; set; }
            public string? title_file_en { get; set; }
            public string? file_name { get; set; }
            public string? file_name_ENG { get; set; }
            public string? file_type { get; set; }
            public int? use_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        }
        public class O_Author_board_director_File_table
        {
            public int? count_row { get; set; }
            public int id { get; set; }
            public string? image_name { get; set; }
            public string? image_name_ENG { get; set; }
            public string? title_file_th { get; set; }
            public string? title_file_en { get; set; }
            public string? file_name { get; set; }
            public string? file_name_ENG { get; set; }
            public string? file_type { get; set; }
            public int? use_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }

        }
        public class O_Author_audit_committee_File_table
        {
            public int? count_row { get; set; }
            public int id { get; set; }
            public string? image_name { get; set; }
            public string? image_name_ENG { get; set; }
            public string? title_file_th { get; set; }
            public string? title_file_en { get; set; }
            public string? file_name { get; set; }
            public string? file_name_ENG { get; set; }
            public string? file_type { get; set; }
            public int? use_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        }
        public class O_Author_executive_board_File_table
        {
            public int? count_row { get; set; }
            public int id { get; set; }
            public string? image_name { get; set; }
            public string? image_name_ENG { get; set; }
            public string? title_file_th { get; set; }
            public string? title_file_en { get; set; }
            public string? file_name { get; set; }
            public string? file_name_ENG { get; set; }
            public string? file_type { get; set; }
            public int? use_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        }
        public class O_Author_secretary_File_table
        {
            public int? count_row { get; set; }
            public int id { get; set; }
            public string? image_name { get; set; }
            public string? image_name_ENG { get; set; }
            public string? title_file_th { get; set; }
            public string? title_file_en { get; set; }
            public string? file_name { get; set; }
            public string? file_name_ENG { get; set; }
            public string? file_type { get; set; }
            public int? use_status { get; set; }
            public DateTime? created_at { get; set; }
            public DateTime? updated_at { get; set; }
        }
    }
}
