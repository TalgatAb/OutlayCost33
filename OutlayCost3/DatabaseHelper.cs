using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace OutlayCost3
{
   public class DatabaseHelper
   {
      static string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

      public string SectionTreesSelectSql()
      {
         return "SELECT * FROM dbo.SectionTrees";
      }

   }
}