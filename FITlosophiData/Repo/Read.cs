﻿using System;
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
    public class Read
    {
        // Retrieves a list of all players that belong to a team
        public List<Post> GetAllPostSummaries()
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var posts = new List<Post>();

                try
                {
                    posts =
                        cn.Query<Post>("GetAllPostSummaries", commandType: CommandType.StoredProcedure).ToList();


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

                return posts;
            }
        }


        public List<Category> GetAllCategories()
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var categories = new List<Category>();

                try
                {
                    categories =
                        cn.Query<Category>("GetAllCategories", commandType: CommandType.StoredProcedure).ToList();


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

                return categories;
            }
        }


        public List<StaticPage> GetAllPageSummaries()
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var staticpages = new List<StaticPage>();

                try
                {
                    staticpages =
                        cn.Query<StaticPage>("GetAllPageSummaries", commandType: CommandType.StoredProcedure).ToList();


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

                return staticpages;
            }
        }


        public List<HashTag> GetAllTags()
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var tags = new List<HashTag>();

                try
                {
                    tags =
                        cn.Query<HashTag>("GetAllTags", commandType: CommandType.StoredProcedure).ToList();


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

                return tags;
            }
        }


        public List<Post> GetAllPostsByCategory(int categoryID)
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var posts = new List<Post>();

                try
                {
                    var p = new DynamicParameters();
                    p.Add("@CategoryID", categoryID);
                    posts =
                        cn.Query<Post>("GetAllPostsByCategory", commandType: CommandType.StoredProcedure).ToList();

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

                return posts;
            }
        }


        public Post GetPostByID(int postid)
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var post = new Post();

                try
                {
                    var p = new DynamicParameters();
                    p.Add("@PostID", postid);
                    post =
                        cn.Query<Post>("GetPostByID", commandType: CommandType.StoredProcedure).FirstOrDefault();


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

                return post;
            }
        }


        public StaticPage GetPageByID(int staticPageID)
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var page = new StaticPage();

                try
                {
                    var p = new DynamicParameters();
                    p.Add("@StaticPageID", staticPageID);
                    page =
                        cn.Query<StaticPage>("GetPageByID", commandType: CommandType.StoredProcedure).FirstOrDefault();


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

                return page;
            }
        }



        public List<Post> GetPostsByTagID(int tagID)
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var posts = new List<Post>();

                try
                {
                    var p = new DynamicParameters();
                    p.Add("@TagID", tagID);
                    posts =
                        cn.Query<Post>("GetPostsByTagID", commandType: CommandType.StoredProcedure).ToList();


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

                return posts;
            }
        }

        public List<Post> GetTagsByPostID(int postID)
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var hashTags = new List<HashTag>();

                try
                {
                    var p = new DynamicParameters();
                    p.Add("@PostID", postID);
                    hashTags =
                        cn.Query<Post>("GetTagsByPostID", commandType: CommandType.StoredProcedure).ToList();


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

                return hashTags;
            }
        }




    }
}
