using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FITlosophiData.Models;

namespace FITlosophiData.Models

{
    public class Post
    {
        public int PostID { get; set; }
        public string UserID { get; set; }
        public string Title { get; set; }
        [AllowHtml]
        public string Body { get; set; }
        public string CoverImgURL { get; set; }
        public DateTime? DateCreated { get; set; }
        public DateTime? DatePublished { get; set; }
        public bool HasSchedule { get; set; }
        public DateTime? StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public bool IsPublished { get; set; }
        public bool IsActive { get; set; }
        public int CategoryID { get; set; }
        public string CategoryName { get; set; }
        public string WriterName { get; set; }
        public List<HashTag> HashTags { get; set; }
        public string Tags { get; set; }
    }
}