using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Nhom5_ASP_DKTQDN.Models;

namespace Nhom5_ASP_DKTQDN.Controllers
{
    public class SinhVienController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly DKTQDNContext _DKTQDNContext;
        private readonly IWebHostEnvironment _webHostEnvironment;

        public SinhVienController(ILogger<HomeController> logger, DKTQDNContext dKTQDNContext, IWebHostEnvironment webHostEnvironment)
        {
            _logger = logger;
            _DKTQDNContext = dKTQDNContext;
            _webHostEnvironment = webHostEnvironment;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult SinhVienList()
        {
            var sinhVien = _DKTQDNContext.SinhViens.Include(oj => oj.IdKhoaNavigation).ToList();
            return View(sinhVien);
        }

        public IActionResult CreateSinhVien()
        {
            var Khoa = _DKTQDNContext.Khoas.ToList();
            ViewBag.KhoaSelectList = new SelectList(Khoa, "Id", "TenKhoa");
            var taiKhoan = _DKTQDNContext.TaiKhoans.ToList();
            ViewBag.TaiKhoanSelectList = new SelectList(taiKhoan, "Id", "TenTaiKhoan");
            var khoaHoc = _DKTQDNContext.KhoaHocs.ToList();
            ViewBag.KhoaHocsSelectList = new SelectList(khoaHoc, "Id", "NamBatDau");
            return View();
        }

        [HttpPost]
        public IActionResult CreateSinhVien(SinhVien sinhVien)
        {
            _DKTQDNContext.SinhViens.Add(sinhVien);
            _DKTQDNContext.SaveChanges();
            return RedirectToAction("SinhVienList");
        }

        public IActionResult DeleteSinhVien(int id)
        {
            var sinhVien = _DKTQDNContext.SinhViens.Where(t => t.Id == id).FirstOrDefault();
            _DKTQDNContext.Remove(sinhVien);
            _DKTQDNContext.SaveChanges();
            return RedirectToAction("SinhVienList");
        }

        public IActionResult EditSinhVien(int id)
        {
            var Khoa = _DKTQDNContext.Khoas.ToList();
            ViewBag.KhoaSelectList = new SelectList(Khoa, "Id", "TenKhoa");
            var taiKhoan = _DKTQDNContext.TaiKhoans.ToList();
            ViewBag.TaiKhoanSelectList = new SelectList(taiKhoan, "Id", "TenTaiKhoan");
            var khoaHoc = _DKTQDNContext.KhoaHocs.ToList();
            ViewBag.KhoaHocsSelectList = new SelectList(khoaHoc, "Id", "NamBatDau");
            var sinhVien = _DKTQDNContext.SinhViens.Where(t => t.Id == id).FirstOrDefault();
            return View(sinhVien);
        }

        [HttpPost]
        public IActionResult EditSinhVien(SinhVien sinhVien)
        {
            _DKTQDNContext.SinhViens.Update(sinhVien);
            _DKTQDNContext.SaveChanges();
            return RedirectToAction("SinhVienList");
        }
    }
}
