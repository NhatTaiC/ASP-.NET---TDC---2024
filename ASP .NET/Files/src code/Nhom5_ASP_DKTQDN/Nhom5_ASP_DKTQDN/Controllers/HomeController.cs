using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Nhom5_ASP_DKTQDN.Models;
using System.Diagnostics;

namespace Nhom5_ASP_DKTQDN.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly DKTQDNContext _dKTQDNContext;
        private readonly UserManager<ApplicationUser> _userManager;
        public HomeController(ILogger<HomeController> logger, DKTQDNContext dKTQDN, UserManager<ApplicationUser> userManager)
        {
            _logger = logger;
            _dKTQDNContext = dKTQDN;
            _userManager = userManager;
        }

        public IActionResult Index()
        {
            var query = _dKTQDNContext.SinhViens.SingleOrDefault(sv => sv.Email == _userManager.GetUserName(User));

            if (query == null)
            {
               TempData["checkRole"] = "hehe";
            }

            return View();
        }

        //public IActionResult Privacy()
        //{
        //    var list = _dKTQDNContext.TaiKhoans.ToList();
        //    return View();
        //}
        //public IActionResult TaiKhoanList()
        //{
        //    var tklist = _dKTQDNContext.TaiKhoans.ToList();
        //    return View(tklist);
        //}
        //public IActionResult CreateTaiKhoan()
        //{
        //    //var tklist = _dKTQDNContext.TaiKhoans.ToList();
        //    return View();
        //}

        //public IActionResult EditTaiKhoan(int id)
        //{
        //    var tklist = _dKTQDNContext.TaiKhoans.FirstOrDefault(tklist => tklist.Id == id);
        //    return View(tklist);
        //}
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

    }
}
