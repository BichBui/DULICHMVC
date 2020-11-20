using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace DULICH.Models
{
    public class HoaDon
    {
        [Key]
        public int Id { get; set; }
        public String hoadon { get; set; }
        public int doan_id { get; set; }
        public int loaichiphi_id { get; set; }
        public DateTime ngaylap { get; set; }

        public int sotien { get; set; }
        public string noidung { get; set; }

    }
}
