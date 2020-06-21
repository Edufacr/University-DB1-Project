using Microsoft.AspNetCore.Mvc;

namespace DB1_Project_WEBPORTAL.Controllers
{
    public class OwnerController : Controller
    {
        // GET
        public IActionResult Index()
        {
            return View();
        }
    }
}