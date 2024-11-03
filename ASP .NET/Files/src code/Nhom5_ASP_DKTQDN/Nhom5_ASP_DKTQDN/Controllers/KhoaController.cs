using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Nhom5_ASP_DKTQDN.Models;
using System.Diagnostics;



namespace Nhom5_ASP_DKTQDN.Controllers
{
    public class KhoaController : Controller
    {
        private readonly ILogger<KhoaController> _logger;
        private readonly DKTQDNContext _DKTQDNContext;
        private readonly IWebHostEnvironment _webHostEnvironment;

        public KhoaController(ILogger<KhoaController> logger, DKTQDNContext dKTQDNContext, IWebHostEnvironment webHostEnvironment)
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

        //Hiện danh sách khoa
        public IActionResult KhoaList() {
            var khoa = _DKTQDNContext.Khoas.ToList();
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
