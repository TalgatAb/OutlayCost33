using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OutlayCost3
{
   public partial class Providers : System.Web.UI.Page
   {
      protected void Page_Load(object sender, EventArgs e)
      {

      }

      protected void UserProfilesGridView_CustomCallback(object sender, DevExpress.Web.ASPxGridViewCustomCallbackEventArgs e)
      {
         if (e.Parameters.Length > 0)
         {
            int rowIndex = int.Parse(e.Parameters);
            object reg_id = RegionsGridView.GetRowValues(rowIndex, "reg_id");
            Session["reg_id"] = reg_id;
            UserProfilesGridView.DataBind();
         }
      }
   }
}