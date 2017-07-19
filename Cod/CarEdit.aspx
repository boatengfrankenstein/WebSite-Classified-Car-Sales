﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CarEdit.aspx.cs" Inherits="CarEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="form-group">
        <div class="col-md-6" id="images" runat="server">
            <asp:GridView ID="GridViewPictures" ShowHeader="False"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="id" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" Visible="False" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                    <asp:ImageField DataImageUrlField="image_url" HeaderText="image" NullImageUrl="~/images/no-image.gif" ControlStyle-CssClass="img-thumbnail">
                        <ControlStyle CssClass="img-thumbnail"></ControlStyle>
                    </asp:ImageField>

                    <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DeleteImage" DeleteCommandType="StoredProcedure" SelectCommand="GetCarImages" SelectCommandType="StoredProcedure">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="id" Name="car_id" Type="Int32"></asp:QueryStringParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:FileUpload ID="FileUploadImage" runat="server" />
            <asp:RegularExpressionValidator ID="FileUploadImageValidator" runat="server"
                ControlToValidate="FileUploadImage"
                ErrorMessage="Doar imagini JPEG sunt acceptate"
                ValidationExpression="(.*\.([Jj][Pp][Gg])|.*\.([Jj][Pp][Ee][Gg])$)">
            </asp:RegularExpressionValidator>
            <asp:Button ID="ButtonAddImage" runat="server" CssClass="btn bg-info" Text="Adaugare imagine" OnClick="ButtonAddImage_Click" />
        </div>
        <div class="col-md-6">
            <asp:Label ID="LabelType" runat="server" CssClass="col-md-2" Text="Tip:"></asp:Label>
            <asp:DropDownList ID="DropDownListTypes" runat="server">
                <asp:ListItem Text="Sports" Value="Sports"></asp:ListItem>
                <asp:ListItem Text="Saloon" Value="Saloon"></asp:ListItem>
                <asp:ListItem Text="Hatch-back" Value="Hatch-back"></asp:ListItem>
                <asp:ListItem Text="Cabriolet" Value="Cabriolet"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="LabelMake" runat="server" CssClass="col-md-2" Text="Marca:"></asp:Label>
            <asp:TextBox ID="TextBoxMake" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMake" runat="server" ErrorMessage="Va rog introduceti marca!" ControlToValidate="TextBoxMake"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="LabelModel" runat="server" CssClass="col-md-2" Text="Model:"></asp:Label>
            <asp:TextBox ID="TextBoxModel" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorModel" runat="server" ErrorMessage="Va rog introduceti model!" ControlToValidate="TextBoxModel"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="LabelColour" runat="server" CssClass="col-md-2" Text="Telefon:"></asp:Label>
            <asp:TextBox ID="TextBoxColour" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorColour" runat="server" ErrorMessage="Va rog introduceti telefonul!" ControlToValidate="TextBoxColour"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="LabelPrice" runat="server" CssClass="col-md-2" Text="Pret:"></asp:Label>
            <asp:TextBox ID="TextBoxPrice" runat="server" MaxLength="9"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrice" runat="server" ErrorMessage="Va rog introduceti pretul!" ControlToValidate="TextBoxPrice"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorPrice" runat="server" ErrorMessage="Introduceti doar numere!" ControlToValidate="TextBoxPrice" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="LabelYear" runat="server" CssClass="col-md-2" Text="Anul:"></asp:Label>
            <asp:TextBox ID="TextBoxYear" runat="server" MaxLength="9"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorYear" runat="server" ErrorMessage="Va rog introduceti anul!" ControlToValidate="TextBoxYear"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorYear" runat="server" ErrorMessage="Introduceti doar numere!" ControlToValidate="TextBoxYear" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="LabelLocation" runat="server" CssClass="col-md-2" Text="Locatie:"></asp:Label>
            <asp:TextBox ID="TextBoxLocation" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorLocation" runat="server" ErrorMessage="Va rog introduceti locatia!" ControlToValidate="TextBoxLocation"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="ButtonUpdate" CssClass="btn btn-lg btn-primary" runat="server" Text="Update" OnClick="ButtonUpdate_Click" />
        </div>
    </div>
</asp:Content>

