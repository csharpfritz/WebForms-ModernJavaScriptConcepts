<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ModernJavaScript._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>Web Forms with Modern JavaScript</h2>
        <p>Web Forms is known for its use of a rich control syntax and the mangled HTML that results 
          from those controls.  Unfortunately, this reduces its usability
          with modern JavaScript UI frameworks.  However, with these modern frameworks we find that there
          is a mountain of yak-shaving in the JavaScript and CSS configuration required before even the simplest "Hello-World" page can be built.
        </p>
      <p>
            This application explores some concepts that
          could be implemented to make Web Forms and several JavaScript framework play very nicely together
          and perhaps even make it VERY easy to adapt existing applications to work with those frameworks.
        </p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Scope</h2>
            <p>
                The modern JavaScript frameworks targeted by this concept application provide rich features around
              data-binding and working with HTTP endpoints to fetch and manage data in a RESTful manner.</p>
          <p>This application explores extending and enhancing the standard data-bound controls to deliver simpler HTML
              and even enable data-binding to HTTP endpoints.
            </p>
          <p>Read more about <br /><a class="btn btn-default btn-primary" runat="server" href="~/Concepts.aspx">Common Concepts &raquo;</a></p>
        </div>
        <div class="col-md-4">
            <h2>Angular 1</h2>
            <p>
                Angular 1 is a very popular framework that relies on a model-view-controller architecture to 
              manage an application.  The samples constructed in this application use Angular 1.5.7 and 
              demonstrate concepts for simple data-binding to a GridView anda Form Details control.
            </p>
            <p>
                <a class="btn btn-default btn-primary" runat="server" href="~/Angular1">Angular 1 Samples &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Knockout JS</h2>
            <p>
                Knockout JS is a simple 2-way data-binding framework that allows you to manage data simply with a template-driven
              syntax.  It does not know how to connect to HTTP endpoints, and our demos are augmented with jQuery 1.10 to
              support those connections and interactions.
            </p>
            <p>
                <a class="btn btn-default btn-primary" runat="server" href="~/Knockout">Knockout Samples &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
