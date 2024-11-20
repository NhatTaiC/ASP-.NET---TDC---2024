using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Nhom5_ASP_DKTQDN.Models;
using System.Diagnostics;
using X.PagedList;

namespace Nhom5_ASP_DKTQDN.Controllers
{
    public class KhoaController : Controller
    {
        private readonly ILogger<KhoaController> _logger;
        private readonly DKTQDNContext _dKTQDNContext;
        public KhoaController(ILogger<KhoaController> logger, DKTQDNContext dKTQDN)
        {
            _logger = logger;
            _dKTQDNContext = dKTQDN;
        }

        public IActionResult KhoaList(int? page)
        {
            var khoaList = _dKTQDNContext.Khoas.ToPagedList(page ?? 1, 10);
            return View(khoaList);
        }
        public IActionResult DeleteKhoa(int id)
        {
            Khoa obj = _dKTQDNContext.Khoas.SingleOrDefault(d => d.Id == id);
            if (obj != null)
            {
                _dKTQDNContext.Khoas.Remove(obj);
                _dKTQDNContext.SaveChanges();
            }
            return RedirectToAction("KhoaList");
        }
        [HttpPost]
        public IActionResult EditKhoa(Khoa giangVien)
        {
            _dKTQDNContext.Khoas.Update(giangVien);
            _dKTQDNContext.SaveChanges();
            return RedirectToAction("KhoaList");
        }
        public IActionResult EditKhoa(int? id)
        {
            Khoa objKhoa = _dKTQDNContext.Khoas.FirstOrDefault(d => d.Id == id);
            return View(objKhoa);
        }
        
        [HttpPost]
        public IActionResult CreateKhoa(Khoa obj)
        {
            _dKTQDNContext.Add(obj);
            _dKTQDNContext.SaveChanges();
            return RedirectToAction("KhoaList");
        }
        public IActionResult CreateKhoa()
        {
            return View();
        }
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }

}
