using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Nhom5_ASP_DKTQDN.Models;
using System.Diagnostics;

namespace Nhom5_ASP_DKTQDN.Controllers
{
    public class ChuyenDiController : Controller
    {
        private readonly ILogger<ChuyenDiController> _logger;
        private readonly DKTQDNContext _DKTQDNContext;
        private readonly IWebHostEnvironment _webHostEnvironment;

        public ChuyenDiController(ILogger<ChuyenDiController> logger, DKTQDNContext dKTQDNContext, IWebHostEnvironment webHostEnvironment)
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

        //Hiện danh sách chuyen di
        public IActionResult ChuyenDiList()
        {
            var chuyenDi = _DKTQDNContext.ChuyenDis.ToList();
            return View(chuyenDi);
        }

        //Thêm chuyen di
        public IActionResult CreateChuyenDi()
        {
            var chuyenDi = _DKTQDNContext.ChuyenDis.ToList();
            var giangVien = _DKTQDNContext.GiangViens.ToList();
            var  doanhNghiep = _DKTQDNContext.DoanhNghieps.ToList();
            var khoa = _DKTQDNContext.Khoas.ToList();   
            var khoaHoc = _DKTQDNContext.KhoaHocs.ToList();

            ViewBag.ChuyenDiSelectList = new SelectList(chuyenDi, "Id", "MaChuyenDi");
            ViewBag.GiangVienSelectList = new SelectList(giangVien, "Id", "TenGiangVien");
            ViewBag.DoanhNghiepSelectList = new SelectList(doanhNghiep, "Id", "TenDoanhNghiep");
            ViewBag.KhoaHocSelectList = new SelectList(khoaHoc, "Id", "MaKhoaHoc");
            ViewBag.KhoaSelectList = new SelectList(khoa, "Id", "TenKhoa");


            return View();
        }

        [HttpPost]
        public IActionResult CreateChuyenDi(ChuyenDi chuyenDi)
        {
            chuyenDi.IsDeleted = 0;
            chuyenDi.CreatedAt = DateTime.Now;
            chuyenDi.CreatedBy = 0;
            chuyenDi.UpdatedBy = 0;
            chuyenDi.UpdatedAt = DateTime.Now;

            _DKTQDNContext.ChuyenDis.Add(chuyenDi);
            _DKTQDNContext.SaveChanges();
            return RedirectToAction("ChuyenDiList");
        }

        public IActionResult DeleteChuyenDi(int id)
        {
            var chuyenDi = _DKTQDNContext.ChuyenDis.Where(t => t.Id == id).FirstOrDefault();
            _DKTQDNContext.Remove(chuyenDi);
            _DKTQDNContext.SaveChanges();
            return RedirectToAction("ChuyenDiList");
        }

        public IActionResult EditChuyenDi(int id)
        {
            var chuyenDi = _DKTQDNContext.ChuyenDis.ToList();
            var giangVien = _DKTQDNContext.GiangViens.ToList();
            var doanhNghiep = _DKTQDNContext.DoanhNghieps.ToList();
            var khoa = _DKTQDNContext.Khoas.ToList();
            var khoaHoc = _DKTQDNContext.KhoaHocs.ToList();

            ViewBag.ChuyenDiSelectList = new SelectList(chuyenDi, "Id", "MaChuyenDi");
            ViewBag.GiangVienSelectList = new SelectList(giangVien, "Id", "TenGiangVien");
            ViewBag.DoanhNghiepSelectList = new SelectList(doanhNghiep, "Id", "TenDoanhNghiep");
            ViewBag.KhoaHocSelectList = new SelectList(khoaHoc, "Id", "MaKhoaHoc");
            ViewBag.KhoaSelectList = new SelectList(khoa, "Id", "TenKhoa");

            var query = _DKTQDNContext.ChuyenDis.Where(t => t.Id == id).FirstOrDefault();
            return View(query);
        }

        [HttpPost]
        public IActionResult EditChuyenDi(ChuyenDi chuyenDi)
        {
            chuyenDi.IsDeleted = 0;
            chuyenDi.CreatedAt = DateTime.Now;
            chuyenDi.CreatedBy = 0;
            chuyenDi.UpdatedBy = 0;
            chuyenDi.UpdatedAt = DateTime.Now;

            _DKTQDNContext.ChuyenDis.Update(chuyenDi);
            _DKTQDNContext.SaveChanges();
            return RedirectToAction("ChuyenDiList");
        }
    }
}
