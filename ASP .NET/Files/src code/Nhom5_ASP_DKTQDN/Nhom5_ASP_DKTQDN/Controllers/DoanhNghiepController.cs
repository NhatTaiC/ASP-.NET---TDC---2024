using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Nhom5_ASP_DKTQDN.Models;
using System.Diagnostics;

namespace Nhom5_ASP_DKTQDN.Controllers
{
    public class DoanhNghiepController : Controller
    {
        private readonly ILogger<DoanhNghiepController> _logger;
        private readonly DKTQDNContext _DKTQDNContext;
        private readonly IWebHostEnvironment _webHostEnvironment;

        public DoanhNghiepController(ILogger<DoanhNghiepController> logger, DKTQDNContext dKTQDNContext, IWebHostEnvironment webHostEnvironment)
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

        //Hiện danh sách doanh nghiep
        public IActionResult DoanhNghiepList()
        {
            var doanhNghiep = _DKTQDNContext.DoanhNghieps.ToList();
            return View(doanhNghiep);
        }

        //Thêm doanh nghiep
        public IActionResult CreateDoanhNghiep()
        {
            var doanhNghiep = _DKTQDNContext.DoanhNghieps.ToList();
            ViewBag.DoanhNghiepSelectList= new SelectList(doanhNghiep, "Id", "TenDoanhNghiep");
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
    }
     
}
