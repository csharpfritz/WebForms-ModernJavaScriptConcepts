<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid.aspx.cs" Inherits="ModernJavaScript.Knockout.grid" MasterPageFile="~/Site.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">

  <div data-ng-app="myContent">

    <h2>Knockout Grid Sample</h2>

    <p>
      Our markup should be pretty standard to databind our grid. This simple grid is configured to load 3 customer
      records that are hardcoded into our code-behind and accessible through a GetCustomers method that was perfect for server-side model binding, but when a static keyword and a WebMethodAttribute are added, it now delivers data to the client.
    </p>

    <p>With Knockout, we need to add transportation for the data.  In this scenario, we have configured a WebAPI endpoint that this sample will use to databind against.  We could use a PageMethod with syntax similar to that demonstrated in the <a href="/Angular1/grid.aspx">Angular 1 Grid sample</a></p>

    <code>
      &lt;asp:GridView runat="server" ID="GridView1" ClientIDMode="Static"<br /> 
            AutoGenerateColumns="false"<br /> 
            <b>ClientDataBinding="<%: IsClientSideDataBindingEnabled.ToString().ToLowerInvariant() %>"</b> &gt;<br />
    </code>

    <br />

    <asp:LinkButton runat="server" ID="ToggleLink" OnClick="ToggleLink_Click">
      Get Data using <%: IsClientSideDataBindingEnabled ? "Server-Side" : "Client-Side" %> data binding
    </asp:LinkButton>


    <%-- 
    
    PROPOSED CODE CHANGE
  
    Additional attribute supported:  @ClientDataBinding: bool  
      Activates Modern JavaScript Rendering and client-side databinding


    
    --%>
    <h3>Sample</h3>
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
        <asp:BoundField DataField="ID" HeaderText="ID"  />
        <asp:BoundField DataField="FirstName" HeaderText="First Name" /> 
        <asp:BoundField DataField="LastName" HeaderText="Last Name" />
        <asp:BoundField DataField="FirstOrderDate" HeaderText="First Order Date" DataFormatString="{0:d}" />
      </Columns>
    </asp:GridView>

  </div>

</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="endOfPage">

  <% if (IsClientSideDataBindingEnabled)
    { %>

  <script type="text/javascript" src="/bower_components/knockout/dist/knockout.js"></script>
  <script type="text/javascript">

    var myViewModel = {};
    function FormatDate(dt) {
      return (dt.getMonth()+1).toString() + "/" + (dt.getDate()).toString() + "/" + dt.getFullYear().toString();
    }

    // Knockout method
    (function () {

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

    })();

  </script>
  <% } // End IsClientSideDataBindingEnabled check %>
</asp:Content>
