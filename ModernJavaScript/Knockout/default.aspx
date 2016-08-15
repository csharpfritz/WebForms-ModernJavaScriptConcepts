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
    Knockout is a great data-binding library, but needs some help to transfer data across HTTP.  These samples
    add a dash of jQuery to enable interaction with the server-side endpoints.  There are toggles on each sample
    so that you can see how the interaction COULD work with the Knockout bindings.
  </p>
  <p>
    It is recommended that you review the HTML and JavaScript source that is generated so that you can
    learn more about the markup and JavaScript interactions.
  </p>

  <h3>Versions</h3>
  <dl class="dl-horizontal">
    <dt>KnockoutJS</dt>
    <dd><a href="https://github.com/knockout/knockout/tree/v3.4.0" target="_blank">3.4.0</a></dd>
    <dt>jQuery</dt>
    <dd><a href="https://github.com/jquery/jquery/tree/1.10.2" target="_blank">1.10.2</a></dd>
  </dl>
  
  <h3>Samples</h3>
  <dl class="dl-horizontal">
    <dt><a href="grid.aspx">Simple GridView</a></dt>
    <dd>A standard ASP.NET GridView control that is configured to fetch data using jQuery and bind with Knockout</dd>

    <dt>Simple Form Details</dt>
    <dd>A FormDetails control configured to fetch and save data using jQuery and data-bind using Knockout.  Sample not completed yet</dd>
  </dl>

</asp:Content>