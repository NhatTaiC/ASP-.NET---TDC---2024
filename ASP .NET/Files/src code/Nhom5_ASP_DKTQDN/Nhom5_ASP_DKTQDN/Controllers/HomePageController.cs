using Microsoft.AspNetCore.Mvc;

namespace Nhom5_ASP_DKTQDN.Controllers
{
    public class HomePageController : Controller
    {
        public IActionResult HomePage()
        {
            return View();
        }
    }
}
