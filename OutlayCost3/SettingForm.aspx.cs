using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OutlayCost3
{
   public partial class SettingForm : System.Web.UI.Page
   {
      protected void Page_Load(object sender, EventArgs e)
      {

      }

      protected void PostBtn_Click(object sender, EventArgs e)
      {
         if (Context.User.Identity.IsAuthenticated)
         {
            string usrId = Context.User.Identity.GetUserId();

         }
         
      }
   }
}