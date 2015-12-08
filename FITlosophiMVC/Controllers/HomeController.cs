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
            blogVM.Categories = ops.GetAllCategories(); 
       
            return View("Index", blogVM);
        }

        public ActionResult BlogByCategoryID(int CategoryID)
        {
            var ops = new FITlosophiOperations();

            var blogVM = new BlogViewModel();

            blogVM.Posts = ops.GetAllPostsByCategory(CategoryID);
            blogVM.Categories = ops.GetAllCategories();

            return View("Index", blogVM);
        }

        public ActionResult BlogByTagID(int TagID)
        {
            var ops = new FITlosophiOperations();

            var blogVM = new BlogViewModel();

            blogVM.Posts = ops.GetPostsByTagID(TagID);
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
            var blogDetailVM = new BlogDetailViewModel();

            var ops = new FITlosophiOperations();

            blogDetailVM.UserSelectedPost = ops.GetPostByID(postID);
            blogDetailVM.Categories = ops.GetAllCategories();
            var readMorePosts = ops.GetPostsByAmount(10);

            blogDetailVM.Posts = readMorePosts.Where(p => p.PostID != postID).ToList();


            return View(blogDetailVM);
        }

    }
}