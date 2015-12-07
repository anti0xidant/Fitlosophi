using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FITlosophiData.Models;
using FITlosophiMVC.Controllers.APIControllers;

namespace FITlosophiMVC.Models
{
    public class BlogViewModel
    {
        public List<Category> Categories { get; set; }
        public List<Post> Posts { get; set; }
        public List<HashTag> HashTags { get; set; } 
    }
}