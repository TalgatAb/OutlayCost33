using DevExpress.Web;
using DevExpress.Web.ASPxTreeList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OutlayCost3
{
   public partial class _Default : Page
   {
      protected void Page_Load(object sender, EventArgs e)
      {
         if (!IsPostBack)
         {
            SectionTreeList.DataBind();
            SectionTreeList.ExpandToLevel(1);
            TreeListNode node = SectionTreeList.FindNodeByFieldValue("code", "21-020101");
            if (node != null)
            {
               node.Focus();
               Session["sec_id"] = node.Key;
            }
            MaterialsGridView.DataBind();
         }
      }

      protected void MaterialsGridView_CustomCallback(object sender, DevExpress.Web.ASPxGridViewCustomCallbackEventArgs e)
      {
         Session["sec_id"] = e.Parameters;
         MaterialsGridView.DataBind();
      }

      protected void SectionTreeList_CustomCallback(object sender, TreeListCustomCallbackEventArgs e)
      {

      }

   }
}