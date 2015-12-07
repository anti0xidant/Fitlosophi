using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using FITlosophiBLL;
using FITlosophiData.Models;
using FITlosophiData.Repo;

namespace FITlosophiMVC.Controllers.APIControllers
{
    public class HashTagsController : ApiController
    {
        public List<HashTag> Get()
        {
            var read = new FITlosophiOperations();

            return read.GetAllTags();
        }
    }
}
