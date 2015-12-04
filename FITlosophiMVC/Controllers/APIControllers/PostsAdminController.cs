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
    public class PostsAdminController : ApiController
    {
        #region Get

        public List<Post> GetAllPostSummaries()
        {
            var read = new FITlosophiOperations();

            return read.GetAllPostSummaries();
        }

        public Post GetPostByID(int PostID)
        {
            var read = new FITlosophiOperations();

            return read.GetPostByID(PostID);
        }
        
        #endregion

        #region Post

        public void Post(Post post)
        {
            var create = new FITlosophiOperations();

            create.AddPost(post);
        }

        #endregion
    }
}
