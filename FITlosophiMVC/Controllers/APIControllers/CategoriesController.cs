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
    public class CategoriesController : ApiController
    {
        [HttpPost]
        //[ActionName("AddNewCategory")]
        public void Post(Category category)
        {
            var post = new FITlosophiOperations();

            post.AddNewCategory(category);
        }
    }
}
