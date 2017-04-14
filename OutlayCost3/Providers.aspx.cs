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
         int rowIndex = int.Parse(e.Parameters);
         string reg_id = RegionsGridView.GetRowValues(rowIndex, "reg_id").ToString();
         Session["reg_id"] = reg_id;
         UserProfilesGridView.DataBind();
      }
   }
}