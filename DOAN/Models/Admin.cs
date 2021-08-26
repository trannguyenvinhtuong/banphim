using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DOAN.Models
{
    public class Admin
    {
        public string MASP { get; set; }
        public int SOPHIM { get; set; }
        public string MATL { get; set; }
        public string MAHA { get; set; }
        public string MANPP { get; set; }
        public int BAOHANH { get; set; }
        public string PHUKIEN { get; set; }
        public string MANC { get; set; }
        public string TENPHIM { get; set; }
        public DateTime NGAYCAPNHAT { set; get; }
    }
}