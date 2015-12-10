using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using FITlosophiBLL;
using FITlosophiData.Models;
using FITlosophiData.Repo;
using NUnit.Framework;


namespace FITlosophi.Test
{
    [TestFixture]
    public class FITlosophiDataTest
    {

        public FITlosophiData.Repo.Create Createrepo { get; set; }
        public FITlosophiData.Repo.Read Readrepo { get; set; }
        public FITlosophiData.Repo.Delete Deleterepo { get; set; }
        public FITlosophiData.Repo.Update Updaterepo { get; set; }
        public FITlosophiData.Repo.DropDown dropdownrepo { get; set; }
        public FITlosophiOperations ops { get; set; }
        public string userID { get; set; }


        [SetUp]
        public void SetUp()
        {
            Createrepo = new Create();
            Readrepo = new Read();
            Deleterepo = new Delete();
            Updaterepo = new Update();
            dropdownrepo = new DropDown();

            userID = "b75da91b - e39a - 42ce - b2f0 - 4834eda139e1";

        }


        #region Read


        [Test]
        public void GetAllCategories()
        {
            List<Category> categories = Readrepo.GetAllCategories();

            Assert.AreEqual(1, categories.FirstOrDefault(m => m.CategoryID == 1).CategoryID);
        }



        [Test]
        public void GetAllPageSummaries()
        {
            List<StaticPage> pages = Readrepo.GetAllPageSummaries();

            Assert.AreEqual(1, pages.FirstOrDefault(m => m.StaticPageID == 1).StaticPageID);
        }


        [Test]
        public void GetAllPostSummaries()
        {
            List<Post> posts = Readrepo.GetAllPostSummaries();

            Assert.AreEqual("5 Tips for Healthy Eating", posts.FirstOrDefault(m => m.Title == "5 Tips for Healthy Eating").Title);
        }


        [Test]
        public void GetAllTags()
        {
            List<HashTag> tags = Readrepo.GetAllTags();

            Assert.AreEqual("healthyeating", tags.FirstOrDefault(m => m.TagName == "healthyeating").TagName);
        }


        [Test]
        public void GetAllPostsByCategory()
        {
            List<Post> posts = Readrepo.GetAllPostsByCategory(4);

            Assert.AreEqual(1, posts.FirstOrDefault(m => m.PostID == 1).PostID);
        }


        [Test]
        public void GetPostByID()
        {
            var post = Readrepo.GetPostByID(1);

            Assert.AreEqual("Golf Swing Workouts", post.Title);
        }


        [Test]
        public void GetPageByID()
        {
            var page = Readrepo.GetPageByID(2);

            Assert.AreEqual("Weekly Meals", page.ButtonName);
        }


        [Test]
        public void GetPostsByTagID()
        {
            var posts = Readrepo.GetPostsByTagID(2);

            Assert.AreEqual(1, posts.FirstOrDefault(m => m.PostID == 1 ).PostID);
        }


        [Test]
        public void GetTagsByPostID()
        {
            var tags = Readrepo.GetTagsByPostID(1);

            Assert.AreEqual(1, tags.FirstOrDefault(m => m.TagID == 1).TagID);
        }


        [Test]
        public void GetPostsByAmount()
        {
            var posts = Readrepo.GetPostsByAmount(5);

            Assert.AreEqual(4, posts.FirstOrDefault(m => m.PostID == 4).PostID);
        }







        #endregion


        #region Delete


        [Test]
        public void DeleteAllTagsByPostID()
        {
            Deleterepo.DeleteAllTagsByPostID(10);

            var tags = Readrepo.GetTagsByPostID(10);

            Assert.AreEqual(0, tags.Count);
        }



        [Test]
        public void DeletePage()
        {
            Deleterepo.DeletePage(5);

            var page = Readrepo.GetPageByID(5);

            Assert.AreEqual(false, page.IsActive);
        }


        [Test]
        public void DeletePost()
        {
            Deleterepo.DeletePost(12);

            var post = Readrepo.GetPostByID(12);

            Assert.AreEqual(false, post.IsActive);
        }

