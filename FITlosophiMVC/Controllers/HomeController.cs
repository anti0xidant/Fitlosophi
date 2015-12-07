using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FITlosophiBLL;
using FITlosophiData.Repo;
using FITlosophiMVC.Models;

namespace FITlosophiMVC.Controllers
{
    public class HomeController : Controller
    {
        //public ActionResult Index(string route)
        //{
        //    if (route == null)
        //    {
        //        return View();
        //    }
        //    else
        //    {
        //        // parse route
        //        // Tag + ID
        //        //or
        //        // Category + ID
                
        //    }
        //    return View();
        //}

        public ActionResult Index()
        {
            var ops = new FITlosophiOperations();

            var blogVM = new BlogViewModel();

            blogVM.Posts = ops.GetPostsByAmount(10);
            blogVM.HashTags = ops.GetAllTags();
            blogVM.Categories = ops.GetAllCategories(); 
       
            return View("Index", blogVM);
        }

        public ActionResult BlogByCategoryID(int CategoryID)
        {
            var ops = new FITlosophiOperations();

            var blogVM = new BlogViewModel();

            blogVM.Posts = ops.GetAllPostsByCategory(CategoryID);
            blogVM.HashTags = ops.GetAllTags();
            blogVM.Categories = ops.GetAllCategories();

            return View("Index", blogVM);
        }

        public ActionResult BlogByTagID(int TagID)
        {
            var ops = new FITlosophiOperations();

            var blogVM = new BlogViewModel();

            blogVM.Posts = ops.GetPostsByTagID(TagID);
            blogVM.HashTags = ops.GetAllTags();
            blogVM.Categories = ops.GetAllCategories();

            return View("Index", blogVM);
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

        public ActionResult BlogDetail(int postID)
        {
            var ops = new FITlosophiOperations();
            var post = ops.GetPostByID(postID);
            return View(post);
        }

    }
}