using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using FITlosophiData.Config;

namespace FITlosophiData.Repo
{
    public class Delete
    {
        public void DeleteAllTagsByPostID(int postID)
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var p = new DynamicParameters();

                try
                {
                    p.Add("PostID", postID);

                    cn.Execute("DeleteAllTagsByPostID", p, commandType: CommandType.StoredProcedure);

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

        public void DeletePage(int staticPageID)
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var p = new DynamicParameters();

                try
                {
                    p.Add("StaticPageID", staticPageID);

                    cn.Execute("DeletePage", p, commandType: CommandType.StoredProcedure);

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

        public void DeletePost(int postID)
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var p = new DynamicParameters();

                try
                {
                    p.Add("PostID", postID);

                    cn.Execute("DeletePost", p, commandType: CommandType.StoredProcedure);

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
