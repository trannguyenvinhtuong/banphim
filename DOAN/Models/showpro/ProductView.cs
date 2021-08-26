using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DOAN.Models
{
    public class ProductView
    {
        public string MASP { set; get; }
        public string TENTL { set; get; }
        public string ANHBIA { set; get; }
        public string TENPHIM { set; get; }
        public int NAMSX { set; get; }
        
        public string PHUKIEN { set; get; }
        public string TENNPP { set; get; }
       
        public string TENHA { set; get; }
       
        public string TENNC { set; get; }
        public string MOTA1 { set; get; }
        public string MOTA2 { set; get; }
        public string MOTA3 { set; get; }
        public string MOTA4 { set; get; }
        public string MOTA5 { set; get; }
        public string MOTA6 { set; get; }
        public string IMG1 { get; set; }
        public string IMG2 { get; set; }
        public string IMG3 { get; set; }
        public string IMG4 { get; set; }
        public string BAOHANH { get; set; }
        public string ANHSLIDE1 { get; set; }
        public string ANHSLIDE2 { get; set; }
        public string ANHSLIDE3 { get; set; }
        public double GIA { get; set; }
    }
}