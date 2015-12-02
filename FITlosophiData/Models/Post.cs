using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FITernitiMVC.Models
{
    public class Post
    {
        public int PostID { get; set; }
        public string Title { get; set; }
        public string Body { get; set; }
        public string ImageUrl { get; set; }
        public DateTime? DateCreated { get; set; }
        public DateTime? DatePublished { get; set; }
        public bool HasSchedule { get; set; }
        public DateTime? StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public bool IsActive { get; set; }
        public Category Category { get; set; }
        public string WriterName { get; set; }
    }
}