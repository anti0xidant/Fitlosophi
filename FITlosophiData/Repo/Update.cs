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
                    p.Add("ButtonName", staticPage.ButtonName);
                    p.Add("UserID", staticPage.UserID);
                    p.Add("Body", staticPage.Body);
                    p.Add("StaticPageID", DbType.Int32, direction: ParameterDirection.Output);

                    cn.Execute("AddStaticPage", p, commandType: CommandType.StoredProcedure);

                    staticPage.StaticPageID = p.Get<int>("StaticPageID");
                }
                finally
                {
                    cn.Close();
                }
            }
        }
    }
}
