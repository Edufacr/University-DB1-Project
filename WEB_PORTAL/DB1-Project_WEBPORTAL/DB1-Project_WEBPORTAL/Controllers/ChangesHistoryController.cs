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

        public IActionResult Index()
        {
            List<ChangeModel> changes;
            changes = controller.ExecuteGetChanges();

            return View(changes);
        }

        [HttpGet]
        public IActionResult Filter()
        {
            List<EntityTypeModel> entities = controller.ExecuteGetEntityTypes();
            ViewData["Entities"] = entities;
            return View();
        }
        
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Filter([Bind] FilterModel filter)
        {
            controller.AddParametersToGetChanges(filter);
            return RedirectToAction("Index");
        }
        
        [HttpGet]
        public IActionResult Details(string pJsonBefore, string pJsonAfter)
        {

            ViewData["jsonAfter"] = pJsonAfter;
            ViewData["jsonBefore"] = pJsonBefore;
            
            return View();
        }
        
    }
}