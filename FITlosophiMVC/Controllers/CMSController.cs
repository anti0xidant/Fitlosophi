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
        public ActionResult Postpost(Post post)
        {
            var create = new FITlosophiOperations();

            create.AddPost(post);

            return View("ManagePosts");
        }

        [Authorize(Roles = "Admin")]

        #endregion

        #region Page


        [Authorize(Roles = "Admin")]
        public ActionResult ManagePages()
        {
            return View();
        }

        public ActionResult AddPage()
        {


            return View();
        }

        [HttpPost]
        public ActionResult PostPage(StaticPage page)
        {
            var create = new FITlosophiOperations();

            create.AddStaticPage(page);

            return View("ManagePages");
        }

        public ActionResult EditPage(int id)
        {
            var read = new FITlosophiOperations();

            var pageToEdit = read.GetPageByID(id);

            return View(pageToEdit);
        }

        [HttpPost]
        public ActionResult EditPage(StaticPage page)
        {
            var update = new FITlosophiOperations();

            update.EditPage(page);

            return View("ManagePages");
        }

        #endregion



    }
}