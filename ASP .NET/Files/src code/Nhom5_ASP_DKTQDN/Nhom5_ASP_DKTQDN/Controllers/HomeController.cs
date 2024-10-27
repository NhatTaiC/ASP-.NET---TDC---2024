using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Nhom5_ASP_DKTQDN.Models;
using System.Diagnostics;

namespace Nhom5_ASP_DKTQDN.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly DKTQDNContext _DKTQDNContext;
        private readonly IWebHostEnvironment _webHostEnvironment;

        public HomeController(ILogger<HomeController> logger, DKTQDNContext dKTQDNContext, IWebHostEnvironment webHostEnvironment)
        {
            _logger = logger;
            _DKTQDNContext = dKTQDNContext;
            _webHostEnvironment = webHostEnvironment;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        //Hiện danh sách giảng viên
        public IActionResult GiangVienList()
        {
            var giangVien = _DKTQDNContext.GiangViens.ToList();
            return View(giangVien);
        }

        //Thêm giảng viên
        public IActionResult CreateGiangVien()
        {
            var giangVien = _DKTQDNContext.GiangViens.ToList();
            ViewBag.KhoaSelectList = new SelectList(giangVien, "Id", "TenGiangVien");
            return View();
        }

        [HttpPost]
        public IActionResult CreateGiangVien(GiangVien giangVien)
        {
            _DKTQDNContext.GiangViens.Add(giangVien);
            _DKTQDNContext.SaveChanges();
            return RedirectToAction("GiangVienList");
        }

        //Xóa giảng viên
        public IActionResult DeleteGiangVien(int id)
        {
            var giangVien = _DKTQDNContext.GiangViens.Where(t => t.Id == id).FirstOrDefault();
            _DKTQDNContext.Remove(giangVien);
            _DKTQDNContext.SaveChanges();
            return RedirectToAction("GiangVienList");
        }

        //Sửa giảng viên
        public IActionResult EditGiangVien(int id)
        {
            var giangVien = _DKTQDNContext.GiangViens.Where(t => t.Id == id).FirstOrDefault();

            return View(giangVien);
        }

        [HttpPost]
        public IActionResult EditGiangVien(GiangVien giangVien)
        {
            _DKTQDNContext.GiangViens.Update(giangVien);
            _DKTQDNContext.SaveChanges();
            return RedirectToAction("GiangVienList");
        }


        public IActionResult SinhVienList()
        {
            var sinhVien = _DKTQDNContext.SinhViens.ToList();
            return View(sinhVien);
        }

        public IActionResult CreateSinhVien()
        {
            var sinhVien = _DKTQDNContext.SinhViens.ToList();
            ViewBag.KhoaSelectList = new SelectList(sinhVien, "Id", "TenGiangVien");
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
