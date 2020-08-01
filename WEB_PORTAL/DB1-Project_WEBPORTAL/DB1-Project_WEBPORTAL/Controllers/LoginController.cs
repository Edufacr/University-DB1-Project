using System;
using System.Text.Encodings.Web;
using DB1_Project_WEBPORTAL.Models;
using Microsoft.AspNetCore.Http;
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

                    ILoggedUser.LoggedUser = user;
                    ILoggedUser.Ip = HttpContext.Connection.RemoteIpAddress.ToString();
                    
                    Console.WriteLine(ILoggedUser.Ip);
                    
                    if (user.isAdmin)
                    {
                        return RedirectToAction("Index", "Home", new { pLoggedUser = user});
                    }

                    return RedirectToAction("Details", "User", new { pLoggedUSer = user, pUsername , pRequestType = IConstants.USER_REQUESTTYPE});


                }
            }
            return View();
        }
    }
}