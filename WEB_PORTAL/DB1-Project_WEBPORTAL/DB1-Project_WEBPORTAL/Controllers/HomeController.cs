using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using DB1_Project_WEBPORTAL.Models;

namespace DB1_Project_WEBPORTAL.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }
        
        public IActionResult Properties()
        {
            return Redirect("/Property/Index");
        }
        
        public IActionResult Owners()
        {
            return Redirect("/Owner/Index");
        }
        
        public IActionResult Users()
        {
            return Redirect("/User/Index");
        }
        
        public IActionResult ChargeConcepts()
        {
            return Redirect("/ChargeConcept/Index");
        }
        
        public IActionResult ChangesHistory()
        {
            return Redirect("/ChangesHistory/Index");
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
