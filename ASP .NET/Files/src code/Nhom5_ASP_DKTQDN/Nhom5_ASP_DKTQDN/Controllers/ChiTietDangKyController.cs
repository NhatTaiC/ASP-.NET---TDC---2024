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
    public class ChiTietDangKyController : Controller
    {
        private readonly ILogger<ChiTietDangKyController> _logger;
        private readonly DKTQDNContext _DKTQDNContext;
        private IWebHostEnvironment _webHostEnvironment;
        private readonly UserManager<ApplicationUser> _userManager;
        public ChiTietDangKyController(ILogger<ChiTietDangKyController> logger, DKTQDNContext dKTQDNContext, IWebHostEnvironment webHostEnvironment, UserManager<ApplicationUser> userManager)
        {
            _logger = logger;
            _DKTQDNContext = dKTQDNContext;
            _webHostEnvironment = webHostEnvironment;
            _userManager = userManager;
        }
        [Authorize]
        public IActionResult DangKyChuyenDi(int id)
        {
            var sinhVien = _DKTQDNContext.SinhViens.FirstOrDefault(x => x.Email == _userManager.GetUserName(User));
            var kiemtrachitietdangky = _DKTQDNContext.ChiTietDangKies.FirstOrDefault(oj => oj.IsDeleted == 0
                                                                            && oj.IdChuyenDi == id
                                                                            && oj.IdSinhVien == sinhVien.Id);
            var chuyendi = _DKTQDNContext.ChuyenDis.FirstOrDefault(oj => oj.IsDeleted == 0
                                                                            && oj.Id == id
                                                                            && oj.TrangThai == 0);

            var soNguoiDangKy = _DKTQDNContext.ChiTietDangKies
                                       .Where(dk => dk.IsDeleted == 0)
                                       .GroupBy(dk => dk.IdChuyenDi)
                                       .Select(g => new
                                       {
                                           IdChuyenDi = g.Key,
                                           SoNguoiDaDangKy = g.Count()
                                       }).ToList();
            int sum = soNguoiDangKy.FirstOrDefault(oj => oj.IdChuyenDi.Equals(id))?.SoNguoiDaDangKy ?? 0;

            if (kiemtrachitietdangky == null)
            {
                if (chuyendi.Slot > sum)
                {
                    ChiTietDangKy ctDangKy = new ChiTietDangKy
                    {
                        IdSinhVien = sinhVien.Id,
                        IdChuyenDi = id,
                        NgayDangKy = DateTime.Now.Date,
                        IsDeleted = 0,
                        CreatedAt = DateTime.Now,
                        CreatedBy = 0,
                        UpdatedAt = DateTime.Now,
                        UpdatedBy = 0,
                    };
                    _DKTQDNContext.ChiTietDangKies.Add(ctDangKy);
                    _DKTQDNContext.SaveChanges();
                    TempData["SuccessMessageDangKy"] = "hehe";
                    return RedirectToAction("ViewDangKyChuyenDi", "ChuyenDi");
                }
                else
                {
                    TempData["dusoluong"] = "hehe";
                    return RedirectToAction("ViewDangKyChuyenDi", "ChuyenDi");
                }

            }
            else
            {
                TempData["ErorrMessageDangKy"] = "hehe";
                return RedirectToAction("ViewDangKyChuyenDi", "ChuyenDi");
            }

        }
        //Hiện danh sách đăng kí
        [Authorize]
        public IActionResult DanhSachDangKi(int id)
        {
            var chiTietDangKy = _DKTQDNContext.ChiTietDangKies.Where(oj => oj.IdChuyenDi == id).Include(sv => sv.IdSinhVienNavigation).ToList();
            return View(chiTietDangKy);
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
        [Authorize]
        public IActionResult ChiTietDangKyList(int? page)
        {
            var chiTietDangKy = _DKTQDNContext.ChiTietDangKies.Include(sv => sv.IdSinhVienNavigation).Include(cd => cd.IdChuyenDiNavigation)
                .Where(ctdk => ctdk.IsDeleted == 0)
                .ToPagedList(page ?? 1, 10);
            return View(chiTietDangKy);
        }

        //Thêm ChiTietDangKy
        [Authorize]
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
            TempData["successMessageCreateChiTietDangKy"] = "hehe";
            return RedirectToAction("ChiTietDangKyList");
        }
        [Authorize]
        public IActionResult DeleteChiTietDangKy(int id)
        {
            var chiTietDangKy = _DKTQDNContext.ChiTietDangKies.Where(t => t.Id == id).FirstOrDefault();
            chiTietDangKy.IsDeleted = 1;
            _DKTQDNContext.SaveChanges();
            TempData["successMessageDeleteChiTietDangKy"] = "hehe";
            return RedirectToAction("ChiTietDangKyList");
        }
        [Authorize]
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
        public IActionResult EditChiTietDangKy(ChiTietDangKy chiTietDangKy)
        {
            chiTietDangKy.IsDeleted = 0;
            chiTietDangKy.CreatedAt = DateTime.Now;
            chiTietDangKy.CreatedBy = 0;
            chiTietDangKy.UpdatedBy = 0;
            chiTietDangKy.UpdatedAt = DateTime.Now;

            _DKTQDNContext.ChiTietDangKies.Update(chiTietDangKy);
            _DKTQDNContext.SaveChanges();
            TempData["successMessageUpdateChiTietDangKy"] = "hehe";
            return RedirectToAction("ChiTietDangKyList");
        }
    }
}
