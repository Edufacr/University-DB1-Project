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
        
        private ReceiptModelController ReceiptController = ReceiptModelController.getInstance();
        
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
        public IActionResult Details(int pPropertyNumber, int? pRequestType)
        {
            
            PropertyModel property = propertyController.ExecuteGetPropertyInfoByPropertyNumber(pPropertyNumber)[0];
            if (property == null)
            {
                return NotFound();
            }
            
            List<OwnerModel> owners = ownerController.ExecuteGetOwnersOfProperty(property);
            List<UserModel> users = userController.ExecuteGetUsersOfProperty(property);
            
            List<CcModel> consumptionCcs =
                ConsumptionCcController.ExecuteGetCCsOnProperty(property);
            List<CcModel> percentageCcs = 
                PercentageCcController.ExecuteGetCCsOnProperty(property);
            List<CcModel>  moratoryCcs =  
                MoratoryInterestsCcController.ExecuteGetCCsOnProperty(property);
            List<CcModel> fixedCcs = 
                FixedCcController.ExecuteGetCCsOnProperty(property);
            List<ReceiptModel> pendingReceipts = ReceiptController.ExecuteGetPropertyPendingReceipts(property.PropertyNumber);
            List<PaymentProofModel> paymentProofs = ReceiptController.ExecuteGetPropertyPaymentProofs(property.PropertyNumber);
            
            ViewData["Owners"] = owners;
            ViewData["Users"] = users;
            
            ViewData["RequestType"] = pRequestType;
            
            ViewData["ConsumptionCCs"] = consumptionCcs;
            ViewData["PercentageCCs"] = percentageCcs;
            ViewData["MoratoryIntsCCs"] = moratoryCcs;
            ViewData["FixedCCs"] = fixedCcs;
            ViewData["PendingReceipts"] = pendingReceipts;
            ViewData["PaymentProofs"] = paymentProofs;
            
            return View(property);
        }
        
        [HttpGet]
        public IActionResult InsertOwner(int pPropertyNumber)
        {

            ViewData["Owners"] = ownerController.ExcecuteGetActiveOwners();
            
            OwnerPropertyModel model = new OwnerPropertyModel();
            model.PropertyNumber = pPropertyNumber;
            
            return View(model);
            
        }
        
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult InsertOwner([Bind] OwnerPropertyModel pRelation)
        {
            
            if (ModelState.IsValid)
            {
                int insertion = ownerController.ExecuteInsertOwnerOfProperty(pRelation);
                if (insertion < 0) Console.Write("ERROR");
            }

            return RedirectToAction("Details",
                new {pPropertyNumber = pRelation.PropertyNumber, pRequestType = IConstants.RETURN_TO_INDEX_REQUESTTYPE});
        }
        
        public IActionResult DeleteOwner(string pDocType, string pDocValue, int pPropertyNumber)
        {
            OwnerPropertyModel relation = new OwnerPropertyModel();
            relation.DocType = pDocType;
            relation.DocValue = pDocValue;
            relation.PropertyNumber = pPropertyNumber;
            ownerController.ExecuteDeleteOwnerOfProperty(relation);
            
            return RedirectToAction("Details",
                new {pPropertyNumber = relation.PropertyNumber, pRequestType = IConstants.ADMIN_REQUESTTYPE});
        }
        
        [HttpGet]
        public IActionResult InsertUser(int pPropertyNumber)
        {

            ViewData["Users"] = userController.ExecuteGetActiveUsers();
            
            UserPropertyModel model = new UserPropertyModel();
            model.PropertyNumber = pPropertyNumber;
            
            return View(model);
        }
        
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult InsertUser([Bind] UserPropertyModel pRelation)
        {
            
            if (ModelState.IsValid)
            {
                Console.Write(pRelation.PropertyNumber);
                int insertion = userController.ExecuteInsertUserOfProperty(pRelation);
                if (insertion < 0) Console.Write("ERROR");
            }

            return RedirectToAction("Details",
                new {pPropertyNumber = pRelation.PropertyNumber, pRequestType = IConstants.RETURN_TO_INDEX_REQUESTTYPE});
        }
        
        public IActionResult DeleteUser(string pUsername, int pPropertyNumber)
        {
            UserPropertyModel relation = new UserPropertyModel();
            relation.Name = pUsername;
            relation.PropertyNumber = pPropertyNumber;
            userController.ExecuteDeleteUserOfProperty(relation);
            
            return RedirectToAction("Details",
                new {pPropertyNumber = relation.PropertyNumber, pRequestType = 1});
        }
        [HttpGet]
        public IActionResult ProofOfPaymentDetails (int pProofNumber){
            PaymentProofModel proofOfPayment = ReceiptController.ExecuteGetProofOfPaymentDetails(pProofNumber);
            List<ReceiptModel> receipts = ReceiptController.ExecuteGetProofOfPaymentReceipts(pProofNumber);
            ViewData["ReceiptsPoP"] = receipts;
            return View(proofOfPayment);
        }

        public IActionResult ReceiptSelection(int pPropertyNumber)
        {
            PropertyModel property = propertyController.ExecuteGetPropertyInfoByPropertyNumber(pPropertyNumber)[0];
            List<ReceiptModel> pendingReceipts = ReceiptController.ExecuteGetPropertyPendingReceipts(property.PropertyNumber);
            ViewData["PendingReceipts"] = pendingReceipts;
            ReceiptController.ExecuteCreateSelectedReceiptTable();
            ViewData["PropertyNumber"] = pPropertyNumber;
            return View();
        }
        
        public int SelectReceipt(int pReceiptNumber)
        {
            int selection = ReceiptController.ExecuteSelectReceipt(pReceiptNumber);
            return selection;
        }

        public IActionResult PaymentPreview(int? pPropertyNumber)
        {
            List<ReceiptModel> selectedReceipts = ReceiptController.ExecuteGetSelectedReceipts();
            ViewData["Selection"] = selectedReceipts;
            ViewData["PropertyNumber"] = pPropertyNumber;
            
            return View();
        }

        public IActionResult PaySelectedReceipts(int pPropertyNumber)
        {

            ReceiptController.ExecutePaySelectedReceipts();
            
            return RedirectToAction("Details",
                new {pPropertyNumber, pRequestType = IConstants.RETURN_TO_USER_INDEX_REQUESTTYPE});
            
        }
        
    }
}
