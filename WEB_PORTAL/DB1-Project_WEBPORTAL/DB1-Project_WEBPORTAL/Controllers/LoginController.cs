using System;
using System.Text.Encodings.Web;
using DB1_Project_WEBPORTAL.Models;
using Microsoft.AspNetCore.Mvc;

namespace DB1_Project_WEBPORTAL.Controllers
{
    public class LoginController : Controller
    {
        
        private readonly Models.ModelControllers.UserModelController UserModelController = 
            Models.ModelControllers.UserModelController.getInstance();
        
        // GET
        public IActionResult Index(string pUsername,string pPassword)
        {
            if (pUsername != null && pPassword != null)
            {
                if (UserModelController.ExecuteValidatePassword(pUsername, pPassword))
                {
                    
                    UserModel user = UserModelController.ExecuteGetUserByUsername(pUsername)[0];
                    Console.Write(user.Name);
                    
                    if (user.isAdmin)
                    {
                        return Redirect("Home/Index");
                    }

                    return RedirectToAction("Details", "User", new { pUsername , pUserType = 0});


                }
            }
            return View();
        }
    }
}