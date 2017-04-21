<%@ Page Title="Домашняя" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OutlayCost3._Default" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <style type="text/css">
      .highlight {
         background-color: antiquewhite;
      }
   </style>

   <script type="text/javascript">
      function OnMoreInfoClick(contentUrl) {
         clientPopupControl.SetContentUrl(contentUrl);
         clientPopupControl.Show();
      }
   </script>

   <div>

      <dx:ASPxSplitter ID="MainSplitter" runat="server" Height="100%" Width="100%">
         <Panes>
            <dx:SplitterPane ScrollBars="Auto" Size="30%" AutoHeight="True">
               <ContentCollection>
                  <dx:SplitterContentControl runat="server">
                     <table style="width: 100%; float: right">
                        <tr>
                           <td style="width: 80%">
                              <dx:ASPxTextBox ID="searchText" runat="server" Width="100%" NullText="Введите текст для поиска...">
                              </dx:ASPxTextBox>
                           </td>
                           <td style="width: 20%; padding-left: 10px">
                              <dx:ASPxButton ID="searchBtn" runat="server" AutoPostBack="false" Text="Поиск">
                                 <ClientSideEvents Click="function(s, e) {
	SectionTreeList.PerformCallback();
}" />
                              </dx:ASPxButton>
                           </td>
                        </tr>
                     </table>
                     <dx:ASPxTreeList ID="SectionTreeList" runat="server" AutoGenerateColumns="False" DataSourceID="SectionTrees" KeyFieldName="sec_id" ParentFieldName="par_id" Width="100%" OnCustomCallback="SectionTreeList_CustomCallback">
                        <Columns>
                           <dx:TreeListTextColumn FieldName="par_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                           </dx:TreeListTextColumn>
                           <dx:TreeListTextColumn FieldName="code" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                           </dx:TreeListTextColumn>
                           <dx:TreeListTextColumn Caption="Разделы" FieldName="sec_name" ShowInCustomizationForm="True" VisibleIndex="3">
                           </dx:TreeListTextColumn>
                           <dx:TreeListTextColumn FieldName="sec_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="0">
                           </dx:TreeListTextColumn>
                        </Columns>
                        <SettingsBehavior AllowFocusedNode="True" AllowEllipsisInText="True" />
                        <SettingsText ConfirmDelete="Подтверждаете удаление?" />
                        <ClientSideEvents FocusedNodeChanged="function(s, e) {
	MaterialsGridView.PerformCallback(s.GetFocusedNodeKey());
}" />
                     </dx:ASPxTreeList>
                  </dx:SplitterContentControl>
               </ContentCollection>
            </dx:SplitterPane>
            <dx:SplitterPane Size="70%" ScrollBars="Auto" AutoHeight="True">
               <ContentCollection>
                  <dx:SplitterContentControl runat="server">
                     <dx:ASPxGridView ID="MaterialsGridView" runat="server" AutoGenerateColumns="False" ClientInstanceName="MaterialsGridView" DataSourceID="Materials" KeyFieldName="mater_id" OnCustomCallback="MaterialsGridView_CustomCallback" Width="100%">
                        <SettingsPager PageSize="25">
                        </SettingsPager>
                        <SettingsBehavior AllowFocusedRow="True" ConfirmDelete="True" />
                        <SettingsSearchPanel Visible="True" />
                        <SettingsText ConfirmDelete="Подтверждаете удаление?" />
                        <Columns>
                           <dx:GridViewDataTextColumn FieldName="mater_id" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="0">
                              <EditFormSettings Visible="False" />
                           </dx:GridViewDataTextColumn>
                           <dx:GridViewDataTextColumn FieldName="sec_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                           </dx:GridViewDataTextColumn>
                           <dx:GridViewDataTextColumn Caption="Код" FieldName="code" ShowInCustomizationForm="True" VisibleIndex="2" Width="100px">
                           </dx:GridViewDataTextColumn>
                           <dx:GridViewDataTextColumn Caption="Наименование" FieldName="mater_name" ShowInCustomizationForm="True" VisibleIndex="3">
                           </dx:GridViewDataTextColumn>
                           <dx:GridViewDataTextColumn Caption="Ед. изм." FieldName="unit_id" ShowInCustomizationForm="True" VisibleIndex="4" Width="60px">
                           </dx:GridViewDataTextColumn>
                           <dx:GridViewDataTextColumn Caption="Класс груза" FieldName="class_weight" ShowInCustomizationForm="True" Visible="False" VisibleIndex="5">
                           </dx:GridViewDataTextColumn>
                           <dx:GridViewDataTextColumn Caption="Масса брутто, кг" FieldName="gross_weight" ShowInCustomizationForm="True" VisibleIndex="6" Width="100px">
                           </dx:GridViewDataTextColumn>
                           <dx:GridViewDataTextColumn Caption="Отпускная цена, тг" FieldName="release_price" ShowInCustomizationForm="True" VisibleIndex="7" Width="100px">
                           </dx:GridViewDataTextColumn>
                           <dx:GridViewDataTextColumn Caption="Сметная цена, тг" FieldName="calculate_price" ShowInCustomizationForm="True" VisibleIndex="8" Width="100px">
                           </dx:GridViewDataTextColumn>
                           <dx:GridViewDataTextColumn FieldName="reg_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="9">
                           </dx:GridViewDataTextColumn>
                           <dx:GridViewDataTextColumn Caption="Ср. цена &#9759" ShowInCustomizationForm="True" VisibleIndex="10" Name="avg_price_column">
                              <DataItemTemplate>
                                 <a id="view_avg_price" target="_blank" href="Default2.aspx?id=<%# GetRowValue(Container)%>"><%# Eval("avg_price").ToString() %></a>
                              </DataItemTemplate>
                           </dx:GridViewDataTextColumn>

                           <dx:GridViewDataTextColumn Caption="Ср. цена" FieldName="avg_price" ShowInCustomizationForm="True" Visible="False" VisibleIndex="11">
                           </dx:GridViewDataTextColumn>

                           <dx:GridViewDataTextColumn Caption="Ценов.предл. &#9759" ShowInCustomizationForm="True" VisibleIndex="12" Name="price_offer_column">
                              <DataItemTemplate>
                                 <dx:ASPxHyperLink ID="hyperLink" runat="server" OnInit="hyperLink_Init">
                                 </dx:ASPxHyperLink>
                                 <%--<a id="price_offer" target="_blank" href="PriceOffers.aspx?mater_id=<%# GetRowValue(Container)%>&usrId=<%# Context.User.Identity.GetUserId() %>"><%# Eval("avg_price").ToString() %></a>--%>
                              </DataItemTemplate>
                           </dx:GridViewDataTextColumn>
                        </Columns>
                     </dx:ASPxGridView>
                  </dx:SplitterContentControl>
               </ContentCollection>
            </dx:SplitterPane>
         </Panes>
      </dx:ASPxSplitter>

   </div>
   <div>
      <asp:SqlDataSource ID="SectionTrees" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" OldValuesParameterFormatString="old_{0}" SelectCommand="SELECT * FROM [SectionTrees]"></asp:SqlDataSource>
      <asp:SqlDataSource ID="Materials" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Materials] WHERE [mater_id] = @old_mater_id" InsertCommand="INSERT INTO [Materials] ([sec_id], [code], [mater_name], [unit_id], [class_weight], [gross_weight], [release_price], [calculate_price], [reg_id], [avg_price]) VALUES (@sec_id, @code, @mater_name, @unit_id, @class_weight, @gross_weight, @release_price, @calculate_price, @reg_id, @avg_price)" OldValuesParameterFormatString="old_{0}" SelectCommand="GetMaterials" UpdateCommand="UPDATE [Materials] SET [sec_id] = @sec_id, [code] = @code, [mater_name] = @mater_name, [unit_id] = @unit_id, [class_weight] = @class_weight, [gross_weight] = @gross_weight, [release_price] = @release_price, [calculate_price] = @calculate_price, [reg_id] = @reg_id, [avg_price] = @avg_price WHERE [mater_id] = @old_mater_id" SelectCommandType="StoredProcedure">
         <DeleteParameters>
            <asp:Parameter Name="old_mater_id" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
            <asp:Parameter Name="sec_id" Type="Int32" />
            <asp:Parameter Name="code" Type="String" />
            <asp:Parameter Name="mater_name" Type="String" />
            <asp:Parameter Name="unit_id" Type="String" />
            <asp:Parameter Name="class_weight" Type="Int32" />
            <asp:Parameter Name="gross_weight" Type="Decimal" />
            <asp:Parameter Name="release_price" Type="Decimal" />
            <asp:Parameter Name="calculate_price" Type="Decimal" />
            <asp:Parameter Name="reg_id" Type="String" />
            <asp:Parameter Name="avg_price" Type="Decimal" />
         </InsertParameters>
         <SelectParameters>
            <asp:SessionParameter Name="sec_id" SessionField="sec_id" Type="Int32" />
            <asp:SessionParameter DefaultValue="01" Name="reg_id" SessionField="reg_id" Type="String" />
         </SelectParameters>
         <UpdateParameters>
            <asp:Parameter Name="sec_id" Type="Int32" />
            <asp:Parameter Name="code" Type="String" />
            <asp:Parameter Name="mater_name" Type="String" />
            <asp:Parameter Name="unit_id" Type="String" />
            <asp:Parameter Name="class_weight" Type="Int32" />
            <asp:Parameter Name="gross_weight" Type="Decimal" />
            <asp:Parameter Name="release_price" Type="Decimal" />
            <asp:Parameter Name="calculate_price" Type="Decimal" />
            <asp:Parameter Name="reg_id" Type="String" />
            <asp:Parameter Name="old_mater_id" Type="Int32" />
            <asp:Parameter Name="avg_price" Type="Decimal" />
         </UpdateParameters>
      </asp:SqlDataSource>
   </div>
   <div>
      <dx:ASPxPopupControl ID="popupControl" runat="server" ClientInstanceName="clientPopupControl" CloseAction="CloseButton" Height="500px" Modal="True" Width="1000px" PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" AllowDragging="True" AllowResize="True" CloseOnEscape="True" HeaderText="Ценовое предложение">
         <ContentCollection>
            <dx:PopupControlContentControl runat="server">
            </dx:PopupControlContentControl>
         </ContentCollection>
      </dx:ASPxPopupControl>
   </div>
</asp:Content>
