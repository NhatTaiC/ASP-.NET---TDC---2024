using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Nhom5_ASP_DKTQDN.Models;
using X.PagedList;

namespace Nhom5_ASP_DKTQDN.Controllers
{
    public class KhoaHocController : Controller
    {
        private readonly ILogger<KhoaHocController> _logger;
        private readonly DKTQDNContext _DKTQDNContext;
        //private readonly IWebHostEnvironment _webHostEnvironment;
        public KhoaHocController(ILogger<KhoaHocController> logger, DKTQDNContext dKTQDNContext/*, IWebHostEnvironment webHostEnvironment*/)
        {
            _logger = logger;
            _DKTQDNContext = dKTQDNContext;
            //_webHostEnvironment = webHostEnvironment;
        }
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult CreateKhoaHoc()
        {
            //var tklist = _dKTQDNContext.TaiKhoans.ToList();
            return View();
        }
        [HttpPost]
        public IActionResult CreateKhoaHoc(KhoaHoc khoahoc)
        {
            var val = _DKTQDNContext.KhoaHocs.FirstOrDefault(x => x.MaKhoaHoc == khoahoc.MaKhoaHoc && x.IsDeleted == 0);
            if (val == null) 
            {
                khoahoc.IsDeleted = 0;
                khoahoc.CreatedAt = DateTime.Now;
                khoahoc.CreatedBy = 0;
                khoahoc.UpdatedBy = 0;
                khoahoc.UpdatedAt = DateTime.Now;
                _DKTQDNContext.KhoaHocs.Add(khoahoc);
                _DKTQDNContext.SaveChanges();
                TempData["SuccessMessageCreate"] = "hehe";
                return RedirectToAction("KhoaHocList", "KhoaHoc");
            }
            else
            {
                TempData["ErrorMessageCreate"] = "hehe";
                return View();
            }
           
            
        }
        [HttpPost]
        public IActionResult EditKhoaHoc(KhoaHoc khoahoc)
        {
            var val = _DKTQDNContext.KhoaHocs.FirstOrDefault(x => x.MaKhoaHoc == khoahoc.MaKhoaHoc && x.IsDeleted == 0 && x.Id != khoahoc.Id);
            if (val == null)
            {
                var resuft = _DKTQDNContext.KhoaHocs.FirstOrDefault(x => x.Id == khoahoc.Id && x.IsDeleted == 0);
                if (resuft != null)
                {
                    resuft.UpdatedBy = 0;
                    resuft.UpdatedAt = DateTime.Now;
                    resuft.MaKhoaHoc = khoahoc.MaKhoaHoc;
                    resuft.NamBatDau = khoahoc.NamBatDau;
                    resuft.NamKetThuc = khoahoc.NamKetThuc;
                    _DKTQDNContext.SaveChanges();
                    TempData["SuccessMessageUpdate"] = "hehe";
                    return RedirectToAction("KhoaHocList", "KhoaHoc");
                }
                else
                {
                    TempData["ErrorMessageUpdate"] = "hehe";
                    return View();
                }
             
               
            }
            else
            {
                TempData["ErrorMessageUpdate"] = "hehe";
                return View();
            }


        }
        public IActionResult EditKhoaHoc(int id)
        {
            //var tklist = _dKTQDNContext.TaiKhoans.ToList
            var khohocs = _DKTQDNContext.KhoaHocs.FirstOrDefault(kh => kh.Id == id);
            return View(khohocs);
        }
        public IActionResult KhoaHocList(int? page)
        {
            var khohocs = _DKTQDNContext.KhoaHocs.Where(obj => obj.IsDeleted == 0).ToPagedList(page ?? 1, 10);
            return View(khohocs);
        }
        public IActionResult DeleteKhoaHoc(int id)
        {
            var khohocs = _DKTQDNContext.KhoaHocs.FirstOrDefault(kh=>kh.Id == id);
            if (khohocs != null)
            {
                khohocs.IsDeleted = 1;
                _DKTQDNContext.SaveChanges();
                TempData["SuccessMessageDelete"] = "hehe";
            }
            return RedirectToAction("KhoaHocList", "KhoaHoc");
        }
    }
}
