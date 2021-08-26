using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DOAN.Models;
using System.IO;
namespace DOAN.Controllers
{

    public class AdminController : Controller
    {

        ClassesKBDataContext data = new ClassesKBDataContext();
        public ActionResult Admin()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(FormCollection collection)
        {
            var tendn = collection["tendn"];
            var matkhau = collection["matkhau"];
            if (String.IsNullOrEmpty(tendn))
            {
                ViewData["loi1"] = "Phải nhập tên đăng nhập";
            }
            else if (String.IsNullOrEmpty(matkhau))
            {
                ViewData["loi2"] = "Phải nhập mật khẩu";
            }
            else
            {
                ADMIN ad = data.ADMINs.SingleOrDefault(n => n.username == tendn && n.password == matkhau);
                if (ad != null)
                {
                    Session["Taikhoan"] = ad;
                    return RedirectToAction("Admin", "Admin");
                }
                else
                    ViewBag.Thongbao = "Tên đăng nhập hoặc mật khẩu không đúng";
            }
            return View();
        }
        public ActionResult SanPham()
        {
            return View(data.SANPHAMs.ToList());
        }
        [HttpGet]
        public ActionResult Create()
        {
            ViewBag.MATL = new SelectList(data.THELOAIs.ToList().OrderBy(n => n.TENTL), "MATL", "TENTL");
            ViewBag.MAHA = new SelectList(data.HANGs.ToList().OrderBy(n => n.TENHA), "MAHA", "TENHA");
            ViewBag.MANPP = new SelectList(data.NHAPPs.ToList().OrderBy(n => n.TENNPP), "MANPP", "TENNPP");
            ViewBag.MANC = new SelectList(data.XUATXUs.ToList().OrderBy(n => n.TENNC), "MANC", "TENNC");
            return View();
        }

        [HttpPost]
        public ActionResult Create(SANPHAM sp)
        {
            data.SANPHAMs.InsertOnSubmit(sp);
            data.SubmitChanges();
            return RedirectToAction("SanPham");
        }
       
        public ActionResult Xoasp()
        {
            return View();
        }
        public ActionResult Xoasp(string id)
        {
            SANPHAM sp = data.SANPHAMs.SingleOrDefault(n => n.MASP == id);
            ViewBag.MASP = sp.MASP;
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(sp);
        }
        [HttpPost,ActionName("Xoasp")]
        public ActionResult XNxoasp(string id)
        {
            SANPHAM sp = data.SANPHAMs.SingleOrDefault(n => n.MASP == id);
            ViewBag.MASP = sp.MASP;
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            data.SANPHAMs.DeleteOnSubmit(sp);
            data.SubmitChanges();
            return RedirectToAction("SanPham");
        }
    }
}