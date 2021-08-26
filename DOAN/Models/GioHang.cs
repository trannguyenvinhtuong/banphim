using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DOAN.Models;
namespace DOAN.Models
{
    
    public class GioHang
    {
        ClassesKBDataContext data = new ClassesKBDataContext();
        public string sMASP { get; set; }
        public string sTENPHIM { get; set; }
        public string sANHBIA { get; set; }
        public double dGIA { get; set; }
        public int iSOLUONG { get; set; }
        public double dTHANHTIEN
        {
            get { return iSOLUONG * dGIA; }
        }
        public GioHang(string MASP)
        {
            sMASP = MASP;
            SANPHAM sanpham = data.SANPHAMs.Single(n => n.MASP == sMASP);
            sTENPHIM = sanpham.TENPHIM;
            sANHBIA = sanpham.ANHBIA;
            dGIA = double.Parse(sanpham.GIA.ToString());
            iSOLUONG = 1;
        }
    }
}