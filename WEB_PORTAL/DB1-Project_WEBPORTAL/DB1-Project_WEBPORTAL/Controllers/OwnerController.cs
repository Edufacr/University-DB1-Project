using System;
using System.Collections.Generic;
using System.Dynamic;
using Microsoft.AspNetCore.Mvc;
using DB1_Project_WEBPORTAL.Models;
using DB1_Project_WEBPORTAL.Models.ModelControllers;

namespace DB1_Project_WEBPORTAL.Controllers
{
    public class OwnerController : Controller
    {

        OwnerModelController ownerController = OwnerModelController.Instance();

        // GET
        public IActionResult Index()
        {
            List<OwnerModel> owners = new List<OwnerModel>();
            owners = ownerController.ExcecuteGetActiveOwners();
            return View(owners);
        }

        [HttpGet]
        public IActionResult Create()
        {
            List<DocTypeModel> types = new List<DocTypeModel>();
            DocTypeModel type = new DocTypeModel();
            type.Name = "Residente";
            types.Add(type);

            ViewData["Types"] = types;
            
            return View();
            
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind] OwnerModel owner)
        {
            
            if (ModelState.IsValid)
            {
                int insertion = ownerController.ExecuteInsertOwner(owner);
                if (insertion < 0) Console.Write("ERROR");
                return RedirectToAction("Index");
            }

            return View(owner);
        }
        
        public IActionResult Edit(string pDocValue, string pDocType)
        {
            
            OwnerModel owner = ownerController.ExcecuteGetOwnersByDocValue(pDocValue, pDocType)[0];
            
            if(owner == null)
            {
                return NotFound();
            }
            
            OwnerUpdateModel updateOwner = new OwnerUpdateModel();
            
            updateOwner.DocValue = pDocValue;
            updateOwner.DocType = pDocType;
            updateOwner.NewDocType = owner.DocType;
            updateOwner.NewDocValue = owner.DocValue;
            updateOwner.NewName = owner.Name;
            
            List<DocTypeModel> types = new List<DocTypeModel>();
            DocTypeModel type = new DocTypeModel();
            type.Name = "Residente";
            types.Add(type);

            ViewData["Types"] = types;
            ViewData["DocValue"] = pDocValue;
            ViewData["DocType"] = pDocType;
            
            return View(updateOwner);
            
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit([Bind] OwnerUpdateModel pOwner)
        {

            if (ModelState.IsValid)
            {
                ownerController.ExecuteUpdateOwner(pOwner);
                return RedirectToAction("Index");
            }
            return View(pOwner);
        }
        
        public IActionResult Delete(string pDocType, string pDocValue)
        {
            
            OwnerModel owner = ownerController.ExcecuteGetOwnersByDocValue(pDocValue, pDocType)[0];
            
            if (owner == null)
            {
                return NotFound();
            }
            return View(owner);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteEmp(OwnerModel owner)
        {
            ownerController.ExecuteDeleteOwner(owner);
            return RedirectToAction("Index");
        }
        
        [HttpGet]
        public IActionResult Details(string pDocType, string pDocValue)
        {
             OwnerModel owner = ownerController.ExcecuteGetOwnersByDocValue(pDocValue, pDocType)[0];
            
            if (owner == null)
            {
                return NotFound();
            }
            return View(owner);
        }
        
        
    }
}


