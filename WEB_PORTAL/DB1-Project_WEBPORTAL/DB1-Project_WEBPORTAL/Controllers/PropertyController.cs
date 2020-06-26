using System;
using System.Collections.Generic;
using DB1_Project_WEBPORTAL.Models;
using DB1_Project_WEBPORTAL.Models.ModelControllers;
using Microsoft.AspNetCore.Mvc;

namespace DB1_Project_WEBPORTAL.Controllers
{
    public class PropertyController : Controller
    {
        
        private OwnerModelController ownerController = OwnerModelController.getInstance();
        private PropertyModelController propertyController = PropertyModelController.getInstance();
        private UserModelController userController = UserModelController.getInstance();
        
        private ConsumptionChargeConceptModelController ConsumptionCcController = 
            (ConsumptionChargeConceptModelController)ConsumptionChargeConceptModelController.getInstance();
        private FixedConceptChargeModelController FixedCcController = 
            (FixedConceptChargeModelController)FixedConceptChargeModelController.getInstance();
        private PercentageChargeConceptModelController PercentageCcController = 
            (PercentageChargeConceptModelController)PercentageChargeConceptModelController.getInstance();
        private MIConceptChargeModelController MoratoryInterestsCcController = 
            (MIConceptChargeModelController)MIConceptChargeModelController.getInstance();
        
        // GET
        public IActionResult Index()
        {
            List<PropertyModel> properties = propertyController.ExecuteGetActiveProperties();
            
            return View(properties);
        }
        
         [HttpGet]
        public IActionResult Create()
        {
            
            return View();
            
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind] PropertyModel property)
        {
            
            if (ModelState.IsValid)
            {
                int insertion = propertyController.ExecuteInsertProperty(property);
                if (insertion < 0) Console.Write("ERROR");
                return RedirectToAction("Index");
            }

            return View(property);
        }
        
        public IActionResult Edit(int pPropertyNumber)
        {
            
            PropertyModel property = propertyController.ExecuteGetPropertyInfoByPropertyNumber(pPropertyNumber)[0];
            
            if(property == null)
            {
                return NotFound();
            }
            
            return View(property);
            
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit([Bind] PropertyModel pProperty)
        {

            if (ModelState.IsValid)
            {
                int result =  propertyController.ExecuteUpdateProperty(pProperty.PropertyNumber, pProperty);
                if (result < 0)
                {
                    Console.Write("ERROR");
                }
                return RedirectToAction("Index");
            }
            return  NotFound();
        }
        
        public IActionResult Delete(int pPropertyNumber)
        {
            
            PropertyModel property = propertyController.ExecuteGetPropertyInfoByPropertyNumber(pPropertyNumber)[0];
            
            if(property == null)
            {
                return NotFound();
            }
            return View(property);
        }
        
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(PropertyModel pProperty)
        {
            propertyController.ExecuteDeleteProperty(pProperty);
            return RedirectToAction("Index");
        }
        
        
        
        [HttpGet]
        public IActionResult Details(int pPropertyNumber)
        {
            
            PropertyModel property = propertyController.ExecuteGetPropertyInfoByPropertyNumber(pPropertyNumber)[0];
            
            List<OwnerModel> owners = ownerController.ExecuteGetOwnersOfProperty(property);
            List<UserModel> users = userController.ExecuteGetUsersOfProperty(property);
            
            /*
            List<CC_onPropertyModel> consumptionCcs =
                ConsumptionCcController.ExecuteGetCCsOnProperty(property);
            List<CC_onPropertyModel> percentageCcs = 
                PercentageCcController.ExecuteGetCCsOnProperty(property);
            List<CC_onPropertyModel>  moratoryCcs =  
                MoratoryInterestsCcController.ExecuteGetCCsOnProperty(property);
            List<CC_onPropertyModel> fixedCcs = 
                FixedCcController.ExecuteGetCCsOnProperty(property);*/
            
            if (property == null)
            {
                return NotFound();
            }
            
            ViewData["Owners"] = owners;
            ViewData["Users"] = users;
            /*
            ViewData["ConsumptionCCs"] = consumptionCcs;
            ViewData["PercentageCCs"] = percentageCcs;
            ViewData["MoratoryIntsCCs"] = moratoryCcs;
            ViewData["FixedCCs"] = fixedCcs;
            */
            
            return View(property);
        }
        
    }
}