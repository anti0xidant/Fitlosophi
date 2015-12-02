using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FITernitiMVC.Models
{
    public class StaticPage
    {
        public int PageID { get; set; }
        public string ButtonName { get; set; }
        public string Body { get; set; }
        public DateTime? DateCreated { get; set; }
        public DateTime? DatePublished { get; set; }
        public bool IsActive { get; set; }
        public string WriterName { get; set; }

  
    }
}