﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Configuration;

namespace FITlosophiData.Config
{
    public class Settings
    {
        private static string _connectionString;

        public static string ConnectionString
        {
            get
            {
                if (string.IsNullOrEmpty(_connectionString))
                {
                    _connectionString = WebConfigurationManager.ConnectionStrings["HealthBlogDB"].ConnectionString;
                }

                return _connectionString;
            }
        }
    }
}
