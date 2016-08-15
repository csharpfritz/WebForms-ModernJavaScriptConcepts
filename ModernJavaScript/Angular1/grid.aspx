<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid.aspx.cs" Inherits="ModernJavaScript.Angular1.grid" MasterPageFile="~/Site.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">

  <div>

    <h2>Angular Grid Sample</h2>

    <p>
      Our markup should be pretty standard to databind our grid.  Our idea is 
      to add a boolean ClientDataBinding attribute to the markup that activates 
      some JavaScript to format the grid with our Angular code.
    </p>

    <code>
      &lt;asp:GridView runat="server" ID="GridView1" ClientIDMode="Static"<br /> 
            AutoGenerateColumns="false"<br /> 
            <b>ClientDataBinding="<%: ClientSideDataBinding.ToString().ToLowerInvariant() %>"</b> &gt;<br />
    </code>

    <br />

    <asp:LinkButton runat="server" ID="ToggleLink" OnClick="ToggleLink_Click">
      Get Data using <%: ClientSideDataBinding ? "Server-Side" : "Client-Side" %> data binding
    </asp:LinkButton>

    <%-- 
    
    PROPOSED CODE CHANGE
  
    Additional attribute supported:  @ClientDataBinding: bool  
      Activates Modern JavaScript Rendering and client-side databinding


    
    --%>
    <h3>Sample</h3>
    <asp:GridView runat="server" ID="myGrid" ClientIDMode="Static" 
        AutoGenerateColumns="false" 
        ClientDataBinding="false">
      <EmptyDataTemplate>
        <%-- 
          Empty table rendered to simulate rich JavaScript interaction  
          This HTML should be the way that our code renders when client-side binding
          is enabled.  This EmptyDataTemplate should not be needed, because the control
          shall know that the content is being rendered client-side and should convert 
          BoundColumns and other column types to appropriate Angular formatting.
          --%>
        <table data-ng-app="myContent" data-ng-controller="myPageMethodController">
          <thead>
            <tr>
              <th>ID</th>
              <th>First Name</th>
              <th>Last Name</th>
              <th>First Order Date</th>
            </tr>
          </thead>
          <tbody>
            <tr data-ng-repeat="customer in customers">
              <td>{{customer.ID}}</td>
              <td>{{customer.FirstName}}</td>
              <td>{{customer.LastName}}</td>
              <td>{{customer.FirstOrderDate| date:'shortDate'}}</td>
            </tr>
          </tbody>
        </table>
      </EmptyDataTemplate>
      <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" /> 
        <asp:BoundField DataField="FirstName" HeaderText="First Name" /> 
        <asp:BoundField DataField="LastName" HeaderText="Last Name" /> 
        <asp:BoundField DataField="FirstOrderDate" HeaderText="First Order Date" DataFormatString="{0:d}" />
      </Columns>
    </asp:GridView>


  </div>

</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="endOfPage">

  <!-- This code should be generated and included when using ClientDataBinding -->

  <% if (ClientSideDataBinding)
    { 
      %>
  <script type="text/javascript" src="/bower_components/angular/angular.js"></script>
  <script type="text/javascript">

    // Overly simple Angular 1
    (function () {

      angular.module("myContent", []);
      angular.module("myContent")
        .controller("myPageMethodController", myPageMethodController, ['$scope'])

      function myPageMethodController($scope) {

        PageMethods.GetCustomers(function (result, context) {
          $scope.customers = result;
          $scope.$apply();
        })

      }

    })();

  </script>

  <% }  // End ClientSideBinding check 
        
    %>
</asp:Content>
