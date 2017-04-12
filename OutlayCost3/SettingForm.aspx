<%@ Page Title="Дополнительные данные" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SettingForm.aspx.cs" Inherits="OutlayCost3.SettingForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <script type="text/javascript">
        $(function () {
            $('#txtPhone1').mask('+7 (999) 999-9999');
        });
    </script>

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
                    <div class="col-md-2">
                        <asp:DropDownList ID="CompanyTypeList" runat="server" DataSourceID="TypeOfCompanies" DataTextField="cabbr" DataValueField="ctype_id" CssClass="form-control"></asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="CompanyTypeList" CssClass="text-danger" ErrorMessage="Не выбрана форма собственности"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="txtCompanyName" CssClass="form-control" TextMode="SingleLine" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCompanyName"
                            CssClass="text-danger" ErrorMessage="Не указано название компании" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtLegalAddress" CssClass="col-md-3 control-label">Юридический адрес</asp:Label>
                    <div class="col-md-9">
                        <asp:TextBox runat="server" ID="txtLegalAddress" CssClass="form-control" TextMode="SingleLine" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLegalAddress"
                            CssClass="text-danger" ErrorMessage="Не полный адрес" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtActualAddress" CssClass="col-md-3 control-label">Фактический адрес</asp:Label>
                    <div class="col-md-9">
                        <asp:TextBox runat="server" ID="txtActualAddress" CssClass="form-control" TextMode="SingleLine" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtActualAddress"
                            CssClass="text-danger" ErrorMessage="Не полный адрес" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtSite" CssClass="col-md-3 control-label">Веб сайт</asp:Label>
                    <div class="col-md-9">
                        <asp:TextBox runat="server" ID="txtSite" CssClass="form-control" TextMode="SingleLine" />
                        <small class="text-muted">&nbsp</small>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">Контактное лицо</div>
                <div class="panel-body">
                    <div class="row">
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtFm" CssClass="col-md-3 control-label">Фамилия</asp:Label>
                            <div class="col-md-9">
                                <asp:TextBox runat="server" ID="txtFm" CssClass="form-control" TextMode="SingleLine" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFm"
                                    CssClass="text-danger" ErrorMessage="Фамилию заполнять обязательно." />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtNm" CssClass="col-md-3 control-label">Имя</asp:Label>
                            <div class="col-md-9">
                                <asp:TextBox runat="server" ID="txtNm" CssClass="form-control" TextMode="SingleLine" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNm"
                                    CssClass="text-danger" ErrorMessage="Имя контактного лица заполнять обязательно." />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtFt" CssClass="col-md-3 control-label">Отчество</asp:Label>
                            <div class="col-md-9">
                                <asp:TextBox runat="server" ID="txtFt" CssClass="form-control" TextMode="SingleLine" />
                                <small class="text-muted">&nbsp</small>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtPosition" CssClass="col-md-3 control-label">Должность</asp:Label>
                            <div class="col-md-9">
                                <asp:TextBox runat="server" ID="txtPosition" CssClass="form-control" TextMode="SingleLine" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPosition"
                                    CssClass="text-danger" ErrorMessage="Должность заполнять обязательно." />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtPhone1" CssClass="col-md-3 control-label">Телефон 1</asp:Label>
                            <div class="col-md-9">
                                <asp:TextBox runat="server" ID="txtPhone1" CssClass="form-control" TextMode="Phone" />
                                <small class="text-muted">Пример ввода телефона: +7 (XXX) XXX XXXX</small>
                                <asp:RegularExpressionValidator ID="Phone1Valid" runat="server" CssClass="text-danger" ErrorMessage="Неверный номер телефона" ControlToValidate="txtPhone1" ValidationExpression="\+7 \(?\d{3}\)?-? *\d{3}-? *-?\d{4}"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtPhone2" CssClass="col-md-3 control-label">Телефон 2</asp:Label>
                            <div class="col-md-9">
                                <asp:TextBox runat="server" ID="txtPhone2" CssClass="form-control" TextMode="Phone" />
                                <small class="text-muted">Пример ввода телефона: +7 (XXX) XXX XXXX</small>
                                <asp:RegularExpressionValidator ID="Phone2Valid" runat="server" CssClass="text-danger" ErrorMessage="Неверный номер телефона" ControlToValidate="txtPhone2" ValidationExpression="\+7 \(?\d{3}\)?-? *\d{3}-? *-?\d{4}"></asp:RegularExpressionValidator>
                            </div>
                        </div>
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
