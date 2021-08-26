using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DOAN.Models;
namespace DOAN.Controllers
{
    public class GioHangController : Controller
    {
        // GET: GioHang
        ClassesKBDataContext data = new ClassesKBDataContext();
        public List<GioHang>LayGioHang()
        {
            List<GioHang> laygh = Session["GioHang"] as List<GioHang>;
            if (laygh == null)
            {
                laygh = new List<GioHang>();
                Session["GioHang"] = laygh;
            }
            return laygh;
        }
        public ActionResult ThemGioHang(string sMASP, string strURL)
        {
            List<GioHang> laygh = LayGioHang();
            GioHang sp = laygh.Find(n => n.sMASP == sMASP);
            if(sp==null)
            {
                sp = new GioHang(sMASP);
                laygh.Add(sp);
                return Redirect(strURL);
            }
            else
            {
                sp.iSOLUONG++;
                return Redirect(strURL);
            }
        }
        private int TSLuong()
        {
            int iTS = 0;
            List<GioHang> laygh = Session["GioHang"] as List<GioHang>;
            if(laygh==null)
            {
                iTS = laygh.Sum(n => n.iSOLUONG);
            }
            return iTS;
        }
        private double TongTien()
        {
            double dTong = 0;
            List<GioHang> laygh = Session["GioHang"] as List<GioHang>;
            if(laygh!=null)
            {
                dTong = laygh.Sum(n => n.dTHANHTIEN);
            }
            return dTong;
        }
        public ActionResult GioHang()
        {
            List<GioHang> laygh = LayGioHang();
            if(laygh.Count==0)
            {
                return RedirectToAction("Index", "Home");
            }
            ViewBag.Tongsoluong = TSLuong();
            ViewBag.Tongtien = TongTien();
            return View(laygh);
        }
        public ActionResult GiohangPartial()
        {
            ViewBag.Tongsoluong = TSLuong();
            ViewBag.Tongtien = TongTien();
            return PartialView();
        }
        public ActionResult XoaGioHang(string sMASP)
        {
            List<GioHang> laygh = LayGioHang();
            GioHang sp = laygh.SingleOrDefault(n => n.sMASP == sMASP);
            if(sp==null)
            {
                laygh.RemoveAll(n => n.sMASP == sMASP);
                return RedirectToAction("GioHang");
            }
            if(laygh.Count==0)
            {
                return RedirectToAction("Index", "Home");
            }
            return RedirectToAction("GioHang");

        }
        public ActionResult CapnhatGiohang(string sMASP, FormCollection f)
        {
            List<GioHang> lstGiohang = LayGioHang();
            GioHang sanpham = lstGiohang.SingleOrDefault(N => N.sMASP == sMASP);
            if (sanpham != null)
            {
                sanpham.iSOLUONG = int.Parse(f["txtSoluong"].ToString());
            }
            return RedirectToAction("GioHang");
        }
        public ActionResult XoaTatcaGiohang()
        {
            List<GioHang> lstGiohang = LayGioHang();
            lstGiohang.Clear();
            return RedirectToAction("Index", "Home");
        }
        public ActionResult Dathang()
        {
            if(Session["Taikhoan"]==null || Session["Taikhoan"].ToString()=="")
            {
                return RedirectToAction("DNKH", "Home");
            }
            if(Session["GioHang"]==null)
            {
                return RedirectToAction("Index", "Home");
            }
            List<GioHang> laygh = LayGioHang();
            ViewBag.Tongsoluong = TSLuong();
            ViewBag.TongTien = TongTien();
            return View(laygh);
        }
        public ActionResult Dathang(FormCollection f)
        {
            DONDATHANG dh = new DONDATHANG();
            KHACHHANG kh = (KHACHHANG)Session["Taikhoan"];
            List<GioHang> gh = LayGioHang();
            dh.MAKH = kh.MAKH;
            dh.NGAYGIAO = DateTime.Now;
            var ngaygiao = String.Format("{0:MM/dd/yyyy}", f["ngaygiao"]);
            dh.NGAYGIAO = DateTime.Parse(ngaygiao);
            dh.TINHTRANGGH = false;
            dh.TINHTRANHTT = false;
            data.DONDATHANGs.InsertOnSubmit(dh);
            data.SubmitChanges();
            foreach (var item in gh)
            {
                CHITIETDONHANG ct = new CHITIETDONHANG();
                ct.MADH = dh.MADH;
                ct.MASP = item.sMASP;
                ct.SOLUONG = item.iSOLUONG;
                ct.THANHTIEN = (decimal)item.dTHANHTIEN;
                data.CHITIETDONHANGs.InsertOnSubmit(ct);
            }
            data.SubmitChanges();
            Session["Giohang"] = null;
            return RedirectToAction("Xacnhandonhang", "GioHang");
        }
        public ActionResult Xacnhandonhang()
        {
            return View();
        }

    }
}