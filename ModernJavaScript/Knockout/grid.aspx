<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid.aspx.cs" Inherits="ModernJavaScript.Knockout.grid" MasterPageFile="~/Site.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">

  <div data-ng-app="myContent">

    <h2>Knockout Grid Sample</h2>

    <%-- 
    
    PROPOSED CODE 
  
    Additional attribute supported:  @ClientDataBinding: bool  
    
    --%>
    <asp:GridView runat="server" ID="myGrid" ClientIDMode="Static" AutoGenerateColumns="false" 
        ClientDataBinding="true" ClientRepeatAttribute="data-bind" ClientRepeatValue="foreach: customers" >
      <EmptyDataTemplate>
        <table id="myGrid">
          <thead>
            <tr>
              <th>ID</th>
              <th>First Name</th>
              <th>Last Name</th>
              <th>First Order Date</th>
            </tr>
          </thead>
          <tbody data-bind="foreach: Customers">
            <tr>
              <td><!--ko text: ID --><!--/ko--></td>
              <td><!--ko text: FirstName --><!--/ko--></td>
              <td><!--ko text: LastName --><!--/ko--></td>
              <td><!--ko text: FormatDate(FirstOrderDate) --><!--/ko--></td>
            </tr>
          </tbody>
        </table>
      </EmptyDataTemplate>
      <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID"  /> <%-- ClientExpression="<!--ko text: ID --><!--/ko-->" --%>
        <asp:BoundField DataField="FirstName" HeaderText="First Name" /> <%-- ClientExpression="<!--ko text: FirstName --><!--/ko-->"   --%>
        <asp:BoundField DataField="LastName" HeaderText="Last Name" /> <%--  ClientExpression=<!--ko text: LastName --><!--/ko-->" --%>
        <asp:BoundField DataField="FirstOrderDate" HeaderText="First Order Date" DataFormatString="{0:d}" /> <%-- ClientExpression="<!--ko text: FirstOrderDate --><!--/ko-->"  --%>
      </Columns>
    </asp:GridView>

  </div>

</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="endOfPage">
  <script type="text/javascript" src="/bower_components/knockout/dist/knockout.js"></script>
  <script type="text/javascript">

    var pageMethod = true;
    var myViewModel = {};
    function FormatDate(dt) {
      return (dt.getMonth()+1).toString() + "/" + (dt.getDate()).toString() + "/" + dt.getFullYear().toString();
    }

    // Knockout method
    (function () {

      if (pageMethod) {
        PageMethods.GetCustomers(function (result, context) {
          myViewModel.Customers = ko.observableArray(result);
          ko.applyBindings(myViewModel, document.getElementById("myGrid"));
        });
      } else {

        // jQuery
        $.get("/api/Customer")
          .success(function (data) {
            // Convert back to a date
            $.each(data, function (i, customer) {
              customer.FirstOrderDate = new Date(Date.parse(customer.FirstOrderDate));
            })
            console.log(data);
            myViewModel.Customers = ko.observableArray(data);
            ko.applyBindings(myViewModel, document.getElementById("myGrid"));
          });

      }

    })();

    // Do we put together a framework-specific data source for client side databinding?  "KnockoutDataSource"

  </script>
</asp:Content>
