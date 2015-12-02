using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FITlosophiData.Models;

namespace FITlosophiData.Models

{
    public class Post
    {
        public int PostID { get; set; }
        public string UserID { get; set; }
        public string Title { get; set; }
        public string Body { get; set; }
        public string CoverImageUrl { get; set; }
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
    }
}