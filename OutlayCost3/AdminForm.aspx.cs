using DevExpress.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using OutlayCost3.Models;

namespace OutlayCost3
{
   public partial class AdminForm : System.Web.UI.Page
   {
      private static DataTable UsersTable = null;
      private static DataTable RolesTable = null;
      private static DataTable UserInRoles = null;

      int errorLogId = 0;
      protected void Page_Load(object sender, EventArgs e)
      {
         if (!IsPostBack)
         {
            AdminPageControl.ActiveTabIndex = 0;
            //LoadUsersData();
         }

      }

      private void LoadUsersData()
      {
         if (UsersTable == null)
         {
            UsersTable = new DataTable("Users");

            UsersTable.Columns.Add("Id", typeof(string));
            UsersTable.Columns.Add("UserName", typeof(string));
            UsersTable.Columns.Add("Email", typeof(string));
            UsersTable.Columns.Add("PhoneNumber", typeof(string));
            DataColumn[] keys = new DataColumn[] { UsersTable.Columns[0] };
            UsersTable.PrimaryKey = keys;
         }
         else UsersTable.Rows.Clear();

         var context = new ApplicationDbContext();
         var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
         var users = userManager.Users;
         foreach (var user in users)
         {
            var row = UsersTable.NewRow();
            row["Id"] = user.Id;
            row["UserName"] = user.UserName;
            row["Email"] = user.Email;
            row["PhoneNumber"] = user.PhoneNumber;
            UsersTable.Rows.Add(row);
            UsersTable.AcceptChanges();
         }
         UsersGridView.DataSource = UsersTable;
         UsersGridView.DataBind();

         MUsersGridView.DataSource = UsersTable;
         MUsersGridView.DataBind();

         if (RolesTable == null)
         {
            RolesTable = new DataTable("Roles");
            RolesTable.Columns.Add("Id", typeof(string));
            RolesTable.Columns.Add("Name", typeof(string));
            RolesTable.PrimaryKey = new DataColumn[] { RolesTable.Columns["Id"] };
         }
         else RolesTable.Rows.Clear();

         var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
         var roles = roleManager.Roles;
         foreach (var role in roles)
         {
            var row = RolesTable.NewRow();
            row["Id"] = role.Id;
            row["Name"] = role.Name;
            RolesTable.Rows.Add(row);
            RolesTable.AcceptChanges();
         }
         RolesGridView.DataSource = RolesTable;
         RolesGridView.DataBind();

         MRolesGridView.DataSource = RolesTable;
         MRolesGridView.DataBind();

         if (UserInRoles == null)
         {
            UserInRoles = new DataTable("UserInRoles");
            UserInRoles.Columns.Add("Id", typeof(string));
            UserInRoles.Columns.Add("Name", typeof(string));
            UserInRoles.PrimaryKey = new DataColumn[] { UserInRoles.Columns["Id"] };
         }
         MUserInRolesGridView.DataSource = UserInRoles;

      }

