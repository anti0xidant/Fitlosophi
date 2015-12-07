using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FITlosophiBLL;

namespace FITlosophiMVC.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {

            return View();
        }

        public ActionResult StaticPage(int staticPageID)
        {
            var ops = new FITlosophiOperations();
            var staticPage = ops.GetPageByID(staticPageID);
            return View(staticPage);
        }

        public ActionResult BlogDetail()
        {
            return View();
        }

    }
}