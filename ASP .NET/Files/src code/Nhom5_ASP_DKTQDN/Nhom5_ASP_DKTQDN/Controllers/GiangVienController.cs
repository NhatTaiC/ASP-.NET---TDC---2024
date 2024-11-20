using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Nhom5_ASP_DKTQDN.Models;
using X.PagedList;

namespace Nhom5_ASP_DKTQDN.Controllers
{
    public class GiangVienController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly DKTQDNContext _DKTQDNContext;
        private readonly IWebHostEnvironment _webHostEnvironment;

        public GiangVienController(ILogger<HomeController> logger, DKTQDNContext dKTQDNContext, IWebHostEnvironment webHostEnvironment)
        {
            _logger = logger;
            _DKTQDNContext = dKTQDNContext;
            _webHostEnvironment = webHostEnvironment;
        }

        public IActionResult Index()
        {
            return View();
        }

		[Authorize]
		//Hiện danh sách giảng viên
		public IActionResult GiangVienList(int? page)
		{
            var giangVien = _DKTQDNContext.GiangViens.Include(id => id.IdKhoaNavigation).ToPagedList(page ?? 1, 10);
            return View(giangVien);
        }

        //Thêm giảng viên
        public IActionResult CreateGiangVien()
        {
            var Khoa = _DKTQDNContext.Khoas.ToList();
            ViewBag.KhoaSelectList = new SelectList(Khoa, "Id", "TenKhoa");
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
			var Khoa = _DKTQDNContext.Khoas.ToList();
			ViewBag.KhoaSelectList = new SelectList(Khoa, "Id", "TenKhoa");
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
    }
}
