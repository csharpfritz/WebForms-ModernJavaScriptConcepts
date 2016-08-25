<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formdetails.aspx.cs" Inherits="ModernJavaScript.Angular1.formdetails" MasterPageFile="~/Site.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">

  <h2>Angular 1 Form Details Sample</h2>

  <h3>Sample</h3>

  <fieldset>
  <asp:FormView runat="server" ID="myForm" ItemType="ModernJavaScript.Models.Customer"
    OnModeChanging="myForm_ModeChanging"
    ClientDataBinding="false">
    <ItemTemplate>
      <dl class="dl-horizontal">
        <dt>ID:</dt>
        <dd><%#: Item.ID %></dd>
        <dt>First Name:</dt>
        <dd><%#: Item.FirstName %></dd>
        <dt>Last Name:</dt>
        <dd><%#: Item.LastName %></dd>
        <dt>First Order Date:</dt>
        <dd><%#: Item.FirstOrderDate.ToShortDateString() %></dd>
      </dl>

      <div>
        <asp:LinkButton runat="server" ID="editButton" Text="Edit" CommandName="Edit"></asp:LinkButton>
          &nbsp;&nbsp;&nbsp;
        <asp:LinkButton runat="server" ID="addButton" Text="Add New" CommandName="Insert"></asp:LinkButton>
          &nbsp;&nbsp;&nbsp;
        <asp:LinkButton runat="server" ID="deleteButton" Text="Delete" CommandName="Delete"></asp:LinkButton>
      </div>

    </ItemTemplate>
  </asp:FormView>
  </fieldset>

</asp:Content>