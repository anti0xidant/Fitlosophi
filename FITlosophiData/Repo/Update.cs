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
    public class Update
    {
        public void EditPost(Post post)
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var p = new DynamicParameters();

                try
                {
                    p.Add("PostID", post.PostID);
                    p.Add("CategoryID", post.CategoryID);
                    p.Add("UserID", post.UserID);
                    p.Add("Title", post.Title);
                    p.Add("CoverImgURL", post.CoverImgURL);
                    p.Add("Body", post.Body);
                    p.Add("HasSchedule", post.HasSchedule);
                    p.Add("StartDate", post.StartDate);
                    p.Add("EndDate", post.EndDate);

                    cn.Execute("EditPost", p, commandType: CommandType.StoredProcedure);

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

        public void EditPage(StaticPage staticPage)
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var p = new DynamicParameters();

                try
                {
                    p.Add("StaticPageID", staticPage.StaticPageID);
                    p.Add("ButtonName", staticPage.ButtonName);
                    p.Add("UserID", staticPage.UserID);
                    p.Add("Body", staticPage.Body);

                    cn.Execute("EditPage", p, commandType: CommandType.StoredProcedure);

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

        public void PublishPage(int staticPageID)
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var p = new DynamicParameters();

                try
                {
                    p.Add("StaticPageID", staticPageID);

                    cn.Execute("PublishPage", p, commandType: CommandType.StoredProcedure);

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

        public void PublishPost(Post post)
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var p = new DynamicParameters();

                try
                {
                    p.Add("PostID", post.PostID);
                    p.Add("HasSchedule", post.HasSchedule);
                    p.Add("StartDate", post.StartDate);
                    p.Add("EndDate", post.EndDate);

                    cn.Execute("PublishPost", p, commandType: CommandType.StoredProcedure);

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
