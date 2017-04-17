<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminForm.aspx.cs" Inherits="OutlayCost3.AdminForm" %>

<%@ Register Assembly="DevExpress.Web.v16.1, Version=16.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxPageControl ID="AdminPageControl" runat="server" ActiveTabIndex="0" Width="100%">
        <TabPages>
            <dx:TabPage Name="UsersTab" Text="Пользователи">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                        <dx:ASPxGridView ID="UsersGridView" runat="server" Width="100%" AutoGenerateColumns="False" KeyFieldName="Id" OnRowInserting="UsersGridView_RowInserting" OnRowUpdating="UsersGridView_RowUpdating" OnRowDeleting="UsersGridView_RowDeleting" OnRowValidating="UsersGridView_RowValidating" DataSourceID="AspNetUsers" OnCustomErrorText="UsersGridView_CustomErrorText">
                            <SettingsDetail ShowDetailRow="True" />
                            <Templates>
                                <DetailRow>
                                    <dx:ASPxGridView ID="UsersInfoGridView" runat="server" AutoGenerateColumns="False" DataSourceID="UsersInfo" KeyFieldName="usr_id" OnBeforePerformDataSelect="UsersInfoGridView_BeforePerformDataSelect" OnRowInserting="UsersInfoGridView_RowInserting" OnRowValidating="UsersInfoGridView_RowValidating" Width="80%">
                                        <SettingsBehavior AllowFocusedRow="True" ColumnResizeMode="Control" ConfirmDelete="True" />
                                        <SettingsCommandButton RenderMode="Image">
                                            <NewButton>
                                                <Image IconID="actions_add_16x16">
                                                </Image>
                                            </NewButton>
                                            <UpdateButton RenderMode="Link">
                                            </UpdateButton>
                                            <CancelButton RenderMode="Link">
                                            </CancelButton>
                                            <EditButton>
                                                <Image IconID="edit_edit_16x16">
                                                </Image>
                                            </EditButton>
                                            <DeleteButton>
                                                <Image IconID="edit_delete_16x16">
                                                </Image>
                                            </DeleteButton>
                                        </SettingsCommandButton>
                                        <SettingsText ConfirmDelete="Подтверждаете удаление?" />
                                        <Columns>
                                            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0" Width="60px">
                                            </dx:GridViewCommandColumn>
                                            <dx:GridViewDataTextColumn FieldName="usr_id" ReadOnly="True" Visible="False" VisibleIndex="1">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="ФИО" FieldName="usr_fio" VisibleIndex="2">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataComboBoxColumn Caption="Участок" FieldName="dep_id" VisibleIndex="3">
                                                <PropertiesComboBox DataSourceID="Deps" TextField="dep_name" ValueField="dep_id">
                                                    <Columns>
                                                        <dx:ListBoxColumn Caption="ИД" FieldName="dep_id" Visible="False" />
                                                        <dx:ListBoxColumn Caption="Участок" FieldName="dep_name" />
                                                    </Columns>
                                                </PropertiesComboBox>
                                            </dx:GridViewDataComboBoxColumn>
                                        </Columns>
                                    </dx:ASPxGridView>
                                </DetailRow>
                            </Templates>
                            <SettingsBehavior AllowFocusedRow="True" ColumnResizeMode="Control" ConfirmDelete="True" />
                            <SettingsCommandButton RenderMode="Image">
                                <NewButton>
                                    <Image IconID="actions_add_16x16">
                                    </Image>
                                </NewButton>
                                <UpdateButton RenderMode="Link">
                                </UpdateButton>
                                <CancelButton RenderMode="Link">
                                </CancelButton>
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
                                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0" Width="80px">
                                </dx:GridViewCommandColumn>
                                <dx:GridViewDataTextColumn FieldName="Id" ShowInCustomizationForm="True" VisibleIndex="1" ReadOnly="True" Visible="False">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Email" ShowInCustomizationForm="True" VisibleIndex="3" Caption="Email">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataCheckColumn FieldName="EmailConfirmed" ShowInCustomizationForm="True" VisibleIndex="5" Visible="False">
                                </dx:GridViewDataCheckColumn>
                                <dx:GridViewDataTextColumn FieldName="PasswordHash" ShowInCustomizationForm="True" VisibleIndex="6" Visible="False">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="SecurityStamp" ShowInCustomizationForm="True" VisibleIndex="7" Visible="False">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="PhoneNumber" ShowInCustomizationForm="True" VisibleIndex="4" Caption="Контактный номер телефона">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataCheckColumn FieldName="PhoneNumberConfirmed" ShowInCustomizationForm="True" VisibleIndex="8" Visible="False">
                                </dx:GridViewDataCheckColumn>
                                <dx:GridViewDataCheckColumn FieldName="TwoFactorEnabled" ShowInCustomizationForm="True" VisibleIndex="9" Visible="False">
                                </dx:GridViewDataCheckColumn>
                                <dx:GridViewDataDateColumn FieldName="LockoutEndDateUtc" ShowInCustomizationForm="True" VisibleIndex="10" Visible="False">
                                </dx:GridViewDataDateColumn>
                                <dx:GridViewDataCheckColumn FieldName="LockoutEnabled" ShowInCustomizationForm="True" VisibleIndex="11" Visible="False">
                                </dx:GridViewDataCheckColumn>
                                <dx:GridViewDataTextColumn FieldName="AccessFailedCount" ShowInCustomizationForm="True" VisibleIndex="12" Visible="False">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="UserName" ShowInCustomizationForm="True" VisibleIndex="2" Caption="Пользователь">
                                    <EditFormSettings Visible="False" />
                                </dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridView>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Name="RolesTab" Text="Роли">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                        <dx:ASPxGridView ID="RolesGridView" runat="server" AutoGenerateColumns="False" KeyFieldName="Id" Width="50%" OnRowDeleting="RolesGridView_RowDeleting" OnRowInserting="RolesGridView_RowInserting" OnRowUpdating="RolesGridView_RowUpdating" OnRowValidating="RolesGridView_RowValidating" DataSourceID="AspNetRoles" OnCustomErrorText="RolesGridView_CustomErrorText">
                            <SettingsBehavior AllowFocusedRow="True" ColumnResizeMode="Control" ConfirmDelete="True" />
                            <SettingsCommandButton RenderMode="Image">
                                <NewButton>
                                    <Image IconID="actions_add_16x16">
                                    </Image>
                                </NewButton>
                                <UpdateButton RenderMode="Link">
                                </UpdateButton>
                                <CancelButton RenderMode="Link">
                                </CancelButton>
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
                                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0" Width="80px">
                                </dx:GridViewCommandColumn>
                                <dx:GridViewDataTextColumn FieldName="Id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1" ReadOnly="True">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Роль" FieldName="Name" ShowInCustomizationForm="True" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridView>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Name="ManageRolesTab" Text="Управление ролями">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                        <dx:ASPxSplitter ID="ManageSplitter" runat="server">
                            <Panes>
                                <dx:SplitterPane AutoHeight="True" Name="UsersPane" Size="31%">
                                    <ContentCollection>
                                        <dx:SplitterContentControl runat="server">
                                            <dx:ASPxGridView ID="MUsersGridView" runat="server" AutoGenerateColumns="False" Width="100%" ClientInstanceName="MUsersGridView" KeyFieldName="Id" DataSourceID="MAspNetUsers">
                                                <ClientSideEvents FocusedRowChanged="function(s, e) {
	MUserInRolesGridView.PerformCallback(s.GetFocusedRowIndex());
}" />
                                                <SettingsBehavior AllowFocusedRow="True" />
                                                <SettingsSearchPanel Visible="True" />
                                                <Columns>
                                                    <dx:GridViewCommandColumn SelectAllCheckboxMode="Page" ShowInCustomizationForm="True" ShowSelectCheckbox="True" VisibleIndex="0" Width="40px">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1" ReadOnly="True">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Пользователь" FieldName="UserName" ShowInCustomizationForm="True" VisibleIndex="2">
                                                    </dx:GridViewDataTextColumn>
                                                </Columns>
                                            </dx:ASPxGridView>
                                        </dx:SplitterContentControl>
                                    </ContentCollection>
                                </dx:SplitterPane>
                                <dx:SplitterPane AutoHeight="True" Name="UserInRolePane" Size="31%">
                                    <ContentCollection>
                                        <dx:SplitterContentControl runat="server">
                                            <dx:ASPxGridView ID="MUserInRolesGridView" runat="server" AutoGenerateColumns="False" Width="100%" ClientInstanceName="MUserInRolesGridView" KeyFieldName="UserId;RoleId" OnCustomCallback="MUserInRolesGridView_CustomCallback" DataSourceID="MAspNetUserRoles" OnCustomErrorText="MUserInRolesGridView_CustomErrorText">
                                                <SettingsBehavior AllowFocusedRow="True" />
                                                <Columns>
                                                    <dx:GridViewCommandColumn SelectAllCheckboxMode="Page" ShowInCustomizationForm="True" ShowSelectCheckbox="True" VisibleIndex="0" Width="40px">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewDataTextColumn FieldName="UserId" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1" ReadOnly="True">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataComboBoxColumn Caption="Привязанные роли" FieldName="RoleId" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="2">
                                                        <PropertiesComboBox DataSourceID="AspNetRoles" TextField="Name" ValueField="Id">
                                                            <Columns>
                                                                <dx:ListBoxColumn Caption="ИД" FieldName="Id" Visible="False" />
                                                                <dx:ListBoxColumn Caption="Роль" FieldName="Name" />
                                                            </Columns>
                                                        </PropertiesComboBox>
                                                    </dx:GridViewDataComboBoxColumn>
                                                </Columns>
                                            </dx:ASPxGridView>
                                        </dx:SplitterContentControl>
                                    </ContentCollection>
                                </dx:SplitterPane>
                                <dx:SplitterPane Name="CommonPane" Size="7%">
                                    <PaneStyle HorizontalAlign="Center">
                                    </PaneStyle>
                                    <ContentCollection>
                                        <dx:SplitterContentControl runat="server">
                                            <div>
                                            </div>
                                            <dx:ASPxButton ID="RightButton" runat="server" AutoPostBack="False" Text="&lt;" Width="60px">
                                                <ClientSideEvents Click="function(s, e) {
	MUserInRolesGridView.PerformCallback(&quot;-2&quot;);
}" />
                                            </dx:ASPxButton>
                                            <dx:ASPxButton ID="RightAllButton" runat="server" AutoPostBack="False" Text="&lt;&lt;" Width="60px">
                                                <ClientSideEvents Click="function(s, e) {
	MUserInRolesGridView.PerformCallback(&quot;-3&quot;);
}" />
                                            </dx:ASPxButton>
                                            <div>
                                            </div>
                                            <dx:ASPxButton ID="LeftButton" runat="server" AutoPostBack="False" Text="&gt;" Width="60px">
                                                <ClientSideEvents Click="function(s, e) {
	MUserInRolesGridView.PerformCallback(&quot;-4&quot;);
}" />
                                            </dx:ASPxButton>
                                            <dx:ASPxButton ID="LeftAllButton" runat="server" AutoPostBack="False" Text="&gt;&gt;" Width="60px">
                                                <ClientSideEvents Click="function(s, e) {
	MUserInRolesGridView.PerformCallback(&quot;-5&quot;);
}" />
                                            </dx:ASPxButton>
                                        </dx:SplitterContentControl>
                                    </ContentCollection>
                                </dx:SplitterPane>
                                <dx:SplitterPane Name="RolesPane" Size="31%" AutoHeight="True">
                                    <ContentCollection>
                                        <dx:SplitterContentControl runat="server">
                                            <dx:ASPxGridView ID="MRolesGridView" runat="server" AutoGenerateColumns="False" ClientInstanceName="MRolesGridView" KeyFieldName="Id" Width="100%" DataSourceID="MAspNetRoles">
                                                <SettingsBehavior AllowFocusedRow="True" />
                                                <SettingsSearchPanel Visible="True" />
                                                <Columns>
                                                    <dx:GridViewCommandColumn SelectAllCheckboxMode="Page" ShowInCustomizationForm="True" ShowSelectCheckbox="True" VisibleIndex="0" Width="40px">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1" ReadOnly="True">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Роль" FieldName="Name" ShowInCustomizationForm="True" VisibleIndex="2">
                                                    </dx:GridViewDataTextColumn>
                                                </Columns>
                                            </dx:ASPxGridView>
                                        </dx:SplitterContentControl>
                                    </ContentCollection>
                                </dx:SplitterPane>
                            </Panes>
                        </dx:ASPxSplitter>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Name="LogsTab" Text="Журнал ошибок">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                        <dx:ASPxSplitter ID="ErrorSplitter" runat="server" Orientation="Vertical">
                            <Panes>
                                <dx:SplitterPane AutoHeight="True">
                                    <ContentCollection>
                                        <dx:SplitterContentControl runat="server">
                                            <dx:ASPxGridView ID="ErrorLogGridView" runat="server" AutoGenerateColumns="False" DataSourceID="ErrorLog" KeyFieldName="ErrorLogID" Width="100%">
                                                <ClientSideEvents FocusedRowChanged="function(s, e) {
	ErrMsgCallbackPanel.PerformCallback(s.GetFocusedRowIndex());
}" />
                                                <SettingsBehavior AllowFocusedRow="True" ColumnResizeMode="Control" />
                                                <SettingsSearchPanel Visible="True" />
                                                <Columns>
                                                    <dx:GridViewDataTextColumn FieldName="ErrorLogID" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="0">
                                                        <EditFormSettings Visible="False" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataDateColumn Caption="Время" FieldName="ErrorTime" ShowInCustomizationForm="True" VisibleIndex="1" Width="120px">
                                                        <PropertiesDateEdit DisplayFormatString="g">
                                                        </PropertiesDateEdit>
                                                    </dx:GridViewDataDateColumn>
                                                    <dx:GridViewDataTextColumn Caption="Пользователь" FieldName="UserName" ShowInCustomizationForm="True" VisibleIndex="2">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="№ ошибки" FieldName="ErrorNumber" ShowInCustomizationForm="True" VisibleIndex="3" Width="100px">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="ErrorSeverity" ShowInCustomizationForm="True" VisibleIndex="4" Width="100px">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="ErrorState" ShowInCustomizationForm="True" VisibleIndex="5" Width="100px">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Модуль или ХП" FieldName="ErrorProcedure" ShowInCustomizationForm="True" VisibleIndex="6">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="№ строки" FieldName="ErrorLine" ShowInCustomizationForm="True" VisibleIndex="7" Width="100px">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="ErrorMessage" ShowInCustomizationForm="True" Visible="False" VisibleIndex="8">
                                                    </dx:GridViewDataTextColumn>
                                                </Columns>
                                            </dx:ASPxGridView>
                                        </dx:SplitterContentControl>
                                    </ContentCollection>
                                </dx:SplitterPane>
                                <dx:SplitterPane AutoHeight="True">
                                    <ContentCollection>
                                        <dx:SplitterContentControl runat="server">
                                            <dx:ASPxCallbackPanel ID="ErrMsgCallbackPanel" runat="server" Height="100px" Width="100%" ClientInstanceName="ErrMsgCallbackPanel" OnCallback="ErrMsgCallbackPanel_Callback">
                                                <PanelCollection>
                                                    <dx:PanelContent>
                                                        <dx:ASPxMemo ID="ErrMsgMemo" runat="server" Height="100%" Width="100%">
                                                        </dx:ASPxMemo>
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxCallbackPanel>
                                        </dx:SplitterContentControl>
                                    </ContentCollection>
                                </dx:SplitterPane>
                            </Panes>
                        </dx:ASPxSplitter>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
    <div>

        <asp:SqlDataSource ID="ErrorLog" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" OldValuesParameterFormatString="old_{0}" SelectCommand="SELECT * FROM [ErrorLog] ORDER BY [ErrorTime] DESC"></asp:SqlDataSource>

        <asp:SqlDataSource ID="AspNetRoles" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [AspNetRoles] WHERE [Id] = @old_Id" InsertCommand="INSERT INTO [AspNetRoles] ([Id], [Name]) VALUES (@Id, @Name)" OldValuesParameterFormatString="old_{0}" SelectCommand="SELECT * FROM [AspNetRoles]" UpdateCommand="UPDATE [AspNetRoles] SET [Name] = @Name WHERE [Id] = @old_Id">
            <DeleteParameters>
                <asp:Parameter Name="old_Id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="old_Id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Deps" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" OldValuesParameterFormatString="old_{0}" SelectCommand="SELECT [dep_id], [par_id], [dep_name] FROM [Deps] WHERE ([par_id] = @par_id)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="par_id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="AspNetUserRoles" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" OldValuesParameterFormatString="old_{0}" SelectCommand="SELECT * FROM [AspNetUserRoles] WHERE ([UserId] = @UserId)">
            <SelectParameters>
                <asp:SessionParameter Name="UserId" SessionField="UserId" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="MAspNetUserRoles" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [AspNetUserRoles] WHERE ([UserId] = @UserId)">
            <SelectParameters>
                <asp:SessionParameter Name="UserId" SessionField="UserId" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="UsersInfo" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [UsersInfo] WHERE [usr_id] = @old_usr_id" InsertCommand="INSERT INTO [UsersInfo] ([usr_id], [usr_fio], [dep_id]) VALUES (@usr_id, @usr_fio, @dep_id)" OldValuesParameterFormatString="old_{0}" SelectCommand="SELECT * FROM [UsersInfo] WHERE ([usr_id] = @usr_id)" UpdateCommand="UPDATE [UsersInfo] SET [usr_fio] = @usr_fio, [dep_id] = @dep_id WHERE [usr_id] = @old_usr_id">
            <DeleteParameters>
                <asp:Parameter Name="old_usr_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="usr_id" Type="String" />
                <asp:Parameter Name="usr_fio" Type="String" />
                <asp:Parameter Name="dep_id" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="usr_id" SessionField="usr_id" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="usr_fio" Type="String" />
                <asp:Parameter Name="dep_id" Type="Int32" />
                <asp:Parameter Name="old_usr_id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="MAspNetRoles" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [AspNetRoles]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="MAspNetUsers" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [UserName] FROM [AspNetUsers]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="AspNetUsers" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [AspNetUsers] WHERE [Id] = @old_Id" InsertCommand="INSERT INTO [AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (@Id, @Email, @EmailConfirmed, @PasswordHash, @SecurityStamp, @PhoneNumber, @PhoneNumberConfirmed, @TwoFactorEnabled, @LockoutEndDateUtc, @LockoutEnabled, @AccessFailedCount, @UserName)" OldValuesParameterFormatString="old_{0}" SelectCommand="SELECT * FROM [AspNetUsers]" UpdateCommand="UPDATE [AspNetUsers] SET [Email] = @Email, [EmailConfirmed] = @EmailConfirmed, [PasswordHash] = @PasswordHash, [SecurityStamp] = @SecurityStamp, [PhoneNumber] = @PhoneNumber, [PhoneNumberConfirmed] = @PhoneNumberConfirmed, [TwoFactorEnabled] = @TwoFactorEnabled, [LockoutEndDateUtc] = @LockoutEndDateUtc, [LockoutEnabled] = @LockoutEnabled, [AccessFailedCount] = @AccessFailedCount, [UserName] = @UserName WHERE [Id] = @old_Id">
            <DeleteParameters>
                <asp:Parameter Name="old_Id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="EmailConfirmed" Type="Boolean" />
                <asp:Parameter Name="PasswordHash" Type="String" />
                <asp:Parameter Name="SecurityStamp" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="PhoneNumberConfirmed" Type="Boolean" />
                <asp:Parameter Name="TwoFactorEnabled" Type="Boolean" />
                <asp:Parameter Name="LockoutEndDateUtc" Type="DateTime" />
                <asp:Parameter Name="LockoutEnabled" Type="Boolean" />
                <asp:Parameter Name="AccessFailedCount" Type="Int32" />
                <asp:Parameter Name="UserName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="EmailConfirmed" Type="Boolean" />
                <asp:Parameter Name="PasswordHash" Type="String" />
                <asp:Parameter Name="SecurityStamp" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="PhoneNumberConfirmed" Type="Boolean" />
                <asp:Parameter Name="TwoFactorEnabled" Type="Boolean" />
                <asp:Parameter Name="LockoutEndDateUtc" Type="DateTime" />
                <asp:Parameter Name="LockoutEnabled" Type="Boolean" />
                <asp:Parameter Name="AccessFailedCount" Type="Int32" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="old_Id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>
