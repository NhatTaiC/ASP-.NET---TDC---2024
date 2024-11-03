using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Nhom5_ASP_DKTQDN.Models;
using System.Diagnostics;
using X.PagedList;

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

        //Hiện danh sách doanh nghiep
        public IActionResult DoanhNghiepList(int? page)
        {
            var doanhNghiep = _DKTQDNContext.DoanhNghieps.ToPagedList(page?? 1,4);
            return View(doanhNghiep);
        }

        //Thêm doanh nghiep
        public IActionResult CreateDoanhNghiep()
        {
            var doanhNghiep = _DKTQDNContext.DoanhNghieps.ToList();
            ViewBag.DoanhNghiepSelectList = new SelectList(doanhNghiep, "Id", "TenDoanhNghiep");
            return View();
        }

        [HttpPost]
        public IActionResult CreateDoanhNghiep(DoanhNghiep doanhNghiep)
        {
            _DKTQDNContext.DoanhNghieps.Add(doanhNghiep);
            _DKTQDNContext.SaveChanges();
            return RedirectToAction("DoanhNghiepList");
        }

        //Xóa doanh nghiep
        public IActionResult DeleteDoanhNghiep(int id)
        {
            var doanhNghiep = _DKTQDNContext.DoanhNghieps.Where(t => t.Id == id).FirstOrDefault();
            _DKTQDNContext.Remove(doanhNghiep);
            _DKTQDNContext.SaveChanges();
            return RedirectToAction("DoanhNghiepList");
        }

        //Sửa giảng viên
        public IActionResult EditDoanhNghiep(int id)
        {
            var doanhNghiep = _DKTQDNContext.DoanhNghieps.Where(t => t.Id == id).FirstOrDefault();

            return View(doanhNghiep);
        }

        [HttpPost]
        public IActionResult EditDoanhNghiep(DoanhNghiep doanhNghiep)
        {
            _DKTQDNContext.DoanhNghieps.Update(doanhNghiep);
            _DKTQDNContext.SaveChanges();
            return RedirectToAction("DoanhNghiepList");
        }




        //Hiện danh sách khoa
        public IActionResult KhoaList(int? page)
        {
            var khoa = _DKTQDNContext.Khoas.ToPagedList(page?? 1,10);
            return View(khoa);
        }

        //Them khoa
        public IActionResult CreateKhoa()
        {
            var khoa = _DKTQDNContext.Khoas.ToList();
            ViewBag.KhoaSelectList = new SelectList(khoa, "Id", "TenKhoa");
            return View();
        }
        [HttpPost]

        public IActionResult CreateKhoa(Khoa khoa)
        {
            _DKTQDNContext.Khoas.Add(khoa);
            _DKTQDNContext.SaveChanges();
            return RedirectToAction("KhoaList");
        }


        //XoaKhoa
        public IActionResult DeleteKhoa(int id)
        {
            var khoa = _DKTQDNContext.Khoas.Where(t => t.Id == id).FirstOrDefault();
            _DKTQDNContext.Remove(khoa);
            _DKTQDNContext.SaveChanges();
            return RedirectToAction("KhoaList");
        }

        //SuaKhoa
        public IActionResult EditKhoa(int id)
        {
            var khoa = _DKTQDNContext.Khoas.Where(t => t.Id == id).FirstOrDefault(t => t.Id == id);
            return View(khoa);
        }

        [HttpPost]
        public IActionResult EditKhoa(Khoa khoa)
        {
            _DKTQDNContext.Khoas.Update(khoa);
            _DKTQDNContext.SaveChanges();
            return RedirectToAction("KhoaList");
        }
    }
}
