using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DOAN.Models
{
    public class KHLogin
    {
        public String TK { get; set; }
        public String MK { get; set; }
        public String TENKH { get; set; }
        public String DIACHI { get; set; }
        public int SDT { get; set; }
        public DateTime NAMSINH { get; set; }
    }
}