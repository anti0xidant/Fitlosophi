using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using FITlosophiBLL;
using FITlosophiData.Models;

namespace FITlosophiMVC.Controllers.APIControllers
{
    public class PostsPublicController : ApiController
    {
        #region Get

        public List<Post> GetPostByAmount(int amount)
        {
            var read = new FITlosophiOperations();

            return read.GetPostsByAmount(amount);
        }

        public Post GetPostByID(int postID)
        {
            var read = new FITlosophiOperations();

            return read.GetPostByID(postID);
        }

        public List<Post> GetAllPostsByCategory(int categoryID)
        {
            var read = new FITlosophiOperations();

            return read.GetAllPostsByCategory(categoryID);
        }

        public List<Post> GetPostsByTagID(int tagID)
        {
            var read = new FITlosophiOperations();

            return read.GetPostsByTagID(tagID);
        } 

        #endregion



    }
}
