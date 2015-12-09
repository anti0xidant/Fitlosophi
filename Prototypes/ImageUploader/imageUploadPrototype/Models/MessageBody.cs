using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace imageUploadPrototype.Models
{
    public class MessageBody
    {
        // This attributes allows your HTML Content to be sent up
        [AllowHtml]
        public string HtmlContent { get; set; }

        public MessageBody()
        {

        }
    }
}