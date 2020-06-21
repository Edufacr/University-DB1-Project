using Microsoft.AspNetCore.Mvc;

namespace DB1_Project_WEBPORTAL.Controllers
{
    public class PropertyController : Controller
    {
        // GET
        public IActionResult Index()
        {
            return View();
        }
    }
}