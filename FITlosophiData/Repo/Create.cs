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
        // Add player to database. Player object is assigned a PlayerID
        public void AddPost(Post post)
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
                    p.Add("YearsPlayed", player.YearsPlayed);
                    p.Add("PrimaryPositionID", player.PrimaryPositionID);
                    p.Add("SecondaryPositionID", player.SecondaryPositionID);
                    p.Add("PlayerID", DbType.Int32, direction: ParameterDirection.Output);

                    cn.Execute("AddPlayer", p, commandType: CommandType.StoredProcedure);

                    player.PlayerID = p.Get<int>("PlayerID");
                }
                //catch (Exception e)
                //{
                //    var ep = new DynamicParameters();

                //    ep.Add("ExceptionType", e.GetType());
                //    ep.Add("ExceptionMessage", e.Message);
                //    ep.Add("Input", String.Format("FirstName = {0}, LastName = {1}, JerseyNumber = {2}," +
                //                                  "TeamID = {3}, LastYearBA = {4}, YearsPlayed = {5}, " +
                //                                  "PrimaryPositionID = {6}, SecondaryPositionID = {7}",
                //        player.FirstName, player.LastName, player.JerseyNumber,
                //        player.TeamID, player.LastYearBA, player.YearsPlayed, player.PrimaryPositionID,
                //        player.SecondaryPositionID));
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
