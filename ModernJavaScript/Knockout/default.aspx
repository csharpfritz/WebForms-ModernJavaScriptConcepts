<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ModernJavaScript.Knockout._default" MasterPageFile="~/Site.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">

  <h2>Knockout Samples</h2>

  <img src="logo.jpg" style="float:right;" alt="KnockoutJS Logo" title="Knockout JS" />

  <h3>Goal</h3>
  <p>
    To make it very simple to modernize a web forms application that uses advanced data-bound controls
    to generate simpler HTML and easily enable 2-way data-binding using JavaScript to communicate with
    ASP.NET server-side endpoints.  Code changes to enable the server-side interactions should be minimal.
  </p>

  <h3>Description</h3>
  <p>
  </p>
  
  <dl class="dl-horizontal">
    <dt><a href="grid.aspx">Simple GridView</a></dt>
    <dd>A standard ASP.NET GridView control that is configured to fetch data using jQuery and bind with Knockout</dd>

    <dt><a href="formdetails.aspx">Simple Form Details</a></dt>
    <dd>A FormDetails control configured to fetch and save data using jQuery and data-bind using Knockout</dd>
  </dl>

</asp:Content>