      protected void MUserInRolesGridView_CustomCallback(object sender, DevExpress.Web.ASPxGridViewCustomCallbackEventArgs e)
      {
         int rowIndex = int.Parse(e.Parameters);
         string userId = string.Empty;
         string role = string.Empty;
         string roleId = string.Empty;

         if (rowIndex >= 0)
            Session["UserId"] = MUsersGridView.GetRowValues(int.Parse(e.Parameters), "Id").ToString();
         else
         {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();

            //var context = new ApplicationDbContext();
            //var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
            //var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));

            if (rowIndex == -2)
            {
               if (MRolesGridView.FocusedRowIndex > -1 && MUsersGridView.FocusedRowIndex > -1)
               {
                  role = MRolesGridView.GetRowValues(MRolesGridView.FocusedRowIndex, "Name").ToString();
                  userId = MUsersGridView.GetRowValues(MUsersGridView.FocusedRowIndex, "Id").ToString();
                  if (!manager.IsInRole(userId, role))
                  {
                     IdentityResult result = manager.AddToRole(userId, role);
                     if (!result.Succeeded)
                        throw new Exception(result.Errors.FirstOrDefault());
                  }
               }
            }
            else if (rowIndex == -3)
            {
               if (MUsersGridView.FocusedRowIndex > -1)
               {
                  userId = MUsersGridView.GetRowValues(MUsersGridView.FocusedRowIndex, "Id").ToString();
                  List<Object> selectedItems = MRolesGridView.GetSelectedFieldValues(new string[] { "Id", "Name" });
                  foreach (object[] selectedItem in selectedItems)
                  {
                     role = selectedItem[1].ToString();
                     if (!manager.IsInRole(userId, role))
                     {
                        IdentityResult result = manager.AddToRole(userId, role);
                        if (!result.Succeeded)
                           throw new Exception(result.Errors.FirstOrDefault());
                     }
                  }
               }
            }
            else if (rowIndex == -4)
            {
               if (MUsersGridView.FocusedRowIndex > -1 && MUserInRolesGridView.FocusedRowIndex > -1)
               {
                  userId = MUsersGridView.GetRowValues(MUsersGridView.FocusedRowIndex, "Id").ToString();
                  roleId = MUserInRolesGridView.GetRowValues(MUserInRolesGridView.FocusedRowIndex, "RoleId").ToString();
                  var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(new ApplicationDbContext()));
                  role = roleManager?.FindById(roleId)?.Name ?? string.Empty;

                  if (manager.IsInRole(userId, role))
                  {
                     IdentityResult result = manager.RemoveFromRole(userId, role);
                     if (!result.Succeeded)
                        throw new Exception(result.Errors.FirstOrDefault());
                  }
               }
            }
            else if (rowIndex == -5)
            {
               if (MUsersGridView.FocusedRowIndex > -1 && MUserInRolesGridView.VisibleRowCount > 0)
               {
                  userId = MUsersGridView.GetRowValues(MUsersGridView.FocusedRowIndex, "Id").ToString();
                  var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(new ApplicationDbContext()));
                  List<Object> selectedItems = MUserInRolesGridView.GetSelectedFieldValues(new string[] { "UserId", "RoleId" });
                  foreach (object[] selectedItem in selectedItems)
                  {
                     roleId = selectedItem[1].ToString();
                     role = roleManager?.FindById(roleId)?.Name ?? string.Empty;
                     if (manager.IsInRole(userId, role))
                     {
                        IdentityResult result = manager.RemoveFromRole(userId, role);
                        if (!result.Succeeded)
                           throw new Exception(result.Errors.FirstOrDefault());
                     }
                  }
               }
            }

