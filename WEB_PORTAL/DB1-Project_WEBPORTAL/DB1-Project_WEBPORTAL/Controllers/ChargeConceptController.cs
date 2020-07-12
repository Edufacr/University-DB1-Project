using Microsoft.AspNetCore.Mvc;

namespace DB1_Project_WEBPORTAL.Controllers
{
    public class ChargeConceptController : Controller
    {
        // GET
        public IActionResult Index()
        {
            return View();
        }
        
        public IActionResult Delete()
        {
            throw new System.NotImplementedException();
        }
        
        //-----
        //FIXED
        //-----

        public IActionResult CreateFixed()
        {
            throw new System.NotImplementedException();
        }

        public IActionResult EditFixed()
        {
            throw new System.NotImplementedException();
        }

        public IActionResult DetailsFixed()
        {
            throw new System.NotImplementedException();
        }

        //-----------
        //CONSUMPTION
        //-----------
        
        public IActionResult CreateConsumption()
        {
            throw new System.NotImplementedException();
        }

        public IActionResult EditConsumption()
        {
            throw new System.NotImplementedException();
        }

        public IActionResult DetailsConsumption()
        {
            throw new System.NotImplementedException();
        }
        
        //----------
        //PERCENTAGE
        //----------

        public IActionResult CreatePercentage()
        {
            throw new System.NotImplementedException();
        }

        public IActionResult EditPercentage()
        {
            throw new System.NotImplementedException();
        }

        public IActionResult DetailsPercentage()
        {
            throw new System.NotImplementedException();
        }
        
        
        //------------------
        //MORATORY INTERESTS
        //------------------
        
        
        public IActionResult CreateMoratoryInterest()
        {
            throw new System.NotImplementedException();
        }

        public IActionResult EditMoratoryInterest()
        {
            throw new System.NotImplementedException();
        }

        public IActionResult DetailsMoratoryInterest()
        {
            throw new System.NotImplementedException();
        }


    }
}