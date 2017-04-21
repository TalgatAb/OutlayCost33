<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="OutlayCost3.Registration" %>
<%@ Register assembly="DevExpress.Web.v16.1, Version=16.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>

        <table class="nav-justified">
            <tr>
                <td><p>Регистрация</p></td>
            </tr>
            <tr>
                <td>
                    <dx:ASPxPageControl ID="RegisterPageControl" runat="server" ActiveTabIndex="0" Width="100%">
                        <TabPages>
                            <dx:TabPage Name="CompanyTab" Text="Компания">
                                <ContentCollection>
                                    <dx:ContentControl runat="server">
                                        <dx:ASPxFormLayout ID="CompanyFormLayout" runat="server" DataSourceID="UserProfiles">
                                            <Items>
                                                <dx:LayoutGroup Caption="Компания" ColCount="2">
                                                    <Items>
                                                        <dx:LayoutItem Caption="Название компании" FieldName="ctype_id" Width="20%">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer runat="server">
                                                                    <dx:ASPxComboBox ID="CTypeIdComboBox" runat="server" DataSourceID="TypeOfCompanies" TextField="ctype_name" ValueField="ctype_id" ValueType="System.Int32" AutoResizeWithContainer="True" DropDownWidth="100%" TextFormatString="{0}">
                                                                        <Columns>
                                                                            <dx:ListBoxColumn Caption="ИД" FieldName="ctype_id" Visible="False" />
                                                                            <dx:ListBoxColumn Caption="Аббр." FieldName="cabbr" Width="40px" />
                                                                            <dx:ListBoxColumn Caption="Форма собственности" FieldName="ctype_name" />
                                                                        </Columns>
                                                                        <ValidationSettings>
                                                                            <RequiredField IsRequired="True" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxComboBox>
                                                                </dx:LayoutItemNestedControlContainer>
                                                            </LayoutItemNestedControlCollection>
                                                        </dx:LayoutItem>
                                                        <dx:LayoutItem FieldName="co_name" ShowCaption="False" Width="80%" Caption="Название">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer runat="server">
                                                                    <dx:ASPxTextBox ID="CoNameTextBox" runat="server" Width="100%">
                                                                        <ValidationSettings>
                                                                            <RequiredField IsRequired="True" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </dx:LayoutItemNestedControlContainer>
                                                            </LayoutItemNestedControlCollection>
                                                        </dx:LayoutItem>
                                                    </Items>
                                                    <SettingsItems Width="100%" />
                                                </dx:LayoutGroup>
                                                <dx:LayoutItem FieldName="legal_address" Caption="Юридический адрес">
                                                    <LayoutItemNestedControlCollection>
                                                        <dx:LayoutItemNestedControlContainer runat="server">
                                                            <dx:ASPxTextBox ID="LegalAddressTextBox" runat="server" Width="100%">
                                                            </dx:ASPxTextBox>
                                                        </dx:LayoutItemNestedControlContainer>
                                                    </LayoutItemNestedControlCollection>
                                                </dx:LayoutItem>
                                                <dx:LayoutItem FieldName="actual_address" Caption="Фактический адрес">
                                                    <LayoutItemNestedControlCollection>
                                                        <dx:LayoutItemNestedControlContainer runat="server">
                                                            <dx:ASPxTextBox ID="ActualAddressTextBox" runat="server" Width="100%">
                                                            </dx:ASPxTextBox>
                                                        </dx:LayoutItemNestedControlContainer>
                                                    </LayoutItemNestedControlCollection>
                                                </dx:LayoutItem>
                                                <dx:LayoutItem FieldName="site" Caption="Веб сайт">
                                                    <LayoutItemNestedControlCollection>
                                                        <dx:LayoutItemNestedControlContainer runat="server">
                                                            <dx:ASPxTextBox ID="SiteTextBox" runat="server" Width="100%">
                                                            </dx:ASPxTextBox>
                                                        </dx:LayoutItemNestedControlContainer>
                                                    </LayoutItemNestedControlCollection>
                                                </dx:LayoutItem>
                                                <dx:LayoutGroup Caption="Контактное лицо" ColCount="2">
                                                    <Items>
                                                        <dx:LayoutItem Caption="Фамилия" FieldName="fm">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer runat="server">
                                                                    <dx:ASPxTextBox ID="FmTextBox" runat="server" NullText="Фамилия" Width="100%">
                                                                    </dx:ASPxTextBox>
                                                                </dx:LayoutItemNestedControlContainer>
                                                            </LayoutItemNestedControlCollection>
                                                        </dx:LayoutItem>
                                                        <dx:LayoutItem Caption="Имя" FieldName="nm">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer runat="server">
                                                                    <dx:ASPxTextBox ID="NmTextBox" runat="server" NullText="Имя" Width="100%">
                                                                    </dx:ASPxTextBox>
                                                                </dx:LayoutItemNestedControlContainer>
                                                            </LayoutItemNestedControlCollection>
                                                        </dx:LayoutItem>
                                                        <dx:LayoutItem Caption="Отчество" FieldName="ft">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer runat="server">
                                                                    <dx:ASPxTextBox ID="FtTextBox" runat="server" NullText="Отчество" Width="100%">
                                                                    </dx:ASPxTextBox>
                                                                </dx:LayoutItemNestedControlContainer>
                                                            </LayoutItemNestedControlCollection>
                                                        </dx:LayoutItem>
                                                        <dx:LayoutItem Caption="Должность" FieldName="position">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer runat="server">
                                                                    <dx:ASPxTextBox ID="PositionComBox" runat="server" NullText="Должность" Width="100%">
                                                                    </dx:ASPxTextBox>
                                                                </dx:LayoutItemNestedControlContainer>
                                                            </LayoutItemNestedControlCollection>
                                                        </dx:LayoutItem>
                                                    </Items>
                                                </dx:LayoutGroup>
                                                <dx:LayoutGroup Caption="Телефоны" ColCount="3">
                                                    <Items>
                                                        <dx:LayoutItem Caption="Телефон 1" FieldName="phone1">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer runat="server">
                                                                    <dx:ASPxTextBox ID="Phone1TextBox" runat="server" Width="100%">
                                                                    </dx:ASPxTextBox>
                                                                </dx:LayoutItemNestedControlContainer>
                                                            </LayoutItemNestedControlCollection>
                                                        </dx:LayoutItem>
                                                        <dx:LayoutItem Caption="Телефон 2" FieldName="phone2">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer runat="server">
                                                                    <dx:ASPxTextBox ID="Phone2TextBox" runat="server" Width="100%">
                                                                    </dx:ASPxTextBox>
                                                                </dx:LayoutItemNestedControlContainer>
                                                            </LayoutItemNestedControlCollection>
                                                        </dx:LayoutItem>
                                                        <dx:LayoutItem Caption="Факс" FieldName="fax">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer runat="server">
                                                                    <dx:ASPxTextBox ID="FaxTextBox" runat="server" Width="100%">
                                                                    </dx:ASPxTextBox>
                                                                </dx:LayoutItemNestedControlContainer>
                                                            </LayoutItemNestedControlCollection>
                                                        </dx:LayoutItem>
                                                    </Items>
                                                </dx:LayoutGroup>
                                                <dx:LayoutItem FieldName="description" Caption="Описание">
                                                    <LayoutItemNestedControlCollection>
                                                        <dx:LayoutItemNestedControlContainer runat="server">
                                                            <dx:ASPxMemo ID="DescMemo" runat="server" Width="100%" NullText="Описание деятельности" Height="100px">
                                                            </dx:ASPxMemo>
                                                        </dx:LayoutItemNestedControlContainer>
                                                    </LayoutItemNestedControlCollection>
                                                </dx:LayoutItem>
                                                <dx:LayoutGroup Caption="Логотип компании" ColCount="2">
                                                    <Items>
                                                        <dx:LayoutItem ShowCaption="False" Width="30%">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer runat="server">
                                                                    <dx:ASPxButton ID="LoadLogotypeBtn" runat="server" Text="Загрузка фото">
                                                                    </dx:ASPxButton>
                                                                </dx:LayoutItemNestedControlContainer>
                                                            </LayoutItemNestedControlCollection>
                                                        </dx:LayoutItem>
                                                        <dx:LayoutItem Caption="Логотип" FieldName="logotype" ShowCaption="False" Width="70%">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer runat="server">
                                                                    <dx:ASPxBinaryImage ID="CompanyFormLayout_E17" runat="server" StoreContentBytesInViewState="True">
                                                                    </dx:ASPxBinaryImage>
                                                                </dx:LayoutItemNestedControlContainer>
                                                            </LayoutItemNestedControlCollection>
                                                        </dx:LayoutItem>
                                                    </Items>
                                                </dx:LayoutGroup>
                                                <dx:LayoutItem FieldName="reg_id" Caption="Регион">
                                                    <LayoutItemNestedControlCollection>
                                                        <dx:LayoutItemNestedControlContainer runat="server">
                                                            <dx:ASPxComboBox ID="RegionComboBox" runat="server" DataSourceID="Regions" TextField="reg_name" ValueField="reg_id" Width="60%">
                                                                <Columns>
                                                                    <dx:ListBoxColumn Caption="ИД" FieldName="reg_id" Visible="False" />
                                                                    <dx:ListBoxColumn Caption="Регион" FieldName="reg_name" />
                                                                </Columns>
                                                            </dx:ASPxComboBox>
                                                        </dx:LayoutItemNestedControlContainer>
                                                    </LayoutItemNestedControlCollection>
                                                </dx:LayoutItem>
                                                <dx:LayoutItem FieldName="is_agreement" Caption="Принимаю пользовательское соглашение">
                                                    <LayoutItemNestedControlCollection>
                                                        <dx:LayoutItemNestedControlContainer runat="server">
                                                            <dx:ASPxCheckBox ID="AgreementCheckBox" runat="server" CheckState="Unchecked">
                                                            </dx:ASPxCheckBox>
                                                        </dx:LayoutItemNestedControlContainer>
                                                    </LayoutItemNestedControlCollection>
                                                </dx:LayoutItem>
                                                <dx:LayoutGroup Caption="Command Group" ColCount="3" GroupBoxDecoration="HeadingLine" HorizontalAlign="Right" ShowCaption="False">
                                                    <Items>
                                                        <dx:EmptyLayoutItem>
                                                        </dx:EmptyLayoutItem>
                                                        <dx:LayoutItem Caption="Update" ShowCaption="False">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer runat="server">
                                                                    <dx:ASPxButton ID="UpdateBtn" runat="server" Text="Сохранить">
                                                                    </dx:ASPxButton>
                                                                </dx:LayoutItemNestedControlContainer>
                                                            </LayoutItemNestedControlCollection>
                                                        </dx:LayoutItem>
                                                        <dx:LayoutItem Caption="Cancel" ShowCaption="False">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer runat="server">
                                                                    <dx:ASPxButton ID="CancelBtn" runat="server" Text="Отмена">
                                                                    </dx:ASPxButton>
                                                                </dx:LayoutItemNestedControlContainer>
                                                            </LayoutItemNestedControlCollection>
                                                        </dx:LayoutItem>
                                                    </Items>
                                                </dx:LayoutGroup>
                                            </Items>
                                        </dx:ASPxFormLayout>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:TabPage>
                            <dx:TabPage Name="PersonTab" Text="Частное лицо">
                                <ContentCollection>
                                    <dx:ContentControl runat="server">
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:TabPage>
                        </TabPages>
                    </dx:ASPxPageControl>
                </td>
            </tr>
        </table>

    </div>
    <div>

        <asp:SqlDataSource ID="TypeOfCompanies" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" OldValuesParameterFormatString="old_{0}" SelectCommand="SELECT * FROM [TypeOfCompanies]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="UserProfiles" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [UserProfiles] WHERE [usr_id] = @old_usr_id" InsertCommand="INSERT INTO [UserProfiles] ([usr_id], [utype_id], [ctype_id], [reg_id], [co_name], [legal_address], [actual_address], [site], [fm], [nm], [ft], [position], [phone1], [phone2], [fax], [description], [logotype], [photo], [is_agreement]) VALUES (@usr_id, @utype_id, @ctype_id, @reg_id, @co_name, @legal_address, @actual_address, @site, @fm, @nm, @ft, @position, @phone1, @phone2, @fax, @description, @logotype, @photo, @is_agreement)" OldValuesParameterFormatString="old_{0}" SelectCommand="SELECT * FROM [UserProfiles] WHERE ([usr_id] = @usr_id)" UpdateCommand="UPDATE [UserProfiles] SET [utype_id] = @utype_id, [ctype_id] = @ctype_id, [reg_id] = @reg_id, [co_name] = @co_name, [legal_address] = @legal_address, [actual_address] = @actual_address, [site] = @site, [fm] = @fm, [nm] = @nm, [ft] = @ft, [position] = @position, [phone1] = @phone1, [phone2] = @phone2, [fax] = @fax, [description] = @description, [logotype] = @logotype, [photo] = @photo, [is_agreement] = @is_agreement WHERE [usr_id] = @old_usr_id">
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
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="usr_id" SessionField="usr_id" Type="String" />
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
                <asp:Parameter Name="old_usr_id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="Regions" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" OldValuesParameterFormatString="old_{0}" SelectCommand="SELECT * FROM [Regions]"></asp:SqlDataSource>

    </div>
</asp:Content>
