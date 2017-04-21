using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OutlayCost3
{
   public partial class PriceOffers : System.Web.UI.Page
   {
      public static string UsrId { get; set; }
      public static int MaterId { get; set; }
      DatabaseHelper helper = new DatabaseHelper();

      protected void Page_Load(object sender, EventArgs e)
      {
         if (!IsPostBack)
         {
            UsrId = Request.QueryString["usr_id"].ToString();
            MaterId = 0;
            if (int.TryParse(Request.QueryString["mater_id"].ToString(), out int result))
            {
               MaterId = result;
            }
         }
      }

      public string GetCompanyName() {
         var Company = helper.GetCompany(UsrId);
         return Company.CompanyName;
      }
      protected void AdvertsGridView_InitNewRow(object sender, DevExpress.Web.Data.ASPxDataInitNewRowEventArgs e)
      {
         var Products = helper.GetMaterials(MaterId);
         e.NewValues["mater_id"] = MaterId;
         e.NewValues["usr_id"] = UsrId;
         e.NewValues["ads_date"] = DateTime.Now;
         foreach (var m in Products)
         {
            e.NewValues["mater_name"] = m.MaterName;
            e.NewValues["unit_id"] = m.UnitId;
         }
      }

      protected void AdvertsGridView_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
      {
         e.NewValues["mater_id"] = MaterId;
         e.NewValues["usr_id"] = UsrId;
      }
   }
}