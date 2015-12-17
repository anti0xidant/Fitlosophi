using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using FITlosophiBLL;
using FITlosophiData.Models;
using FITlosophiMVC.Models;

namespace FITlosophiMVC.Controllers
{
    public class CMSController : Controller
    {
        // GET: CMS
        public ActionResult Index()
        {
            return View();
        }

        #region Post

        [Authorize(Roles = "Admin")]
        public ActionResult ManagePosts()
        {
            return View();
        }

        [Authorize]
        public ActionResult AddPost()
        {
            return View();
        }

        [HttpPost]
        [Authorize]
        public ActionResult PostPost(Post post)
        {
            var create = new FITlosophiOperations();

            create.AddPost(post);

            if (User.IsInRole("Admin"))
            {
                return View("ManagePosts");
            }


            return RedirectToAction("Index", "Home");
        }

        [Authorize(Roles="Admin")]
        public ActionResult EditPost(int id)
        {
            var read = new FITlosophiOperations();

            var postToEdit = read.GetPostByID(id);

            return View(postToEdit);
        }

        [HttpPost]
        [Authorize(Roles="Admin")]
        public ActionResult EditPost(Post post)
        {
            var update = new FITlosophiOperations();

            update.EditPost(post);

            return View("ManagePosts");
        }

        #endregion

        #region Page


        [Authorize(Roles = "Admin")]
        public ActionResult ManagePages()
        {
            return View();
        }

        [Authorize]
        public ActionResult AddPage()
        {
            return View();
        }

        [HttpPost]
        [Authorize]
        public ActionResult PostPage(StaticPage page)
        {
            var create = new FITlosophiOperations();

            create.AddStaticPage(page);

            if (User.IsInRole("Admin"))
            {
                return View("ManagePages");
            }


            return RedirectToAction("Index", "Home");

        }

        [Authorize(Roles="Admin")]
        public ActionResult EditPage(int id)
        {
            var read = new FITlosophiOperations();

            var pageToEdit = read.GetPageByID(id);

            return View(pageToEdit);
        }

        [HttpPost]
        [Authorize(Roles="Admin")]
        public ActionResult EditPage(StaticPage page)
        {
            var update = new FITlosophiOperations();

            update.EditPage(page);

            return View("ManagePages");
        }

        #endregion



    }
}