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
        public ActionResult Index()
        {
            return RedirectToAction("Blog", new {Page= 1}) ;
        }

        public ActionResult Blog(int Page)
        {
            var ops = new FITlosophiOperations();
            var blogVM = new BlogViewModel();
            var posts = ops.GetPostsByAmount(1000);

            blogVM.Categories = ops.GetAllCategories();
            blogVM.TotalPosts = posts.Count();
            blogVM.Posts = posts.Skip((4 * Page) - 4).Take(10).ToList();
            blogVM.Page = Page;

            // Calculate the total number of pages
            blogVM.TotalNumberOfPages = blogVM.TotalPosts / 4;
            if ((blogVM.TotalPosts % 4) > 0)
            {
                blogVM.TotalNumberOfPages++;
            }

            //Create paging url based on controller action
            if (Page < blogVM.TotalNumberOfPages)
            {
                blogVM.OlderUrl = "/Home/Blog?Page=" + (Page + 1);
            }

            if (Page > 1)
            {
                blogVM.NewUrl = "/Home/Blog?Page=" + (Page - 1);
            }

            return View("Index", blogVM);
        }

        public ActionResult BlogByCategoryID(int CategoryID, int Page)
        {
            var ops = new FITlosophiOperations();
            var blogVM = new BlogViewModel();
            var posts = ops.GetAllPostsByCategory(CategoryID);          

            blogVM.Categories = ops.GetAllCategories();
            blogVM.TotalPosts = posts.Count();
            blogVM.Posts = posts.Skip((4 * Page) - 4).Take(10).ToList();
            blogVM.Page = Page;

            // Calculate the total number of pages
            blogVM.TotalNumberOfPages = blogVM.TotalPosts/4;
            if ((blogVM.TotalPosts % 4) > 0)
            {
                blogVM.TotalNumberOfPages++;
            }

            //Create paging url based on controller action
            if (Page < blogVM.TotalNumberOfPages)
            {
                blogVM.OlderUrl = "/Home/BlogByCategoryID?CategoryID=" + CategoryID + "&Page=" + (Page + 1);
            }

            if (Page > 1)
            {
                blogVM.NewUrl = "/Home/BlogByCategoryID?CategoryID=" + CategoryID + "&Page=" + (Page - 1);
            }
            
            return View("Index", blogVM);
        }

        public ActionResult BlogByTagID(int TagID, int Page)
        {
            var ops = new FITlosophiOperations();
            var blogVM = new BlogViewModel();
            var posts = ops.GetPostsByTagID(TagID);

            blogVM.Categories = ops.GetAllCategories();
            blogVM.TotalPosts = posts.Count();
            blogVM.Posts = posts.Skip((4 * Page) - 4).Take(10).ToList();
            blogVM.Page = Page;

            // Calculate the total number of pages
            blogVM.TotalNumberOfPages = blogVM.TotalPosts / 4;
            if ((blogVM.TotalPosts % 4) > 0)
            {
                blogVM.TotalNumberOfPages++;
            }

            //Create paging url based on controller action
            if (Page < blogVM.TotalNumberOfPages)
            {
                blogVM.OlderUrl = "/Home/BlogByTagID?TagID=" + TagID + "&Page=" + (Page + 1);
            }

            if (Page > 1)
            {
                blogVM.NewUrl = "/Home/BlogByTagID?TagID=" + TagID + "&Page=" + (Page - 1);
            }

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