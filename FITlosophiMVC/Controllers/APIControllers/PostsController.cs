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
    public class PostsController : ApiController
    {
        #region Get

        public List<Post> Get(int amount)
        {
            var read = new FITlosophiOperations();

            return read.GetPostsByAmount(amount);
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
