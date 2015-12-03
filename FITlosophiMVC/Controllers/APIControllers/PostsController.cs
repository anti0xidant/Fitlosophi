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

        [HttpGet]
        [ActionName("GetAllPostsByAmount")]
        public List<Post> GetAllPostsByAmount(int amount)
        {
            var read = new FITlosophiOperations();

            return read.GetPostsByAmount(amount);
        }

        #endregion

        #region Post

        [HttpPost]
        [ActionName("AddPost")]
        public void AddPost(Post post)
        {
            var create = new FITlosophiOperations();

            create.AddPost(post);
        }

        #endregion




    }
}
