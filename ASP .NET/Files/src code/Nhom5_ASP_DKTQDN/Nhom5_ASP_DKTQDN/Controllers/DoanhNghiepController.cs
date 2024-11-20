using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Nhom5_ASP_DKTQDN.Models;
using System.Diagnostics;
using X.PagedList;

namespace Nhom5_ASP_DKTQDN.Controllers
{
    public class DoanhNghiepController : Controller
    {
        private readonly ILogger<DoanhNghiepController> _logger;
        private readonly DKTQDNContext _dKTQDNContext;
        public DoanhNghiepController(ILogger<DoanhNghiepController> logger, DKTQDNContext dKTQDN)
        {
            _logger = logger;
            _dKTQDNContext = dKTQDN;
        }
        public IActionResult DoanhNghiepList(int? page)
        {
            var doanhNghiepList = _dKTQDNContext.DoanhNghieps.ToPagedList(page ?? 1, 10);
            return View(doanhNghiepList);
        }
        [HttpPost]
        public IActionResult CreateDoanhNghiep(DoanhNghiep obj)
        {
            _dKTQDNContext.Add(obj);
            _dKTQDNContext.SaveChanges();
            return RedirectToAction("DoanhNghiepList");
        }
        public IActionResult CreateDoanhNghiep()
        {
            return View();
        }
        public IActionResult DeleteDoanhNghiep(int id)
        {
            DoanhNghiep obj = _dKTQDNContext.DoanhNghieps.SingleOrDefault(d => d.Id == id);
            if (obj != null)
            {
                _dKTQDNContext.DoanhNghieps.Remove(obj);
                _dKTQDNContext.SaveChanges();
            }
            return RedirectToAction("DoanhNghiepList");
        }
        [HttpPost]
        public IActionResult EditDoanhNghiep(DoanhNghiep giangVien)
        {
            _dKTQDNContext.DoanhNghieps.Update(giangVien);
            _dKTQDNContext.SaveChanges();
            return RedirectToAction("KhoaList");
        }
        public IActionResult EditDoanhNghiep(int? id)
        {
            DoanhNghiep objDoanhNghiep = _dKTQDNContext.DoanhNghieps.FirstOrDefault(d => d.Id == id);
            return View(objDoanhNghiep);
        }
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
