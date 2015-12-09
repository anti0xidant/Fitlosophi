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
            // Parse Tags into separate hash tags
            if (post.Tags != null)
            {
                var hashtags = post.Tags.Replace("#", "").Split(',');

                foreach (var hashtag in hashtags)
                {
                    if (hashtag != "")
                    {
                        var p = new HashTag();

                        p.ActualHashTag = hashtag;
                        post.HashTags.Add(p);
                    }
                }
            }

            var create = new Create();
            var postID = create.AddPost(post);

            // Check if post add was successful and returned the new postID
            if (postID != null && post.HashTags.Count() != 0)
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

        public void AddNewCategory(Category category)
        {
            var create = new Create();

            create.AddNewCategory(category);
        }

        #endregion

        #region Read

        public List<Category> GetAllCategories()
        {
            var read = new Read();
            
            return read.GetAllCategories();
        }

        public List<StaticPage> GetAllPageSummaries()
        {
            var read = new Read();

            return read.GetAllPageSummaries();
        }

        public List<HashTag> GetAllTags()
        {
            var read = new Read();

            return read.GetAllTags();
        }

        public StaticPage GetPageByID(int staticPageID)
        {
            var read = new Read();

            return read.GetPageByID(staticPageID);
        }

        public List<HashTag> GetTagsByPostId(int postID)
        {
            var read = new Read();

            return read.GetTagsByPostID(postID);
        }

        public List<Post> GetAllPostSummaries()
        {
            var read = new Read();

            var posts = read.GetAllPostSummaries();

            return posts;
        } 

        public List<Post> GetAllPostsByCategory(int categoryID)
        {
            var read = new Read();
            var posts = read.GetAllPostsByCategory(categoryID);

            foreach (var p in posts)
            {
                p.HashTags = read.GetTagsByPostID(p.PostID);
            }

            return posts;
        } 

        public List<Post> GetPostsByAmount(int amount)
        {
            var read = new Read();
            var posts = read.GetPostsByAmount(amount);

            foreach (var p in posts)
            {
                p.HashTags = read.GetTagsByPostID(p.PostID);
            }

            return posts;
        }

        public List<Post> GetPostsByTagID(int tagID)
        {
            var read = new Read();
            var posts = read.GetPostsByTagID(tagID);

            foreach (var p in posts)
            {
                p.HashTags = read.GetTagsByPostID(p.PostID);
            }

            return posts;
        }

        public Post GetPostByID(int id)
        {
            var read = new Read();

            var post = read.GetPostByID(id);

            post.HashTags = read.GetTagsByPostID(post.PostID);

            return post;
        }

        #endregion

        #region Update

        public void EditPage(StaticPage staticPage)
        {
            var update = new Update();

            update.EditPage(staticPage);
        }

        public void EditPost(Post post)
        {
            // Overwrite post with edited data
            var update = new Update();

            update.EditPost(post);

            // Delete all hashtags associated with post from PostsXTags table
            var delete = new Delete();

            delete.DeleteAllTagsByPostID(post.PostID);

            // Split up tags string from UI into individual hashtags. Then remove all # symbols. 
            // Afterwards, only tags that contain characters are added to the HashTags list.
            if (post.Tags != null)
            {
                var hashtags = post.Tags.Replace("#", "").Split(',');

                foreach (var hashtag in hashtags)
                {
                    if (hashtag != "")
                    {
                        var p = new HashTag();

                        p.ActualHashTag = hashtag;
                        post.HashTags.Add(p);
                    }
                }
            }

            // Iterate: Check if hashtag is in Tags table. If not, create a new record in that table
            // before creating a new record in PostsXTags. Else, just create new record in PostsXTags.
            if (post.HashTags.Count() != 0)
            {
                var create = new Create();

                foreach (var tag in post.HashTags)
                {
                    create.AddTag((int)post.PostID, tag);
                }
            }

        }

        public void PublishPage(int staticPageID)
        {
            var update = new Update();

            update.PublishPage(staticPageID);
        }

        public void PublishPost(Post post)
        {
            var update = new Update();

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
