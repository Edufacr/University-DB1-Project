﻿using System;
using System.Collections.Generic;
using System.Dynamic;
using Microsoft.AspNetCore.Mvc;
using DB1_Project_WEBPORTAL.Models;
using DB1_Project_WEBPORTAL.Models.ModelControllers;

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
        public IActionResult Details(string pDocType, string pDocValue,  int? pUserType)
        {
            //try
            //{
                OwnerModel owner = ownerController.ExcecuteGetOwnersByDocValue(pDocValue, pDocType)[0];

                List<PropertyModel> properties = propertyController.ExecuteGetPropertiesOfOwner(owner);
                ViewData["Properties"] = properties;
                ViewData["UserType"] = pUserType;
                return View(owner);
            //}
            //catch (IndexOutOfRangeException e)
            //{
            return NotFound();
            //}
        }
        
        [HttpGet]
        public IActionResult DetailsLegal(string pDocValue,  int? pUserType)
        {
            //try
            //{
                LegalOwnerModel legalOwner = legalOwnerController.ExecuteGetLegalOwnerByDocValue(pDocValue)[0];
                OwnerModel owner = ownerController.ExcecuteGetOwnersByDocValue(pDocValue, "Cedula Juridica")[0];
                List<PropertyModel> properties = propertyController.ExecuteGetPropertiesOfOwner(owner);
                ViewData["Properties"] = properties;
                ViewData["UserType"] = pUserType;
                return View(legalOwner);
            //}
            //catch (IndexOutOfRangeException e)
            //{
                return NotFound();
            //}
        }
        
        
        
        
    }
}


