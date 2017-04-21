<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PriceOfferForm.aspx.cs" Inherits="OutlayCost3.PriceOfferForm" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <div>

      <dx:ASPxGridView ID="AdvertsGridView" runat="server" AutoGenerateColumns="False" DataSourceID="Adverts" KeyFieldName="ads_id" Width="100%">
         <SettingsBehavior AllowFocusedRow="True" ConfirmDelete="True" />
         <SettingsCommandButton RenderMode="Image">
            <NewButton>
               <Image IconID="actions_add_16x16">
               </Image>
            </NewButton>
            <EditButton>
               <Image IconID="edit_edit_16x16">
               </Image>
            </EditButton>
            <DeleteButton>
               <Image IconID="edit_delete_16x16">
               </Image>
            </DeleteButton>
         </SettingsCommandButton>
         <SettingsSearchPanel Visible="True" />
         <SettingsText ConfirmDelete="Подтверждаете удаление?" />
         <Columns>
            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0" Width="60px">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ads_id" ReadOnly="True" Visible="False" VisibleIndex="1">
               <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn Caption="Дата" FieldName="ads_date" VisibleIndex="2" Width="100px">
               <PropertiesDateEdit DisplayFormatString="g" EditFormat="DateTime">
               </PropertiesDateEdit>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="usr_id" Visible="False" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="mater_id" Visible="False" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Продукт" FieldName="mater_name" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Розн. цена" FieldName="retail_price" VisibleIndex="6" Width="100px">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="От" FieldName="from_unit" VisibleIndex="8" Width="60px">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Опт. цена" FieldName="trade_price" VisibleIndex="7" Width="100px">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Ед. изм." FieldName="unit_id" VisibleIndex="10" Width="80px">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Описание" FieldName="mater_desc" VisibleIndex="11">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="Валюта" FieldName="cur_code" VisibleIndex="9" Width="60px">
               <PropertiesComboBox DataSourceID="Currencies" TextField="cur_symbol" ValueField="cur_code">
                  <Columns>
                     <dx:ListBoxColumn Caption="Код" FieldName="cur_code" Visible="False">
                     </dx:ListBoxColumn>
                     <dx:ListBoxColumn Caption="Вид валюты" FieldName="cur_symbol">
                     </dx:ListBoxColumn>
                  </Columns>
               </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
         </Columns>
      </dx:ASPxGridView>

   </div>
   <div>
      <asp:SqlDataSource ID="Adverts" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Adverts] WHERE [ads_id] = @old_ads_id" InsertCommand="INSERT INTO [Adverts] ([ads_date], [usr_id], [mater_id], [mater_name], [retail_price], [from_unit], [trade_price], [cur_code], [unit_id], [mater_desc]) VALUES (@ads_date, @usr_id, @mater_id, @mater_name, @retail_price, @from_unit, @trade_price, @cur_code, @unit_id, @mater_desc)" OldValuesParameterFormatString="old_{0}" SelectCommand="SELECT * FROM [Adverts] WHERE (([usr_id] = @usr_id) AND ([mater_id] = @mater_id))" UpdateCommand="UPDATE [Adverts] SET [ads_date] = @ads_date, [usr_id] = @usr_id, [mater_id] = @mater_id, [mater_name] = @mater_name, [retail_price] = @retail_price, [from_unit] = @from_unit, [trade_price] = @trade_price, [cur_code] = @cur_code, [unit_id] = @unit_id, [mater_desc] = @mater_desc WHERE [ads_id] = @old_ads_id">
         <DeleteParameters>
            <asp:Parameter Name="old_ads_id" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
            <asp:Parameter Name="ads_date" Type="DateTime" />
            <asp:Parameter Name="usr_id" Type="String" />
            <asp:Parameter Name="mater_id" Type="Int32" />
            <asp:Parameter Name="mater_name" Type="String" />
            <asp:Parameter Name="retail_price" Type="Decimal" />
            <asp:Parameter Name="from_unit" Type="Int32" />
            <asp:Parameter Name="trade_price" Type="Decimal" />
            <asp:Parameter Name="cur_code" Type="String" />
            <asp:Parameter Name="unit_id" Type="Int32" />
            <asp:Parameter Name="mater_desc" Type="String" />
         </InsertParameters>
         <SelectParameters>
            <asp:QueryStringParameter Name="usr_id" QueryStringField="usr_id" Type="String" />
            <asp:QueryStringParameter Name="mater_id" QueryStringField="mater_id" Type="Int32" />
         </SelectParameters>
         <UpdateParameters>
            <asp:Parameter Name="ads_date" Type="DateTime" />
            <asp:Parameter Name="usr_id" Type="String" />
            <asp:Parameter Name="mater_id" Type="Int32" />
            <asp:Parameter Name="mater_name" Type="String" />
            <asp:Parameter Name="retail_price" Type="Decimal" />
            <asp:Parameter Name="from_unit" Type="Int32" />
            <asp:Parameter Name="trade_price" Type="Decimal" />
            <asp:Parameter Name="cur_code" Type="String" />
            <asp:Parameter Name="unit_id" Type="Int32" />
            <asp:Parameter Name="mater_desc" Type="String" />
            <asp:Parameter Name="old_ads_id" Type="Int32" />
         </UpdateParameters>
      </asp:SqlDataSource>
      <asp:SqlDataSource ID="Currencies" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" OldValuesParameterFormatString="old_{0}" SelectCommand="SELECT * FROM [Currencies]"></asp:SqlDataSource>
   </div>
</asp:Content>
