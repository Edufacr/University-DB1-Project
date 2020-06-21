using System;
using Microsoft.AspNetCore.Mvc;

namespace DB1_Project_WEBPORTAL.Controllers
{
    public class LoginController : Controller
    {
        
        private readonly Models.ModelControllers.UserController UserModelController = Models.ModelControllers.UserController.getInstance();
        
        // GET
        public IActionResult Index(string pUsername,string pPassword)
        {
            if (pUsername != null && pPassword != null)
            {
                if (UserModelController.ExecuteValidatePassword(pUsername, pPassword))
                {
                    Console.WriteLine(pUsername);
                    Console.WriteLine(pPassword);
                    return Redirect("Home/Index");
                }
            }
            return View();
        }
    }
}