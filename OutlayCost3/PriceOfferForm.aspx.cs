using System;
using Microsoft.AspNet.Identity;

namespace OutlayCost3
{
   public partial class PriceOfferForm : System.Web.UI.Page
   {
      static string usrId = string.Empty;
      protected void Page_Load(object sender, EventArgs e)
      {
         usrId = Context.User.Identity.GetUserId();

      }
   }
}