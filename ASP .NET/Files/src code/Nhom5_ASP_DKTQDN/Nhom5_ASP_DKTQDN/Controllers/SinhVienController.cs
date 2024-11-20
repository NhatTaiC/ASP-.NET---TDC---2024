using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Nhom5_ASP_DKTQDN.Models;
using X.PagedList;

namespace Nhom5_ASP_DKTQDN.Controllers
{
    public class SinhVienController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly DKTQDNContext _DKTQDNContext;
        private readonly IWebHostEnvironment _webHostEnvironment;
        private readonly UserManager<ApplicationUser> _userManager;
        public SinhVienController(ILogger<HomeController> logger, DKTQDNContext dKTQDNContext, IWebHostEnvironment webHostEnvironment, UserManager<ApplicationUser> userManager)
        {
            _logger = logger;
            _DKTQDNContext = dKTQDNContext;
            _webHostEnvironment = webHostEnvironment;
            _userManager = userManager;
        }

        public IActionResult Index()
        {
            return View();
        }

        [Authorize]
        public IActionResult SinhVienList(int? page)
        {
            var sinhVien = _DKTQDNContext.SinhViens.Where(sv => sv.IsDeleted == 0)
                .Include(oj => oj.IdKhoaNavigation)
                .Include(id => id.IdTaiKhoanNavigation)
                .Include(makhoa => makhoa.IdKhoaHocNavigation)
                .ToPagedList(page ?? 1, 10);
            return View(sinhVien);
        }

        public IActionResult CreateSinhVien()
        {
            var Khoa = _DKTQDNContext.Khoas.ToList();
            ViewBag.KhoaSelectList = new SelectList(Khoa, "Id", "TenKhoa");
            //var taiKhoan = _DKTQDNContext.TaiKhoans.ToList();
            //ViewBag.TaiKhoanSelectList = new SelectList(taiKhoan, "Id", "TenTaiKhoan");
            var khoaHoc = _DKTQDNContext.KhoaHocs.ToList();
            ViewBag.KhoaHocsSelectList = new SelectList(khoaHoc, "Id", "MaKhoaHoc");

            return View();
        }

        [HttpPost]
        public IActionResult CreateSinhVien(SinhVien sinhVien)
        {
            if (sinhVien.Email != "admin@mail.com" && sinhVien.Email != "admin@gmail.com")
            {
                _userManager.CreateAsync(new ApplicationUser
                {
                    UserName = sinhVien.Email,
                    Email = sinhVien.Email
                }, "User@123");

                sinhVien.IdTaiKhoan = 2;
                sinhVien.IsDeleted = 0;
                sinhVien.CreatedBy = 0;
                sinhVien.CreatedAt = DateTime.Now;
                sinhVien.UpdatedBy = 0;
                sinhVien.UpdatedAt = DateTime.Now;

                _DKTQDNContext.SinhViens.Add(sinhVien);
                _DKTQDNContext.SaveChanges();
                TempData["SuccessMessageCreateSV"] = "hehe";
                return RedirectToAction("SinhVienList", "SinhVien");
            }
            TempData["ErrorMessageCreateSV"] = "hehe";
            return RedirectToAction("CreateSinhVien", "SinhVien");
        }

        public IActionResult DeleteSinhVien(int id)
        {
            var sinhVien = _DKTQDNContext.SinhViens.Where(t => t.Id == id).FirstOrDefault();
            sinhVien.IsDeleted = 1;
            _DKTQDNContext.SaveChanges();
            TempData["SuccessMessageDeleteSV"] = "hehe";
            return RedirectToAction("SinhVienList");
        }

        public IActionResult EditSinhVien(int id)
        {
            var Khoa = _DKTQDNContext.Khoas.ToList();
            ViewBag.KhoaSelectList = new SelectList(Khoa, "Id", "TenKhoa");
            var taiKhoan = _DKTQDNContext.TaiKhoans.ToList();
            ViewBag.TaiKhoanSelectList = new SelectList(taiKhoan, "Id", "TenTaiKhoan");
            var khoaHoc = _DKTQDNContext.KhoaHocs.ToList();
            ViewBag.KhoaHocsSelectList = new SelectList(khoaHoc, "Id", "MaKhoaHoc");
            var sinhVien = _DKTQDNContext.SinhViens.Where(t => t.Id == id).FirstOrDefault();
            return View(sinhVien);
        }

        [HttpPost]
        public IActionResult EditSinhVien(SinhVien sinhVien)
        {
            if (sinhVien.Email != "admin@mail.com" && sinhVien.Email != "admin@gmail.com")
            {

                sinhVien.IdTaiKhoan = 2;
                sinhVien.IsDeleted = 0;
                sinhVien.CreatedBy = 0;
                sinhVien.CreatedAt = DateTime.Now;
                sinhVien.UpdatedBy = 0;
                sinhVien.UpdatedAt = DateTime.Now;

                _DKTQDNContext.SinhViens.Update(sinhVien);
                _DKTQDNContext.SaveChanges();
                TempData["SuccessMessageUpdateSV"] = "hehe";
                return RedirectToAction("SinhVienList", "SinhVien");
            }
            TempData["ErrorMessageCreateSV"] = "hehe";
            return RedirectToAction("EditSinhVien", "SinhVien");

        }
    }
}
