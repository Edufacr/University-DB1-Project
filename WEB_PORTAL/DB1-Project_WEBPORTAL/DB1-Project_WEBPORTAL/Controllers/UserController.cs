using System;
using System.Collections.Generic;
using DB1_Project_WEBPORTAL.Models;
using DB1_Project_WEBPORTAL.Models.ModelControllers;
using Microsoft.AspNetCore.Mvc;

namespace DB1_Project_WEBPORTAL.Controllers
{
    public class UserController : Controller
    {
        
        UserModelController userController = UserModelController.getInstance();
        PropertyModelController propertyController = PropertyModelController.getInstance();
        
        // GET
        public IActionResult Index()
        {
            List<UserModel> users = userController.ExecuteGetActiveUsers();
            return View(users);
        }
        
        [HttpGet]
        public IActionResult Create()
        {
            
            return View();
            
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind] UserModel user)
        {
            
            Console.Write(user.isAdmin);
            
            if (ModelState.IsValid)
            {
                int insertion = userController.ExecuteInsertUser(user);
                if (insertion < 0) Console.Write("ERROR");
                return RedirectToAction("Index");
            }

            return View(user);
        }
        
        [HttpGet]
        public IActionResult Delete(string pUsername)
        {
            try
            {
                UserModel user = userController.ExecuteGetUserByUsername(pUsername)[0];
                return View(user);
            }
            catch (IndexOutOfRangeException e)
            {
                return NotFound();
            }
        }
        
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteUser(UserModel user)
        {
            userController.ExecuteDeleteUser(user);
            return RedirectToAction("Index");
        }
        
        [HttpGet]
        public IActionResult Details(string pUsername, int? pRequestType)
        {
            try
            {
                UserModel user = userController.ExecuteGetUserByUsername(pUsername)[0];
                List<PropertyModel> properties = propertyController.ExecuteGetPropertiesOfUser(user);
                ViewData["Properties"] = properties;
                ViewData["RequestType"] = pRequestType;
                return View(user);
            }
            catch (IndexOutOfRangeException e)
            {
                Console.Write("MAMAPICHAAAAAS");
                return NotFound();
            }
        }
        
        [HttpGet]
        public IActionResult InsertProperty(string pUsername)
        {

            ViewData["Properties"] = propertyController.ExecuteGetActiveProperties();
            
            UserPropertyModel model = new UserPropertyModel();
            model.Name = pUsername;
            
            return View(model);
        }
        
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult InsertProperty([Bind] UserPropertyModel pRelation)
        {
            
            if (ModelState.IsValid)
            {
                Console.Write(pRelation.PropertyNumber);
                int insertion = userController.ExecuteInsertUserOfProperty(pRelation);
                if (insertion < 0) Console.Write("ERROR");
            }

            return RedirectToAction("Details",
                new {pUsername = pRelation.Name, pRequestType = 3});
        }
        
        public IActionResult DeleteProperty(string pUsername, int pPropertyNumber)
        {
            UserPropertyModel relation = new UserPropertyModel();
            relation.Name = pUsername;
            relation.PropertyNumber = pPropertyNumber;
            userController.ExecuteDeleteUserOfProperty(relation);
            
            return RedirectToAction("Details",
                new {pUsername = relation.Name, pRequestType = 1});
        }
        
    }
}