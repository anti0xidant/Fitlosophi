using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using FITlosophiData.Config;
using FITlosophiData.Models;

namespace FITlosophiData.Repo
{
    public class Create
    {
        public int? AddPost(Post post)
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var p = new DynamicParameters();

                try
                {
                    p.Add("CategoryID", post.CategoryID);
                    p.Add("UserID", post.UserID);
                    p.Add("Title", post.Title);
                    p.Add("CoverImgURL", post.CoverImageUrl);
                    p.Add("Body", post.Body);
                    p.Add("PostID", DbType.Int32, direction: ParameterDirection.Output);

                    cn.Execute("AddPost", p, commandType: CommandType.StoredProcedure);

                    post.PostID = p.Get<int>("PostID");
                }
                //catch (Exception e)
                //{
                //    // Write failure to database
                //    var ep = new DynamicParameters();

                //    ep.Add("ExceptionType", e.GetType());
                //    ep.Add("ExceptionMessage", e.Message);
                //    cn.Execute("AddError", ep, commandType: CommandType.StoredProcedure);
                //}
                finally
                {
                    cn.Close();
                }

            }
            return post.PostID;
        }

        public void AddStaticPage(StaticPage staticPage)
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var p = new DynamicParameters();

                try
                {
                    p.Add("ButtonName", staticPage.ButtonName);
                    p.Add("UserID", staticPage.UserID);
                    p.Add("Body", staticPage.Body);
                    p.Add("StaticPageID", DbType.Int32, direction: ParameterDirection.Output);

                    cn.Execute("AddStaticPage", p, commandType: CommandType.StoredProcedure);

                    staticPage.StaticPageID = p.Get<int>("StaticPageID");
                }
                //catch (Exception e)
                //{
                //    // Write failure to database
                //    var ep = new DynamicParameters();

                //    ep.Add("ExceptionType", e.GetType());
                //    ep.Add("ExceptionMessage", e.Message);
                //    cn.Execute("AddError", ep, commandType: CommandType.StoredProcedure);
                //}
                finally
                {
                    cn.Close();
                }

            }
        }

        public void AddTag(int postID, HashTag hashTag)
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var p = new DynamicParameters();

                try
                {
                    p.Add("PostID", postID);
                    p.Add("ActualHashTag", hashTag.ActualHashTag);

                    cn.Execute("AddTag", p, commandType: CommandType.StoredProcedure);
                }
                //catch (Exception e)
                //{
                //    // Write failure to database
                //    var ep = new DynamicParameters();

                //    ep.Add("ExceptionType", e.GetType());
                //    ep.Add("ExceptionMessage", e.Message);
                //    cn.Execute("AddError", ep, commandType: CommandType.StoredProcedure);
                //}
                finally
                {
                    cn.Close();
                }

            }
        }
    }
}
