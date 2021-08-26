using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DOAN.Models;
namespace DOAN.Controllers
{
    public class DetailsController : Controller
    {
        // GET: Details
        ClassesKBDataContext data = new ClassesKBDataContext();
        public List<ProductView> Lstsp(string MaSP)
        {
            var sp = from a in data.SANPHAMs
                     join b in data.NHAPPs
                     on a.MANPP equals b.MANPP
                     join c in data.THELOAIs
                     on a.MATL equals c.MATL
                     join d in data.XUATXUs
                     on a.MANC equals d.MANC
                     join e in data.HANGs
                     on a.MAHA equals e.MAHA
                     join f in data.MOTAs
                     on a.MASP equals f.MASP
                     join g in data.ANHSPs
                     on a.MASP equals g.MASP
                     where a.MASP == MaSP
                     select new ProductView()
                     {
                         TENTL = c.TENTL,
                         TENNPP = b.TENNPP,
                         TENHA = e.TENHA,
                         TENNC = d.TENNC,
                         MOTA1 = f.MOTA1,
                         MOTA2 = f.MOTA2,
                         MOTA3 = f.MOTA3,
                         MOTA4 = f.MOTA4,
                         MOTA5 = f.MOTA5,
                         MOTA6 = f.MOTA6,
                         IMG1 = g.IMG1,
                         IMG2 = g.IMG2,
                         IMG3 = g.IMG3,
                         IMG4 = g.IMG4,
                         PHUKIEN = a.PHUKIEN,
                         BAOHANH = a.BAOHANH,
                         ANHBIA = a.ANHBIA,
                         TENPHIM = a.TENPHIM,
                         NAMSX = (int)a.NAMSX,
                         ANHSLIDE1 = g.ANHSLIDE1,
                         ANHSLIDE2 = g.ANHSLIDE2,
                         ANHSLIDE3 = g.ANHSLIDE3,
                         GIA = (double)a.GIA,
                         MASP = a.MASP
                     };
            return sp.ToList();
        }
        public ActionResult Details(string MaSP)
        {
            var sp = Lstsp(MaSP);
            return View(sp.Single());
        }
    }
}
