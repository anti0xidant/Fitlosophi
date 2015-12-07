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
    public class PageAdminController : ApiController
    {
        #region Get

        [HttpGet]
        [ActionName("GetAllPageSummaries")]
        public List<StaticPage> GetAllPageSummaries()
        {
            var read = new FITlosophiOperations();

            return read.GetAllPageSummaries();
        }

        [HttpGet]
        [ActionName("GetPageByID")]
        public StaticPage GetPageByID(int PageID)
        {
            var read = new FITlosophiOperations();

            return read.GetPageByID(PageID);
        }

        #endregion

        #region Update

        [HttpPut]
        [ActionName("EditPage")]
        public void EditPage(StaticPage StaticPage)
        {
            var update = new FITlosophiOperations();

           update.EditPage(StaticPage);
        }

        [HttpPut]
        [ActionName("PublishPage")]
        public void PublishPage(int StaticPageID)
        {
            var update = new FITlosophiOperations();

            update.PublishPage(StaticPageID);
        }

        #endregion

        #region Delete

        [HttpPut]
        [ActionName("DeletePage")]
        public void DeletePage(int StaticPageID)
        {
            var delete = new FITlosophiOperations();
            delete.DeletePage(StaticPageID);
        }

        #endregion
    }
}
