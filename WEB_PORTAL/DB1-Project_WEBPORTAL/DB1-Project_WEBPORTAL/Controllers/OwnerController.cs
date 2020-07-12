using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Runtime.InteropServices;
using Microsoft.AspNetCore.Mvc;
using DB1_Project_WEBPORTAL.Models;
using DB1_Project_WEBPORTAL.Models.ModelControllers;
using Microsoft.VisualBasic;

namespace DB1_Project_WEBPORTAL.Controllers
{
    public class OwnerController : Controller
    {

        private OwnerModelController ownerController = OwnerModelController.getInstance();
        private PropertyModelController propertyController = PropertyModelController.getInstance();
        private LegalOwnerModelController legalOwnerController = LegalOwnerModelController.getInstance();
        
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
            List<DocTypeModel> types =  ownerController.GetDocIdTypes();

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
        
        [HttpGet]
        public IActionResult CreateLegal()
        {
            List<DocTypeModel> types =  ownerController.GetDocIdTypes();

            ViewData["Types"] = types;
            
            return View();
            
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult CreateLegal([Bind] LegalOwnerModel owner)
        {
            
            if (ModelState.IsValid)
            {
                int insertion = legalOwnerController.ExecuteInsertLegalOwner(owner);
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

            List<DocTypeModel> types = ownerController.GetDocIdTypes();

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
        
        public IActionResult EditLegal(string pDocValue)
        {
            
            LegalOwnerModel owner = legalOwnerController.ExecuteGetLegalOwnerByDocValue(pDocValue)[0];
            
            if(owner == null)
            {
                return NotFound();
            }

            List<DocTypeModel> types = ownerController.GetDocIdTypes();

            ViewData["Types"] = types;
            ViewData["DocValue"] = pDocValue;

            return View(owner);
            
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult EditLegal([Bind] LegalOwnerModel pOwner)
        {

            if (ModelState.IsValid)
            {
                legalOwnerController.ExecuteUpdateLegalOwner(pOwner);
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
        public IActionResult DeleteOwner(OwnerModel owner)
        {
            ownerController.ExecuteDeleteOwner(owner);
            return RedirectToAction("Index");
        }
        
        [HttpGet]
        public IActionResult Details(string pDocType, string pDocValue,  int? pRequestType)
        {
            try
            {
                OwnerModel owner = ownerController.ExcecuteGetOwnersByDocValue(pDocValue, pDocType)[0];
                if (owner.DocType == "Cedula Juridica")
                {
                    return RedirectToAction("DetailsLegal", new {pDocValue = owner.DocValue, pRequestType = 1});
                }
                List<PropertyModel> properties = propertyController.ExecuteGetPropertiesOfOwner(owner);
                ViewData["Properties"] = properties;
                ViewData["RequestType"] = pRequestType;
                return View(owner);
            }
            catch (IndexOutOfRangeException e)
            {
                return NotFound();
            }
        }
        
        [HttpGet]
        public IActionResult DetailsLegal(string pDocValue,  int? pRequestType)
        {
            try
            {
                LegalOwnerModel legalOwner = legalOwnerController.ExecuteGetLegalOwnerByDocValue(pDocValue)[0];
                OwnerModel owner = ownerController.ExcecuteGetOwnersByDocValue(pDocValue, "Cedula Juridica")[0];
                List<PropertyModel> properties = propertyController.ExecuteGetPropertiesOfOwner(owner);
                ViewData["Properties"] = properties;
                ViewData["RequestType"] = pRequestType;
                return View(legalOwner);
            }
            catch (IndexOutOfRangeException e)
            {
                return NotFound();
            }
        }

        [HttpGet]
        public IActionResult InsertProperty(string pDocValue, string pDocType)
        {

            ViewData["Properties"] = propertyController.ExecuteGetActiveProperties();
            
            OwnerPropertyModel model = new OwnerPropertyModel();
            model.DocValue = pDocValue;
            model.DocType = pDocType;
            
            return View(model);
        }
        
        
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult InsertProperty([Bind] OwnerPropertyModel pRelation)
        {
            
            if (ModelState.IsValid)
            {
                int insertion = ownerController.ExecuteInsertOwnerOfProperty(pRelation);
                if (insertion < 0) Console.Write("ERROR");
            }

            return RedirectToAction("Details",
                new {pDocType = pRelation.DocType, pDocValue = pRelation.DocValue, pRequestType = 3});
        }
        
        public IActionResult DeleteProperty(string pDocType, string pDocValue, int pPropertyNumber)
        {
            OwnerPropertyModel relation = new OwnerPropertyModel();
            relation.DocType = pDocType;
            relation.DocValue = pDocValue;
            relation.PropertyNumber = pPropertyNumber;
            ownerController.ExecuteDeleteOwnerOfProperty(relation);
            
            return RedirectToAction("Details",
                new {pDocType = relation.DocType, pDocValue = relation.DocValue, pRequestType = 1});
        }
        
        
    }
}


