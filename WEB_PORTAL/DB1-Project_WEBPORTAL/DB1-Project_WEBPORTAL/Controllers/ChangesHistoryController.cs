using System;
using System.Collections.Generic;
using DB1_Project_WEBPORTAL.Models;
using Microsoft.AspNetCore.Mvc;

namespace DB1_Project_WEBPORTAL.Controllers
{
    public class ChangesHistoryController : Controller
    {
        // GET
        public IActionResult Index()
        {
            
            List<ChangeModel> changes = new List<ChangeModel>();
            ChangeModel change = new ChangeModel();
            change.changeIp = "Test";
            change.changeUser = "Test";
            change.entityType = "Usuario";
            change.jsonAfter = "Some json";
            change.jsonBefore = "Some json";
            change.changeDateTime = DateTime.Today;
            changes.Add(change);
            return View(changes);
        }
        
        [HttpGet]
        public IActionResult Details(ChangeModel pChange)
        {
            return View(pChange);
        }
        
    }
}