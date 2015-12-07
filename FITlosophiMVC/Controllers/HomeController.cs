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

        public ActionResult Index(string route)
        {
            var read = new Read();

            var blogVM = new BlogViewModel();

            blogVM.Posts = read.GetPostsByAmount(10);
            blogVM.HashTags = read.GetAllTags();
            blogVM.Categories = read.GetAllCategories(); 
       
            return View(blogVM);
        }

        public ActionResult BlogByCategory(int CategoryID)
        {
            var read = new Read();

            var blogVM = new BlogViewModel();

            blogVM.Posts = read.GetAllPostsByCategory(CategoryID);
            blogVM.HashTags = read.GetAllTags();
            blogVM.Categories = read.GetAllCategories();

            return View("Index", blogVM);
        }

        public ActionResult BlogByTagID(int TagID)
        {
            var read = new Read();

            var blogVM = new BlogViewModel();

            blogVM.Posts = read.GetPostsByTagID(TagID);
            blogVM.HashTags = read.GetAllTags();
            blogVM.Categories = read.GetAllCategories();

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