using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Nhom5_ASP_DKTQDN.Models;
using System.Diagnostics;

namespace Nhom5_ASP_DKTQDN.Controllers
{
    public class ChiTietDangKyController : Controller
    {
        private readonly ILogger<ChiTietDangKyController> _logger;
        private readonly DKTQDNContext _DKTQDNContext;
        private IWebHostEnvironment _webHostEnvironment;

        public ChiTietDangKyController(ILogger<ChiTietDangKyController> logger, DKTQDNContext dKTQDNContext, IWebHostEnvironment webHostEnvironment)
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
        //Hiện danh sách ChiTietDangKy
        public IActionResult ChiTietDangKyList()
        {
            var chiTietDangKy = _DKTQDNContext.ChiTietDangKies.ToList();
            return View(chiTietDangKy);
        }

        //Thêm ChiTietDangKy
        public IActionResult CreateChiTietDangKy()
        {
            var chiTietDangKy = _DKTQDNContext.ChiTietDangKies.ToList();
            var sinhVien = _DKTQDNContext.SinhViens.ToList();
            var chuyenDi = _DKTQDNContext.ChuyenDis.ToList();

            ViewBag.ChuyenDiSelectList = new SelectList(chiTietDangKy, "Id", "Id");
            ViewBag.SinhVienSelectList = new SelectList(sinhVien, "Id", "TenSinhVien");
            ViewBag.ChuyenDiSelectList = new SelectList(chuyenDi, "Id", "MaChuyenDi");

            return View();
        }

        [HttpPost]
        public IActionResult CreateChiTietDangKy(ChiTietDangKy chiTietDangKy)
        {
            chiTietDangKy.IsDeleted = 0;
            chiTietDangKy.CreatedAt = DateTime.Now;
            chiTietDangKy.CreatedBy = 0;
            chiTietDangKy.UpdatedBy = 0;
            chiTietDangKy.UpdatedAt = DateTime.Now;

            _DKTQDNContext.ChiTietDangKies.Add(chiTietDangKy);
            _DKTQDNContext.SaveChanges();
            return RedirectToAction("ChiTietDangKyList");
        }

        public IActionResult DeleteChiTietDangKy(int id)
        {
            var chiTietDangKy = _DKTQDNContext.ChiTietDangKies.Where(t => t.Id == id).FirstOrDefault();
            _DKTQDNContext.Remove(chiTietDangKy);
            _DKTQDNContext.SaveChanges();
            return RedirectToAction("ChiTietDangKyList");
        }

        public IActionResult EditChiTietDangKy(int id)
        {
            var chiTietDangKy = _DKTQDNContext.ChiTietDangKies.ToList();
            var sinhVien = _DKTQDNContext.SinhViens.ToList();
            var chuyenDi = _DKTQDNContext.ChuyenDis.ToList();

            ViewBag.ChuyenDiSelectList = new SelectList(chiTietDangKy, "Id", "Id");
            ViewBag.SinhVienSelectList = new SelectList(sinhVien, "Id", "TenSinhVien");
            ViewBag.ChuyenDiSelectList = new SelectList(chuyenDi, "Id", "MaChuyenDi");

            var query = _DKTQDNContext.ChiTietDangKies.Where(t => t.Id == id).FirstOrDefault();
            return View(query);
        }

        [HttpPost]
        public IActionResult EditChuyenDi(ChiTietDangKy chiTietDangKy)
        {
            chiTietDangKy.IsDeleted = 0;
            chiTietDangKy.CreatedAt = DateTime.Now;
            chiTietDangKy.CreatedBy = 0;
            chiTietDangKy.UpdatedBy = 0;
            chiTietDangKy.UpdatedAt = DateTime.Now;

            _DKTQDNContext.ChiTietDangKies.Update(chiTietDangKy);
            _DKTQDNContext.SaveChanges();
            return RedirectToAction("ChiTietDangKyList");
        }
    }
}
