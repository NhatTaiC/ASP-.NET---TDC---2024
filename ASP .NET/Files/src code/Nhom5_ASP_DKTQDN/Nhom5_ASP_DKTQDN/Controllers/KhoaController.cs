using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
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

        [Authorize]
        public IActionResult KhoaList(int? page)
        {
            var khoaList = _dKTQDNContext.Khoas.Where(cc => cc.IsDeleted == 0).ToPagedList(page ?? 1, 10);
            return View(khoaList);
        }

        public IActionResult DeleteKhoa(int id)
        {
            Khoa obj = _dKTQDNContext.Khoas.SingleOrDefault(d => d.Id == id);
            if (obj != null)
            {
                obj.IsDeleted = 1;
                _dKTQDNContext.SaveChanges();
            }
            TempData["SuccessMessageDeleteKhoa"] = "hehe";
            return RedirectToAction("KhoaList", "Khoa");
        }

        [Authorize]
        public IActionResult EditKhoa(int? id)
        {
            Khoa objKhoa = _dKTQDNContext.Khoas.FirstOrDefault(d => d.Id == id && d.IsDeleted == 0);
            return View(objKhoa);
        }

        [HttpPost]
        public IActionResult EditKhoa(Khoa obj)
        {
            obj.IsDeleted = 0;
            obj.CreatedBy = 0;
            obj.CreatedAt = DateTime.Now;
            obj.UpdatedBy = 0;
            obj.UpdatedAt = DateTime.Now;

            _dKTQDNContext.Update(obj);
            _dKTQDNContext.SaveChanges();
            TempData["SuccessMessageUpdateKhoa"] = "hehe";
            return RedirectToAction("KhoaList");
        }

        [HttpPost]
        public IActionResult CreateKhoa(Khoa obj)
        {
            obj.IsDeleted = 0;
            obj.CreatedBy = 0;
            obj.CreatedAt = DateTime.Now;
            obj.UpdatedBy = 0;
            obj.UpdatedAt = DateTime.Now;

            _dKTQDNContext.Add(obj);
            _dKTQDNContext.SaveChanges();
            TempData["SuccessMessageCreateKhoa"] = "hehe";
            return RedirectToAction("KhoaList");
        }

        [Authorize]
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