            //context.SaveChanges();
         }
         MUserInRolesGridView.DataBind();
      }

      protected void UsersGridView_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
      {
         ASPxGridView grid = sender as ASPxGridView;

         var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
         var user = manager.FindById(e.Keys["Id"].ToString());
         if (user != null)
         {
            user.Email = e.NewValues["Email"].ToString();
            user.PhoneNumber = e.NewValues["PhoneNumber"]?.ToString() ?? string.Empty;
            IdentityResult result = manager.Update(user);
            if (!result.Succeeded)
            {
               grid.CancelEdit();
               e.Cancel = true;
               throw new Exception(result.Errors.FirstOrDefault());
            }
         }
         else
         {
            grid.CancelEdit();
            e.Cancel = true;
         }
         grid.DataBind();

         //var context = new ApplicationDbContext();
         //var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
         //var user = userManager.FindByName(e.OldValues["UserName"].ToString());
         //if (user != null)
         //{
         //   user.UserName = e.NewValues["UserName"].ToString();
         //   user.Email = e.NewValues["Email"].ToString();
         //   user.PhoneNumber = e.NewValues["PhoneNumber"].ToString();
         //   var result = userManager.Update(user);
         //   if (result.Succeeded)
         //   {
         //      var row = UsersTable.Rows.Find(user.Id);
         //      if (row != null)
         //      {
         //         row["UserName"] = user.UserName;
         //         row["PhoneNumber"] = user.PhoneNumber;
         //         row["Email"] = user.Email;
         //         UsersTable.AcceptChanges();
         //         context.SaveChanges();
         //      }
         //   }
         //}
         //grid.CancelEdit();
         //e.Cancel = true;
         //grid.DataSource = UsersTable;
         //grid.DataBind();
      }

      protected void UsersGridView_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
      {
         ASPxGridView grid = sender as ASPxGridView;
         var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
         var user = new ApplicationUser() { UserName = e.NewValues["Email"].ToString(), Email = e.NewValues["Email"].ToString(), PhoneNumber = e.NewValues["PhoneNumber"]?.ToString() ?? string.Empty };
         IdentityResult result = manager.Create(user, "Password@123");
         grid.CancelEdit();
         e.Cancel = true;
         if (!result.Succeeded)
            throw new Exception(result.Errors.FirstOrDefault());

         grid.DataBind();
      }

      protected void UsersGridView_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
      {
         ASPxGridView grid = sender as ASPxGridView;
         var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
         var user = manager.FindById(e.Keys["Id"].ToString());
         grid.CancelEdit();
         e.Cancel = true;
         if (user != null)
         {
            IdentityResult result = manager.Delete(user);
            if (!result.Succeeded)
               throw new Exception(result.Errors.FirstOrDefault());
         }
         grid.DataBind();

         //var context = new ApplicationDbContext();
         //var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
         //var user = userManager.FindById(e.Keys["Id"].ToString());
         //if (user != null)
         //{
         //   var result = userManager.Delete(user);
         //   if (result.Succeeded)
         //   {
         //      var row = UsersTable.Rows.Find(e.Keys["Id"].ToString());
         //      if (row != null)
         //      {
         //         UsersTable.Rows.Remove(row);
         //         UsersTable.AcceptChanges();
         //         context.SaveChanges();
         //      }
         //   }
         //}
         //grid.DataSource = UsersTable;
         //grid.DataBind();
      }

      protected void UsersGridView_RowValidating(object sender, DevExpress.Web.Data.ASPxDataValidationEventArgs e)
      {
         ASPxGridView grid = sender as ASPxGridView;
         if (e.NewValues["Email"] == null)
            e.Errors[grid.Columns["Email"]] = "Обязательное поле для заполнения!";

         if (e.Errors.Count > 0)
            e.RowError = "Пожалуйста, исправьте все ошибки!";
      }

      protected void RolesGridView_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
      {
         ASPxGridView grid = sender as ASPxGridView;

         var context = new ApplicationDbContext();
         var manager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
         var role = new IdentityRole(e.NewValues["Name"].ToString());
         IdentityResult result = manager.Create(role);
         grid.CancelEdit();
         e.Cancel = true;
         if (!result.Succeeded)
            throw new Exception(result.Errors.FirstOrDefault());

         context.SaveChanges();
         grid.DataBind();
      }

      protected void RolesGridView_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
      {
         ASPxGridView grid = sender as ASPxGridView;

         var context = new ApplicationDbContext();
         var manager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
         var role = manager.FindById(e.Keys["Id"].ToString());
         if (role != null)
         {
            role.Name = e.NewValues["Name"].ToString();
            IdentityResult result = manager.Update(role);
            if (!result.Succeeded)
            {
               grid.CancelEdit();
               e.Cancel = true;
               throw new Exception(result.Errors.FirstOrDefault());
            }
            context.SaveChanges();
         }
         else
         {
            grid.CancelEdit();
            e.Cancel = true;
         }
         grid.DataBind();
      }

      protected void RolesGridView_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
      {
         ASPxGridView grid = sender as ASPxGridView;

         var context = new ApplicationDbContext();
         var manager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
         var role = manager.FindById(e.Keys["Id"].ToString());
         grid.CancelEdit();
         e.Cancel = true;
         if (role != null)
         {
            IdentityResult result = manager.Delete(role);
            if (!result.Succeeded)
               throw new Exception(result.Errors.FirstOrDefault());

            context.SaveChanges();
         }
         grid.DataBind();
      }

      protected void RolesGridView_RowValidating(object sender, DevExpress.Web.Data.ASPxDataValidationEventArgs e)
      {
         ASPxGridView grid = sender as ASPxGridView;
         if (e.NewValues["Name"] == null)
            e.Errors[grid.Columns["Name"]] = "Обязательное поле для заполнения!";

         if (e.Errors.Count > 0)
            e.RowError = "Пожалуйста, исправьте все ошибки!";
      }

      protected void ErrMsgCallbackPanel_Callback(object sender, CallbackEventArgsBase e)
      {
         int rowIndex = int.Parse(e.Parameter);
         if (rowIndex > -1)
         {
            ErrMsgMemo.Text = ErrorLogGridView.GetRowValues(int.Parse(e.Parameter), "ErrorMessage").ToString();
         }
      }

      protected void UsersGridView_CustomErrorText(object sender, ASPxGridViewCustomErrorTextEventArgs e)
      {
         e.ErrorText = e.Exception.Message;
         var lineNumber = new System.Diagnostics.StackTrace(e.Exception, true).GetFrame(0).GetFileLineNumber();
         AppUtils.AddErrorLog(e.Exception.HResult, e.Exception.Source, $"{e.Exception.Message} - {e.Exception.StackTrace}",
            Context.User.Identity.GetUserName(), out errorLogId, lineNumber, -1, -1);
      }

      protected void RolesGridView_CustomErrorText(object sender, ASPxGridViewCustomErrorTextEventArgs e)
      {
         e.ErrorText = e.Exception.Message;
         var lineNumber = new System.Diagnostics.StackTrace(e.Exception, true).GetFrame(0).GetFileLineNumber();
         AppUtils.AddErrorLog(e.Exception.HResult, e.Exception.Source, $"{e.Exception.Message} - {e.Exception.StackTrace}",
            Context.User.Identity.GetUserName(), out errorLogId, lineNumber, -1, -1);
      }

      protected void MUserInRolesGridView_CustomErrorText(object sender, ASPxGridViewCustomErrorTextEventArgs e)
      {
         e.ErrorText = e.Exception.Message;
         var lineNumber = new System.Diagnostics.StackTrace(e.Exception, true).GetFrame(0).GetFileLineNumber();
         AppUtils.AddErrorLog(e.Exception.HResult, e.Exception.Source, $"{e.Exception.Message} - {e.Exception.StackTrace}",
            Context.User.Identity.GetUserName(), out errorLogId, lineNumber, -1, -1);
      }

      protected void UsersInfoGridView_BeforePerformDataSelect(object sender, EventArgs e)
      {
         Session["usr_id"] = (sender as ASPxGridView).GetMasterRowKeyValue();
      }

      protected void UsersInfoGridView_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
      {
         e.NewValues["usr_id"] = Session["usr_id"];
      }

      protected void UsersInfoGridView_RowValidating(object sender, DevExpress.Web.Data.ASPxDataValidationEventArgs e)
      {
         ASPxGridView grid = sender as ASPxGridView;
         if (e.NewValues["usr_fio"] == null)
            e.Errors[grid.Columns["usr_fio"]] = "Обязательное поле для заполнения!";
         if (e.NewValues["dep_id"] == null)
            e.Errors[grid.Columns["dep_id"]] = "Обязательное поле для заполнения!";

         if (e.Errors.Count > 0)
            e.RowError = "Пожалуйста, исправьте все ошибки!";
      }
   }
}