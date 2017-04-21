<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Providers.aspx.cs" Inherits="OutlayCost3.Providers" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <dx:ASPxSplitter ID="ProviderSplitter" runat="server">
            <Panes>
                <dx:SplitterPane AutoHeight="True" Size="20%">
                    <ContentCollection>
                        <dx:SplitterContentControl runat="server">
                            <dx:ASPxGridView ID="RegionsGridView" runat="server" AutoGenerateColumns="False" ClientInstanceName="RegionsGridView" DataSourceID="Regions" KeyFieldName="reg_id" Width="100%">
                                <ClientSideEvents FocusedRowChanged="function(s, e) {
	UserProfilesGridView.PerformCallback(s.GetFocusedRowIndex());
}" />
                                <SettingsPager Mode="ShowAllRecords" Visible="False">
                                </SettingsPager>
                                <SettingsBehavior AllowFocusedRow="True" />
                                <SettingsSearchPanel Visible="True" />
                                <Columns>
                                    <dx:GridViewDataTextColumn Caption="ИД" FieldName="reg_id" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="0">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Регионы" FieldName="reg_name" ShowInCustomizationForm="True" VisibleIndex="1">
                                    </dx:GridViewDataTextColumn>
                                </Columns>
                            </dx:ASPxGridView>
                        </dx:SplitterContentControl>
                    </ContentCollection>
                </dx:SplitterPane>
                <dx:SplitterPane AutoHeight="True" Size="80%">
                    <ContentCollection>
                        <dx:SplitterContentControl runat="server">
                            <dx:ASPxGridView ID="UserProfilesGridView" runat="server" AutoGenerateColumns="False" ClientInstanceName="UserProfilesGridView" DataSourceID="UserProfiles" KeyFieldName="usr_id" OnCustomCallback="UserProfilesGridView_CustomCallback" Width="100%">
                                <SettingsBehavior AllowFocusedRow="True" />
                                <SettingsSearchPanel Visible="True" />
                                <Columns>
                                    <dx:GridViewDataTextColumn FieldName="usr_id" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="0">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="utype_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="ctype_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="reg_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="3">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Наименование компании" FieldName="co_name" ShowInCustomizationForm="True" VisibleIndex="4">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Адрес" FieldName="legal_address" ShowInCustomizationForm="True" VisibleIndex="5">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="actual_address" ShowInCustomizationForm="True" Visible="False" VisibleIndex="6">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Веб сайт" FieldName="site" ShowInCustomizationForm="True" VisibleIndex="7">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Описание" FieldName="description" ShowInCustomizationForm="True" VisibleIndex="16">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataCheckColumn FieldName="is_agreement" ShowInCustomizationForm="True" Visible="False" VisibleIndex="17">
                                    </dx:GridViewDataCheckColumn>
                                    <dx:GridViewDataDateColumn Caption="Дата рег." FieldName="reg_date" ShowInCustomizationForm="True" VisibleIndex="18" Width="120px">
                                        <PropertiesDateEdit DisplayFormatString="g" EditFormat="DateTime">
                                        </PropertiesDateEdit>
                                    </dx:GridViewDataDateColumn>
                                    <dx:GridViewBandColumn Caption="Контактное лицо" ShowInCustomizationForm="True" VisibleIndex="9">
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <Columns>
                                            <dx:GridViewDataTextColumn Caption="Фамилия" FieldName="fm" ShowInCustomizationForm="True" VisibleIndex="0">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="Имя" FieldName="nm" ShowInCustomizationForm="True" VisibleIndex="1">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="Отчество" FieldName="ft" ShowInCustomizationForm="True" VisibleIndex="2">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="Должность" FieldName="position" ShowInCustomizationForm="True" VisibleIndex="3">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="Телефон" FieldName="phone1" ShowInCustomizationForm="True" VisibleIndex="4">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="phone2" ShowInCustomizationForm="True" Visible="False" VisibleIndex="5">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="Факс" FieldName="fax" ShowInCustomizationForm="True" Visible="False" VisibleIndex="6">
                                            </dx:GridViewDataTextColumn>
                                        </Columns>
                                    </dx:GridViewBandColumn>
                                </Columns>
                            </dx:ASPxGridView>

                        </dx:SplitterContentControl>
                    </ContentCollection>
                </dx:SplitterPane>
            </Panes>
        </dx:ASPxSplitter>

    </div>
    <div>

        <asp:SqlDataSource ID="UserProfiles" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [UserProfiles] WHERE [usr_id] = @old_usr_id" InsertCommand="INSERT INTO [UserProfiles] ([usr_id], [utype_id], [ctype_id], [reg_id], [co_name], [legal_address], [actual_address], [site], [fm], [nm], [ft], [position], [phone1], [phone2], [fax], [description], [logotype], [photo], [is_agreement], [reg_date]) VALUES (@usr_id, @utype_id, @ctype_id, @reg_id, @co_name, @legal_address, @actual_address, @site, @fm, @nm, @ft, @position, @phone1, @phone2, @fax, @description, @logotype, @photo, @is_agreement, @reg_date)" OldValuesParameterFormatString="old_{0}" SelectCommand="SELECT * FROM [UserProfiles] WHERE ([reg_id] = @reg_id)" UpdateCommand="UPDATE [UserProfiles] SET [utype_id] = @utype_id, [ctype_id] = @ctype_id, [reg_id] = @reg_id, [co_name] = @co_name, [legal_address] = @legal_address, [actual_address] = @actual_address, [site] = @site, [fm] = @fm, [nm] = @nm, [ft] = @ft, [position] = @position, [phone1] = @phone1, [phone2] = @phone2, [fax] = @fax, [description] = @description, [logotype] = @logotype, [photo] = @photo, [is_agreement] = @is_agreement, [reg_date] = @reg_date WHERE [usr_id] = @old_usr_id">
            <DeleteParameters>
                <asp:Parameter Name="old_usr_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="usr_id" Type="String" />
                <asp:Parameter Name="utype_id" Type="Int32" />
                <asp:Parameter Name="ctype_id" Type="Int32" />
                <asp:Parameter Name="reg_id" Type="String" />
                <asp:Parameter Name="co_name" Type="String" />
                <asp:Parameter Name="legal_address" Type="String" />
                <asp:Parameter Name="actual_address" Type="String" />
                <asp:Parameter Name="site" Type="String" />
                <asp:Parameter Name="fm" Type="String" />
                <asp:Parameter Name="nm" Type="String" />
                <asp:Parameter Name="ft" Type="String" />
                <asp:Parameter Name="position" Type="String" />
                <asp:Parameter Name="phone1" Type="String" />
                <asp:Parameter Name="phone2" Type="String" />
                <asp:Parameter Name="fax" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="logotype" Type="Object" />
                <asp:Parameter Name="photo" Type="Object" />
                <asp:Parameter Name="is_agreement" Type="Boolean" />
                <asp:Parameter Name="reg_date" Type="DateTime" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="reg_id" SessionField="reg_id" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="utype_id" Type="Int32" />
                <asp:Parameter Name="ctype_id" Type="Int32" />
                <asp:Parameter Name="reg_id" Type="String" />
                <asp:Parameter Name="co_name" Type="String" />
                <asp:Parameter Name="legal_address" Type="String" />
                <asp:Parameter Name="actual_address" Type="String" />
                <asp:Parameter Name="site" Type="String" />
                <asp:Parameter Name="fm" Type="String" />
                <asp:Parameter Name="nm" Type="String" />
                <asp:Parameter Name="ft" Type="String" />
                <asp:Parameter Name="position" Type="String" />
                <asp:Parameter Name="phone1" Type="String" />
                <asp:Parameter Name="phone2" Type="String" />
                <asp:Parameter Name="fax" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="logotype" Type="Object" />
                <asp:Parameter Name="photo" Type="Object" />
                <asp:Parameter Name="is_agreement" Type="Boolean" />
                <asp:Parameter Name="reg_date" Type="DateTime" />
                <asp:Parameter Name="old_usr_id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Regions" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" OldValuesParameterFormatString="old_{0}" SelectCommand="SELECT * FROM [Regions]"></asp:SqlDataSource>

    </div>
</asp:Content>
