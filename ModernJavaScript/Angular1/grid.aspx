<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid.aspx.cs" Inherits="ModernJavaScript.Angular1.grid" MasterPageFile="~/Site.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">

  <div data-ng-app="myContent" data-ng-controller="myRestfulController">

    <h2>Angular Grid Sample</h2>

    <%-- 
    
    PROPOSED CODE 
  
    Additional attribute supported:  @ClientDataBinding: bool  
    
    --%>
      <asp:SqlDataSource runat="server" ID="mySqlDataSource"></asp:SqlDataSource>

    <asp:GridView runat="server" ID="myGrid" ClientIDMode="Static" AutoGenerateColumns="false" 
        ClientDataBinding="true"
        ClientRepeatAttribute="data-ng-repeat" 
        ClientRepeatValue="customer in customers">
      <EmptyDataTemplate>
        <table>
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
        <asp:BoundField DataField="ID" HeaderText="ID" /> <%-- ClientExpression="{{customer.ID}}" --%>
        <asp:BoundField DataField="FirstName" HeaderText="First Name" /> <%-- ClientExpression="{{customer.FirstName}}"   --%>
        <asp:BoundField DataField="LastName" HeaderText="Last Name" /> <%--  ClientExpression="{{customer.LastName}}" --%>
        <asp:BoundField DataField="FirstOrderDate" HeaderText="First Order Date" DataFormatString="{0:d}" /> <%-- ClientExpression="{{customer.FirstOrderDate | date:'shortDate'}}"  --%>
      </Columns>
    </asp:GridView>


  </div>

</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="endOfPage">
  <script type="text/javascript" src="/bower_components/angular/angular.js"></script>
  <script type="text/javascript">

    // Overly simple Angular 1
    (function () {

      angular.module("myContent", []);
      angular.module("myContent")
        .controller("myPageMethodController", myPageMethodController, ['$scope'])
        .controller("myRestfulController", myRestfulController, ['$scope', '$http']);

      function myPageMethodController($scope) {

        PageMethods.GetCustomers(function (result, context) {
          $scope.customers = result;
          $scope.$apply();
        })

      }

      function myRestfulController($scope, $http) {

        $http.get("/api/Customer")
          .success(function (data) {
            $scope.customers = data;
          })

      }

    })();

    // Do we put together a framework-specific data source for client side databinding?  "AngularDataSource"

  </script>

    <%--<asp:ClientDataSource runat="server" id="myClientData" ApiEndpoint="PageMethods.GetCustomers" Mode="KnockoutService"></asp:ClientDataSource>--%>


</asp:Content>
