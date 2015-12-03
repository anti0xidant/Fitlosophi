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



        #endregion

        #region Update



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
