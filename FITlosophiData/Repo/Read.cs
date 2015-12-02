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
    public class Read
    {
        // Retrieves a list of all players that belong to a team
        public List<Player> GetAllPlayers()
        {
            using (SqlConnection cn = new SqlConnection(Settings.ConnectionString))
            {
                var players = new List<Player>();

                try
                {
                    players =
                        cn.Query<Player>("ViewAllPlayers", commandType: CommandType.StoredProcedure).ToList();

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

                return players;
            }
        }
    }
}
