using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Nhom5_ASP_DKTQDN.Models;
using System.Diagnostics;
using X.PagedList;

namespace Nhom5_ASP_DKTQDN.Controllers
{
    public class ChuyenDiController : Controller
    {
        private readonly ILogger<ChuyenDiController> _logger;
        private readonly DKTQDNContext _DKTQDNContext;
        private readonly IWebHostEnvironment _webHostEnvironment;
        private readonly UserManager<ApplicationUser> _userManager;

        public ChuyenDiController(ILogger<ChuyenDiController> logger, DKTQDNContext dKTQDNContext, IWebHostEnvironment webHostEnvironment, UserManager<ApplicationUser> userManager)
        {
            _logger = logger;
            _DKTQDNContext = dKTQDNContext;
            _webHostEnvironment = webHostEnvironment;
            _userManager = userManager;
        }
        [Authorize]
        public IActionResult ViewDangKyChuyenDi()
        {

            string? email = _userManager.GetUserName(User) ?? string.Empty;
            var sinhvien = _DKTQDNContext.SinhViens.FirstOrDefault(sv => sv.Email == email);
            int idKhoa = (int)sinhvien.IdKhoa;
            var chuyenDi = _DKTQDNContext.ChuyenDis.Where(cd => cd.IsDeleted == 0 && cd.TrangThai == 0 && cd.IdKhoa == idKhoa)
                                                   .Include(dn => dn.IdDoanhNghiepNavigation)
                                                   .Include(dn => dn.IdGiangVienNavigation)
                                                   .Include(dn => dn.IdKhoaHocNavigation).ToList();

            var soNguoiDangKy = _DKTQDNContext.ChiTietDangKies
                                       .Where(dk => dk.IsDeleted == 0)
                                       .GroupBy(dk => dk.IdChuyenDi)
                                       .Select(g => new
                                       {
                                           IdChuyenDi = g.Key,
                                           SoNguoiDaDangKy = g.Count()
                                       }).ToList();

            // Gán số người đã đăng ký vào các chuyến đi
            foreach (var cd in chuyenDi)
            {
                cd.SoNguoiDaDangKy = soNguoiDangKy
                                        .FirstOrDefault(s => s.IdChuyenDi == cd.Id)?.SoNguoiDaDangKy ?? 0;
            }
            ViewBag.hehe = sinhvien.TenSinhVien;

            return View(chuyenDi);
        }
        //public async Task RegisterAsync(string username, string password)
        //{
        //    var user = new ApplicationUser { UserName = username };
        //    var result = await _userManager.CreateAsync(user, password);

        //    if (!result.Succeeded)
        //    {
        //        // Ghi log hoặc xử lý lỗi nếu việc tạo tài khoản không thành công
        //        _logger.LogError("Không thể tạo tài khoản cho {Username}: {Errors}", username, string.Join(", ", result.Errors.Select(e => e.Description)));
        //    }
        //}

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
        [Authorize]
        public IActionResult ChuyenDiList(int? page)
        {
            var chuyenDi = _DKTQDNContext.ChuyenDis.Include(gv => gv.IdGiangVienNavigation)
                                                   .Include(gv => gv.IdDoanhNghiepNavigation)
                                                   .Include(gv => gv.IdKhoaHocNavigation)
                                                   .Include(gv => gv.IdKhoaNavigation)
                                                   .Where(cd => cd.IsDeleted == 0)
                                                   .ToPagedList(page ?? 1, 10);
            return View(chuyenDi);
        }

        //Thêm chuyen di
        [Authorize]
        public IActionResult CreateChuyenDi()
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


            return View();
        }

        [HttpPost]
        public IActionResult CreateChuyenDi(ChuyenDi chuyenDi)
        {
            chuyenDi.TrangThai = 0;
            chuyenDi.IsDeleted = 0;
            chuyenDi.CreatedAt = DateTime.Now.Date;
            chuyenDi.CreatedBy = 0;
            chuyenDi.UpdatedBy = 0;
            chuyenDi.UpdatedAt = DateTime.Now.Date;

            _DKTQDNContext.ChuyenDis.Add(chuyenDi);
            _DKTQDNContext.SaveChanges();
            TempData["successMessageCreateChuyenDi"] = "hehe";
            return RedirectToAction("ChuyenDiList");
        }

        [Authorize]
        public IActionResult DeleteChuyenDi(int id)
        {
            var chuyenDi = _DKTQDNContext.ChuyenDis.Where(t => t.Id == id).FirstOrDefault();
            //_DKTQDNContext.Remove(chuyenDi);
            chuyenDi.IsDeleted = 1;
            _DKTQDNContext.SaveChanges();
            TempData["successMessageDeleteChuyenDi"] = "hehe";
            return RedirectToAction("ChuyenDiList");
        }

        [Authorize]
        public IActionResult EditChuyenDi(int id)
        {
            //var chuyenDi = _DKTQDNContext.ChuyenDis.ToList();
            var giangVien = _DKTQDNContext.GiangViens.ToList();
            var doanhNghiep = _DKTQDNContext.DoanhNghieps.ToList();
            var khoa = _DKTQDNContext.Khoas.ToList();
            var khoaHoc = _DKTQDNContext.KhoaHocs.ToList();

            //ViewBag.ChuyenDiSelectList = new SelectList(chuyenDi, "Id", "MaChuyenDi");
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
            chuyenDi.CreatedAt = DateTime.Now.Date;
            chuyenDi.CreatedBy = 0;
            chuyenDi.UpdatedBy = 0;
            chuyenDi.UpdatedAt = DateTime.Now.Date;

            _DKTQDNContext.ChuyenDis.Update(chuyenDi);
            _DKTQDNContext.SaveChanges();
            TempData["successMessageUpdateChuyenDi"] = "hehe";
            return RedirectToAction("ChuyenDiList");
        }
    }
}
