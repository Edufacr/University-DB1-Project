using System;
using System.Collections.Generic;
using DB1_Project_WEBPORTAL.Models;
using DB1_Project_WEBPORTAL.Models.ModelControllers;
using Microsoft.AspNetCore.Mvc;

namespace DB1_Project_WEBPORTAL.Controllers
{
    public class ChangesHistoryController : Controller
    {

        ChangeModelController controller = ChangeModelController.getInstance();

        // GET
        public IActionResult Index()
        {

            List<ChangeModel> changes = controller.ExecuteGetChanges();
            return View(changes);
        }
        
        [HttpGet]
        public IActionResult Details(ChangeModel pChange)
        {
            return View(pChange);
        }
        
    }
}