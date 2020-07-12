using System;
using System.Collections.Generic;
using DB1_Project_WEBPORTAL.Models;
using DB1_Project_WEBPORTAL.Models.ModelControllers;
using Microsoft.AspNetCore.Mvc;

namespace DB1_Project_WEBPORTAL.Controllers
{
    public class ChargeConceptController : Controller
    {
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
            
            List<ConsumptionCcModel> consumptionCcs =
                ConsumptionCcController.ExecuteGetCCs();
            List<PercentageCcModel> percentageCcs = 
                PercentageCcController.ExecuteGetCCs();
            List<MoratoryInterestCcModel>  moratoryCcs =  
                MoratoryInterestsCcController.ExecuteGetCCs();
            List<FixedCcModel> fixedCcs = 
                FixedCcController.ExecuteGetCCs();
            
            ViewData["ConsumptionCCs"] = consumptionCcs;
            ViewData["PercentageCCs"] = percentageCcs;
            ViewData["MoratoryIntsCCs"] = moratoryCcs;
            ViewData["FixedCCs"] = fixedCcs;
            
            return View();
        }
        
        //--------
        //-FIXED -
        //--------
        
        [HttpGet]
        public IActionResult EditFixed(string pCCName)
        {
            FixedCcModel model = FixedCcController.ExecuteGetFixedCCByName(pCCName)[0];
            if (model == null)
            {
                return NotFound();
            }

            return View(model);

        }
        
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult EditFixed( [Bind] FixedCcModel pChangedCC)
        {

            if (ModelState.IsValid)
            {
                int result = FixedCcController.ExecuteUpdateFixedCC(pChangedCC.ChargeConceptName, pChangedCC);
                if (result < 0)
                {
                
                }
                return RedirectToAction("Index");
            }
            
            return  NotFound();
            
        }

        //-------------
        //-CONSUMPTION-
        //-------------
        
        [HttpGet]
        public IActionResult EditConsumption(string pCCName)
        {
            ConsumptionCcModel model = ConsumptionCcController.ExecuteGetConsumptionCCByName(pCCName)[0];
            if (model == null)
            {
                return NotFound();
            }

            return View(model);
        }
        
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult EditConsumption( [Bind] ConsumptionCcModel pChangedCC)
        {

            if (ModelState.IsValid)
            {
                int result = ConsumptionCcController.ExecuteUpdateConsumptionCC(pChangedCC.ChargeConceptName, pChangedCC);
                if (result < 0)
                {
                
                }
                return RedirectToAction("Index");
            }
            
            return  NotFound();
            
        }
        //------------
        //-PERCENTAGE-
        //------------
        
        [HttpGet]
        public IActionResult EditPercentage(string pCCName)
        {
            PercentageCcModel model = PercentageCcController.ExecuteGetPercentageCCByName(pCCName)[0];
            if (model == null)
            {
                return NotFound();
            }

            return View(model);
        }
        
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult EditPercentage([Bind] PercentageCcModel pChangedCC)
        {
            if (ModelState.IsValid)
            {
                int result = PercentageCcController.ExecuteUpdatePercentageCC(pChangedCC.ChargeConceptName, pChangedCC);
                if (result < 0)
                {
                
                }
                return RedirectToAction("Index");
            }
            
            return  NotFound();

        }

        //--------------------
        //-MORATORY INTERESTS-
        //--------------------
        
        [HttpGet]
        public IActionResult EditMoratoryInterest(string pCCName)
        {
            MoratoryInterestCcModel model = MoratoryInterestsCcController.ExecuteGetMoratoryInterestCCByName(pCCName)[0];
            if (model == null)
            {
                return NotFound();
            }

            return View(model);
        }
        
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult EditMoratoryInterest([Bind] MoratoryInterestCcModel pChangedCC)
        {
            
            if (ModelState.IsValid)
            {
                int result = MoratoryInterestsCcController.ExecuteUpdateMoratoryInterestCC(pChangedCC.ChargeConceptName, pChangedCC);
                if (result < 0)
                {
                
                }
                return RedirectToAction("Index");
            }
            
            return  NotFound();
            
        }
        

    }
}