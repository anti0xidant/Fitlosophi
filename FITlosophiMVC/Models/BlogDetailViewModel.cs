using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FITlosophiData.Models;

namespace FITlosophiMVC.Models
{
    public class BlogDetailViewModel
    {
        public List<Category> Categories { get; set; }
        public List<Post> Posts { get; set; }
        public Post UserSelectedPost { get; set; }
    }
}