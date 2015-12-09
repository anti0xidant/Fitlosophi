using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using FITlosophiBLL;
using FITlosophiData.Models;
using NUnit.Framework;



namespace FITlosophi.Test
{
    [TestFixture]
   public  class FITlosophiOPTest
    {

        private FITlosophiOperations ops { get; set; }

        [SetUp]
        public void SetUp()
        {
            ops = new FITlosophiOperations();
        }


#region Read

        [Test]
        public void GetAllCategories()
        {
            List<Category> categories = ops.GetAllCategories();

            Assert.AreEqual(1, categories.FirstOrDefault(m => m.CategoryID == 1).CategoryID);
        }


        [Test]
        public void GetAllPostsByCategory()
        {
            var posts = ops.GetAllPostsByCategory(2);

            Assert.AreEqual(2, posts.FirstOrDefault(m=> m.PostID ==2).PostID);
        }



        [Test]
        public void GetPostsByAmount()
        {
            var posts = ops.GetPostsByAmount(5);

            Assert.AreEqual(4, posts.FirstOrDefault(m => m.CategoryID == 1).PostID);
        }


        [Test]
        public void GetPostsByTagID()
        {
            var posts = ops.GetPostsByTagID(9);

            Assert.AreEqual(2, posts.FirstOrDefault(m => m.PostID ==2).PostID);
        }


        [Test]
        public void GetPostsByID()
        {
            var post = ops.GetPostByID(1);

            Assert.AreEqual(4, post.CategoryID);
        }

        #endregion


        #region Update

        //No Logic done on edits straight pass thru, tests done thru opstest project


        #endregion




        #region Delete

        //No logic done on delete, test done thru datatest project


        #endregion



#region dropdown

        [Test]
        public void GetCategoryDropDownList()
        {
            List<SelectListItem> categories = ops.GetCategoryDropDownList();

            Assert.AreEqual(12, categories.Count);
        }



#endregion
    }

  
}


