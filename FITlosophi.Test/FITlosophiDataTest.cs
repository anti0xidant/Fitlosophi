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


        [Test]
        public void DeleteAllTagsByPostID()
        {
            Deleterepo.DeleteAllTagsByPostID(4);

            var tags = Readrepo.GetTagsByPostID(4);

            Assert.AreEqual(null, tags.FirstOrDefault(m => m.ActualHashTag == null).ActualHashTag);
        }


#endregion


    }
}
