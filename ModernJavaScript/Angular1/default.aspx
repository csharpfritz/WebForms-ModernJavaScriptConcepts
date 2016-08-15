<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ModernJavaScript.Angular1._default" MasterPageFile="~/Site.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">

  <h2>Angular 1 Samples</h2>

  <img src="logo.jpg" style="float:right;" alt="Angular Logo" title="Angular JS from Google" />

  <h3>Goal</h3>
  <p>
    To make it very simple to modernize a web forms application that uses advanced data-bound controls
    to generate simpler HTML and easily enable 2-way data-binding using JavaScript to communicate with
    ASP.NET server-side endpoints.  Code changes to enable the server-side interactions should be minimal.
  </p>

  <h3>Description</h3>
  <p>
    This application has references to Angular 1.5.7 to enable databinding on the client-side to these familiar
    ASP.NET Server-Side controls.  Each of these sample pages contains ONLY the control and some code to 
    activate and deactivate client-side features.  Additionally, there are toggles to enable Web Methods or
    WebAPI endpoint usage.
  </p>
  <p>
    You are encouraged to review the JavaScript that is added to the page as well as the server-side source code 
    for these samples.  
  </p>

  <h3>Versions</h3>
  <dl class="dl-horizontal">
    <dt>Angular</dt>
    <dd><a href="https://github.com/angular/bower-angular/tree/v1.5.7" target="_blank">1.5.7</a></dd>
  </dl>

  <h3>Samples</h3>
  <dl class="dl-horizontal">
    <dt><a href="grid.aspx">Simple GridView</a></dt>
    <dd>A standard ASP.NET GridView control that is configured to fetch data using Angular</dd>

    <dt>Simple Form Details</dt>
    <dd>A FormDetails control configured to fetch and save data using Angular.  Sample not completed yet</dd>
  </dl>

</asp:Content>