        #endregion




        #region Update

        [Test]
        public void EditPost()
        {
            Post newPost = new Post();

            newPost.PostID = 15;
            newPost.CategoryID = 3;
            newPost.UserID = userID;
            newPost.Title = "Test post 44";
            newPost.CoverImgURL = "http://localhost:54909/Content/img/eating.jpg";
            newPost.Body = "Hi";
            newPost.DateCreated = DateTime.Parse("12/07/2015");
            newPost.HasSchedule = false;
            newPost.IsPublished = false;
            newPost.IsActive = false;

           Updaterepo.EditPost(newPost);

            var newbody = Readrepo.GetPostByID(15);

            Assert.AreEqual("Hi", newbody.Body);
        }


        [Test]
        public void EditPage()
        {
            StaticPage newpage = new StaticPage();

            newpage.StaticPageID = 5;
            newpage.ButtonName = "Koshin";
            newpage.UserID = "2de529d8-da47-4a71-bcd9-11e88099e191";
            newpage.Body = "days today";

            Updaterepo.EditPage(newpage);

            var newbody = Readrepo.GetPageByID(5);

            Assert.AreEqual("days today", newbody.Body);
        }


        [Test]
        public void PublishPage()
        {
            Updaterepo.PublishPage(4);

            var newpage = Readrepo.GetAllPageSummaries();

            Assert.AreEqual(true, newpage.Where(m => m.StaticPageID == 4).FirstOrDefault(x=> x.IsPublished == true).IsPublished);
        }


        [Test]
        public void PublishPost()
        {
            Post post = new Post();

            post.PostID = 4;
            post.HasSchedule = false;
            post.StartDate = null;
            post.EndDate = null;

            Updaterepo.PublishPost(post);

            var newpost = Readrepo.GetAllPostSummaries();

            Assert.AreEqual(false, newpost.Where(m=> m.PostID == 4).FirstOrDefault(x => x.HasSchedule == false ).HasSchedule);
        }

        #endregion


        #region Create

        [Test]
        public void AddPost()
        {
            Post newpost = new Post();

            newpost.CategoryID = 1;
            newpost.UserID = "2de529d8-da47-4a71-bcd9-11e88099e191";
            newpost.Title = "My Test Post for data layer";
            newpost.CoverImgURL = "http://localhost:54909/Content/img/golf.jpg";
            newpost.Body = "Test Body";


            var result = Createrepo.AddPost(newpost);

            Assert.AreEqual(22, result);

        }


        [Test]
        public void AddStaticPage()
        {
            StaticPage newpage = new StaticPage();

            newpage.ButtonName = "Koshin Test Page";
            newpage.UserID = "2de529d8-da47-4a71-bcd9-11e88099e191";
            newpage.Body = "Test page body";


            var result = Createrepo.AddStaticPage(newpage);

            Assert.AreEqual(6, result);

        }


        [Test]
        public void AddTag()
        {
         HashTag newtag = new HashTag();

            newtag.ActualHashTag = "Golfwods";

            Createrepo.AddTag(10, newtag);

            var result = Readrepo.GetTagsByPostID(10);

            Assert.AreEqual(9, result.FirstOrDefault(m=> m.TagID == 9).TagID);
        }


        [Test]
        public void AddNewCategory()
        {
            Category newCategory = new Category();

            newCategory.CategoryName = "Organic";

            Createrepo.AddNewCategory(newCategory);

            var result = Readrepo.GetAllCategories();

            Assert.AreEqual("Organic", result.Where(m => m.CategoryID == 7).FirstOrDefault(x => x.CategoryName == "Organic").CategoryName);
        }



        #endregion



        #region DropDown


        [Test]
        public void GetCategoryDropDownList()
        {
            List<SelectListItem> categories = new List<SelectListItem>();
               categories = dropdownrepo.GetCategoryDropDownList();

            Assert.AreEqual(11, categories.Count);
        }



        #endregion



    }
}
