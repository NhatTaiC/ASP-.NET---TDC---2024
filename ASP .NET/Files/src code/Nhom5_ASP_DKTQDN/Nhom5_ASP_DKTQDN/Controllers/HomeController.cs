
using Microsoft.AspNetCore.Mvc;
using Nhom5_ASP_DKTQDN.Models;
using System.Diagnostics;
using X.PagedList;

namespace Nhom5_ASP_DKTQDN.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly DKTQDNContext _dKTQDNContext;
        public HomeController(ILogger<HomeController> logger, DKTQDNContext dKTQDN)
        {
            _logger = logger;
            _dKTQDNContext = dKTQDN;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            var list = _dKTQDNContext.TaiKhoans.ToList();
            return View();
        }
        public IActionResult TaiKhoanList()
        {
            var tklist = _dKTQDNContext.TaiKhoans.ToList();
            return View(tklist);
        }
        public IActionResult CreateTaiKhoan()
        {
            //var tklist = _dKTQDNContext.TaiKhoans.ToList();
            return View();
        }
        public IActionResult CreateKhoaHoc()
        {
            //var tklist = _dKTQDNContext.TaiKhoans.ToList();
            return View();
        }
        public IActionResult EditKhoaHoc()
        {
            //var tklist = _dKTQDNContext.TaiKhoans.ToList();
            return View();
        }
      
        public IActionResult DoanhNghiepList(int? page)
        {
            var doanhNghiepList = _dKTQDNContext.DoanhNghieps.ToPagedList(page ?? 1, 10);
            return View(doanhNghiepList);
        }
    
      

        public IActionResult EditTaiKhoan(int id)
        {
            var tklist = _dKTQDNContext.TaiKhoans.FirstOrDefault(tklist => tklist.Id == id);
            return View(tklist);
        }
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
        public IActionResult KhoaHocList()
        {
            var khohocs = _dKTQDNContext.KhoaHocs.ToList();
            return View(khohocs);
        }
    }
}
