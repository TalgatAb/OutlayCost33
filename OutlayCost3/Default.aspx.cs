using DevExpress.Web;
using DevExpress.Web.ASPxTreeList;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Web;
using System.Web.UI;

namespace OutlayCost3
{
   public partial class _Default : Page
   {
      DatabaseHelper helper = new DatabaseHelper();
      static string userId = "Unknown";
      bool bVisible = false;

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

            if (Context.User.Identity.IsAuthenticated)
            {
               userId = Context.User.Identity.GetUserId();
               var um = HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>();
               bVisible = um.IsInRole(userId, "Admin") || um.IsInRole(userId, "Company");
               //MaterialsGridView.Columns["avg_price_column"].Visible = !bVisible;
            }
            MaterialsGridView.Columns["price_offer_column"].Visible = bVisible;
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

      protected string GetRowValue(GridViewDataItemTemplateContainer container)
      {
         return container.Grid.GetRowValuesByKeyValue(container.KeyValue, "mater_id").ToString();
      }

      protected void hyperLink_Init(object sender, EventArgs e)
      {
         ASPxHyperLink link = (ASPxHyperLink)sender;

         GridViewDataItemTemplateContainer templateContainer = (GridViewDataItemTemplateContainer)link.NamingContainer;

         int rowVisibleIndex = templateContainer.VisibleIndex;
         int mater_id = templateContainer.Grid.GetRowValues(rowVisibleIndex, "mater_id") as int? ?? 0;
         string contentUrl = string.Format("{0}?mater_id={1}&usr_id={2}", "PriceOffers.aspx", mater_id, userId);

         link.NavigateUrl = "javascript:void(0);";
         link.Text = string.Format("Кол-во: {0}", helper.GetPriceOffer(mater_id, userId));
         link.ClientSideEvents.Click = string.Format("function(s, e) {{ OnMoreInfoClick('{0}'); }}", contentUrl);
      }

   }
}