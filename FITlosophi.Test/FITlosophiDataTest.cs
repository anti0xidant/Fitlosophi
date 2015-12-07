using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
        public FITlosophiOperations ops { get; set; }


        [SetUp]
        public void SetUp()
        {
            Createrepo = new Create();
            Readrepo = new Read();
            Deleterepo = new Delete();
            Updaterepo = new Update();

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

            Assert.AreEqual(9, pages.FirstOrDefault(m => m.StaticPageID == 9).StaticPageID);
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
            List<Post> posts = Readrepo.GetAllPostsByCategory(2);

            Assert.AreEqual(1, posts.FirstOrDefault(m => m.PostID == 1).PostID);
        }


        [Test]
        public void GetPostByID()
        {
            var post = Readrepo.GetPostByID(1);

            Assert.AreEqual("5 Tips for Healthy Eating", post.Title);
        }


        [Test]
        public void GetPageByID()
        {
            var page = Readrepo.GetPageByID(10);

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
            var posts = Readrepo.GetPostsByAmount(3);

            Assert.AreEqual(1, posts.FirstOrDefault(m => m.PostID == 1).PostID);
        }







        #endregion


        #region Delete


        //[Test]
        //public void DeleteAllTagsByPostID()
        //{
        //    Deleterepo.DeleteAllTagsByPostID(4);

        //    var post = ops.GetPostByID(4);

        //    Assert.AreEqual(0, post.HashTags.Count());
        //}



        [Test]
        public void DeletePage()
        {
            Deleterepo.DeletePage(22);

            var page = Readrepo.GetPageByID(22);

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
            newPost.UserID = "2de529d8-da47-4a71-bcd9-11e88099e191";
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

            newpage.StaticPageID = 22;
            newpage.ButtonName = "Koshin Hits";
            newpage.UserID = "2de529d8-da47-4a71-bcd9-11e88099e191";
            newpage.Body = "day to day";

            Updaterepo.EditPage(newpage);

            var newbody = Readrepo.GetPageByID(22);

            Assert.AreEqual("day to day", newbody.Body);
        }


        [Test]
        public void PublishPage()
        {
            Updaterepo.PublishPage(9);

            var newpage = Readrepo.GetAllPageSummaries();

            Assert.AreEqual(true, newpage.Where(m => m.StaticPageID == 9).FirstOrDefault(x=> x.IsPublished == true).IsPublished);
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
    }
}
