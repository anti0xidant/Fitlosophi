using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace imageUploadPrototype.Models
{
    public class Post
    {
        [AllowHtml]
        public string Body { get; set; }

        public string Title { get; set; }
    }
}