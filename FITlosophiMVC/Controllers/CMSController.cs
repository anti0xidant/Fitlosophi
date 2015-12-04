using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FITlosophiData.Models;

namespace FITlosophiMVC.Controllers
{
    public class CMSController : Controller
    {
        // GET: CMS
        public ActionResult Index()
        {
            return View();
        }


        [Authorize]
        public ActionResult AddPost()
        {
            return View();
        }


        [Authorize(Roles = "Admin")]
        public ActionResult AddPage()
        {


            return View();
        }

        [Authorize(Roles = "Admin")]
        public ActionResult ManagePosts()
        {
            return View();
        }


        [Authorize(Roles = "Admin")]
        public ActionResult ManagePages()
        {
            return View();
        }

    }
}