using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DOAN.Models;
using PagedList;
using PagedList.Mvc;
namespace DOAN.Controllers
{
    public class HomeController : Controller
    {
        ClassesKBDataContext data = new ClassesKBDataContext();
        public ActionResult Index()
        {
            return View();
        }
        private List<SANPHAM> Laysanpham(int count, string tl)
        {
            return data.SANPHAMs.Where(a => a.MATL == tl).OrderByDescending(s=>s.NGAYCAPNHAT).Take(count).ToList();
        }
        public ActionResult Fullsize()
        {
            var spmoi = Laysanpham(6, "FL");
            return PartialView(spmoi);
        }
        public ActionResult TKL()
        {
            var spmoi = Laysanpham(6, "TKL");
            return PartialView(spmoi);
        }
        public ActionResult CP()
        {
            var spmoi = Laysanpham(6, "CP");
            return PartialView(spmoi);
        }
        public ActionResult Numpad()
        {
            var spmoi = Laysanpham(6, "NUM");
            return PartialView(spmoi);
        }
        public ActionResult Custom()
        {
            var spmoi = Laysanpham(6, "CUS");
            return PartialView(spmoi);
        }
        public ActionResult Xemthem1(int ? page)
        {
            int pageSize = 4;
            int pageNum = (page ?? 1);
            var xt = Laysanpham(6, "FL");
            return View(xt.ToPagedList(pageNum,pageSize));
        }
        public ActionResult Xemthem2(int ? page)
        {
            int pageSize = 4;
            int pageNum = (page ?? 1);
            var xt = Laysanpham(10, "TKL");
            return View(xt.ToPagedList(pageNum, pageSize));
        }
        public ActionResult Xemthem3(int? page)
        {
            int pageSize = 4;
            int pageNum = (page ?? 1);
            var xt = Laysanpham(10, "CP");
            return View(xt.ToPagedList(pageNum, pageSize));
        }
        public ActionResult Xemthem4(int? page)
        {
            int pageSize = 4;
            int pageNum = (page ?? 1);
            var xt = Laysanpham(10, "NUM");
            return View(xt.ToPagedList(pageNum, pageSize));
        }
        public ActionResult Xemthem5(int? page)
        {
            int pageSize = 4;
            int pageNum = (page ?? 1);
            var xt = Laysanpham(10, "CUS");
            return View(xt.ToPagedList(pageNum, pageSize));
        }
        public List<ABOUT> AB(int count)
        {
            return data.ABOUTs.Take(count).ToList();
        }
        public ActionResult About()
        {
            var ab = AB(10);
            return View(ab);
        }
        public ActionResult Theloai()
        {
            var tl = from s in data.THELOAIs select s;
            return PartialView(tl);
        }
        public ActionResult DNKH()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DNKH(FormCollection collection)
        {
            var tendn = collection["tendn"];
            var matkhau = collection["matkhau"];
            KHACHHANG kh = data.KHACHHANGs.SingleOrDefault(n => n.TK == tendn && n.MK == matkhau);
            if (kh != null)
            {
                Session["Taikhoan"] = kh;
                return RedirectToAction("Index");
            }
            else
                ViewBag.Thongbao = "Sai mật khẩu hoặc tên đăng nhập";
            return View();
        }
        [HttpGet]
        public ActionResult DKKH()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DKKH(FormCollection collection,KHACHHANG kh)
        {
            var hoten = collection["hoten"];
            var tendn = collection["tendn"];
            var matkhau = collection["matkhau"];
            var xnmatkhau = collection["xacnhanmatkhau"];
            var ngaysinh = String.Format("{0:MM/dd/yyyy}", collection["Ngaysinh"]);
            var diachi = collection["diachi"];
            var sdt = collection["sdt"];
            
            if (String.IsNullOrEmpty(hoten))
            {
                ViewBag.Thongbao = "Họ tên không được để trống!";
            }
            else if (String.IsNullOrEmpty(tendn))
            {
                ViewBag.Thongbao = "Tên đăng nhập không được để trống!";
            }
            else if (String.IsNullOrEmpty(matkhau))
            {
                ViewBag.Thongbao = "Mật khẩu không được để trống!";
            }
            else if (String.IsNullOrEmpty(xnmatkhau))
            {
                ViewBag.Thongbao = "Xác nhận mật khẩu không được để trống!";
            }
            else if (String.IsNullOrEmpty(ngaysinh))
            {
                ViewBag.Thongbao = "Ngày sinh không được để trống!";
            }
            else if (String.IsNullOrEmpty(diachi))
            {
                ViewBag.Thongbao = "Địa chỉ không được để trống!";
            }
            else if (String.IsNullOrEmpty(sdt))
            {
                ViewBag.Thongbao = "Số điện thoại không được để trống!";
            }
            else if(String.Compare(matkhau,xnmatkhau)!=0)
            {
                ViewBag.Thongbao = "Mật khẩu phải trùng nhau!";
            }
            else
            {
                kh.TENKH = hoten;
                kh.TK = tendn;
                kh.MK = matkhau;
                kh.NAMSINH = DateTime.Parse(ngaysinh);
                kh.DIACHI = diachi;
                kh.SDT = int.Parse(sdt);
                data.KHACHHANGs.InsertOnSubmit(kh);
                data.SubmitChanges();
                return RedirectToAction("DKTC");
            }
            return this.DKKH();
        }
        public ActionResult DKTC()
        {
            return View();
        }
    }
}