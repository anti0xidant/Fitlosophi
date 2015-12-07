using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FITlosophiBLL;
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

        [HttpPost]
        public ActionResult Postpost(Post post)
        {
            var create = new FITlosophiOperations();

            create.AddPost(post);

            return View("ManagePosts");
        }

        [Authorize(Roles = "Admin")]
        public ActionResult AddPage()
        {


            return View();
        }

        [HttpPost]
        public ActionResult postpage(StaticPage page)
        {
            var create = new FITlosophiOperations();

            create.AddStaticPage(page);

            return View("ManagePages");
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