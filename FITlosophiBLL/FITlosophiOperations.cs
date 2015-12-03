using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using FITlosophiData.Models;
using FITlosophiData.Repo;

namespace FITlosophiBLL
{
    public class FITlosophiOperations
    {
        #region Create

        public void AddPost(Post post)
        {
            var create = new Create();
            var postID = create.AddPost(post);

            // Check if post add was successful and returned the new postID
            if (postID != null)
            {
                foreach (var tag in post.HashTags)
                {
                    create.AddTag((int) postID, tag);
                }

            }
        }

        public void AddStaticPage(StaticPage staticPage)
        {
            var create = new Create();
            create.AddStaticPage(staticPage);
        }

        #endregion

        #region Read

        public List<Category> GetAllCategories()
        {
            var read = new FITlosophiOperations();

            return read.GetAllCategories();
        }

        public List<StaticPage> GetAllPageSummaries()
        {
            var read = new FITlosophiOperations();

            return read.GetAllPageSummaries();
        }

        public List<HashTag> GetAllTags()
        {
            var read = new FITlosophiOperations();

            return read.GetAllTags();
        }

        public StaticPage GetPageByID(int staticPageID)
        {
            var read = new FITlosophiOperations();

            return read.GetPageByID(staticPageID);
        }

        public List<HashTag> GetTagsByPostId(int postID)
        {
            var read = new FITlosophiOperations();

            return read.GetTagsByPostId(postID);
        }

        #endregion

        #region Update

        public void EditPage(StaticPage staticPage)
        {
            var update = new FITlosophiOperations();

            update.EditPage(staticPage);
        }

        public void EditPost(Post post)
        {
            var update = new FITlosophiOperations();

            update.EditPost(post);
        }

        public void PublishPage(StaticPage staticPage)
        {
            var update = new FITlosophiOperations();

            update.PublishPage(staticPage);
        }

        public void PublishPost(Post post)
        {
            var update = new FITlosophiOperations();

            update.PublishPost(post);
        }

        #endregion

        #region Delete

        public void DeleteAllTagsByPostID(int postID)
        {
            var delete = new Delete();
            delete.DeleteAllTagsByPostID(postID);
        }

        public void DeletePage(int staticPageID)
        {
            var delete = new Delete();
            delete.DeletePage(staticPageID);
        }

        public void DeletePost(int postID)
        {
            var delete = new Delete();
            delete.DeletePost(postID);
        }


        #endregion

            #region DropDown

        public List<SelectListItem> GetCategoryDropDownList()
        {
            var createDropDownList = new DropDown();
            var categoriesDropDownList = createDropDownList.GetCategoryDropDownList();

            return categoriesDropDownList;

        }

        #endregion
    }
}
