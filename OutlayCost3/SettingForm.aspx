<%@ Page Title="Дополнительные данные" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SettingForm.aspx.cs" Inherits="OutlayCost3.SettingForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <asp:ValidationSummary runat="server" CssClass="text-danger" />
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#company">Компания</a></li>
        <li><a data-toggle="tab" href="#person">Частное лицо</a></li>
    </ul>
    <div class="tab-content">
        <div id="company" class="tab-pane fade in active">
            <div class="row">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="CompanyTypeList" CssClass="col-md-2 control-label">Название компании</asp:Label>
                    <div class="col-md-1">
                        <asp:DropDownList ID="CompanyTypeList" runat="server" DataSourceID="TypeOfCompanies" DataTextField="cabbr" DataValueField="ctype_id" CssClass="form-control"></asp:DropDownList>
                    </div>
                    <div class="col-md-9 col-md-offset-9">
                        <asp:TextBox runat="server" ID="co_name" CssClass="form-control" TextMode="SingleLine" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="co_name"
                            CssClass="text-danger" ErrorMessage="Наименование компании заполнять обязательно." />
                    </div>
                </div>
            </div>
        </div>
        <div id="person" class="tab-pane fade">
            <h3>Person</h3>
        </div>
    </div>
    <div>
        <asp:SqlDataSource ID="TypeOfCompanies" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [TypeOfCompanies]"></asp:SqlDataSource>
    </div>
    <%--    <div class="form-horizontal">
        <h4>Создание новой учетной записи</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Адрес электронной почты</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="Поле адреса электронной почты заполнять обязательно." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Пароль</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="Поле пароля заполнять обязательно." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Подтверждение пароля</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Поле подтверждения пароля заполнять обязательно." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Пароль и его подтверждение не совпадают." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Регистрация" CssClass="btn btn-default" />
            </div>
        </div>
    </div>--%>
</asp:Content>
