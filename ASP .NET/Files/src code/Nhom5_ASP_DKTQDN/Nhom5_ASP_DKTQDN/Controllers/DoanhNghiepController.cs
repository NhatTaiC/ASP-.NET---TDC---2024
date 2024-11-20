using Microsoft.AspNetCore.Mvc;
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
            var doanhNghiepList = _dKTQDNContext.DoanhNghieps
                .Where(dn => dn.IsDeleted == 0)
                .ToPagedList(page ?? 1, 10);
            return View(doanhNghiepList);
        }
        [HttpPost]
        public IActionResult CreateDoanhNghiep(DoanhNghiep obj)
        {
            obj.IsDeleted = 0;
            obj.CreatedBy = 0;
            obj.CreatedAt = DateTime.Now;
            obj.UpdatedBy = 0;
            obj.UpdatedAt = DateTime.Now;

            _dKTQDNContext.Add(obj);
            _dKTQDNContext.SaveChanges();
            TempData["successMessageCreateDoanhNghiep"] = "hehe";
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
                //_dKTQDNContext.DoanhNghieps.Remove(obj);
                obj.IsDeleted = 1;
                _dKTQDNContext.SaveChanges();
            }
            TempData["successMessageDeleteDoanhNghiep"] = "hehe";
            return RedirectToAction("DoanhNghiepList");
        }
        [HttpPost]
        public IActionResult EditDoanhNghiep(DoanhNghiep giangVien)
        {
            giangVien.IsDeleted = 0;
            giangVien.CreatedBy = 0;
            giangVien.CreatedAt = DateTime.Now;
            giangVien.UpdatedBy = 0;
            giangVien.UpdatedAt = DateTime.Now;

            _dKTQDNContext.DoanhNghieps.Update(giangVien);
            _dKTQDNContext.SaveChanges();
            TempData["successMessageUpdateDoanhNghiep"] = "hehe";
            return RedirectToAction("DoanhNghiepList", "DoanhNghiep");
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
