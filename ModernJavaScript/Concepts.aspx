<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Concepts.aspx.cs" Inherits="ModernJavaScript.Concepts" MasterPageFile="~/Site.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">

  <h2>Shared Concepts</h2>

  <p>
    Existing applications should require very little, if any changes to their server-side code.  Optimally, it would
    be amazing if we could provide these enhancements as an adapter with minor markup changes.
  </p>
  <p>
    An idea that has been discussed, but needs to be fleshed out further is the concept of changing the <i>DataSource</i> behavior when ClientDataBinding is enabled.  When ClientDataBinding is enabled, we could instead interpret the DataSource attribute as a function name or HTTP endpoint to query for data.
  </p>

  <h3>Proposed Common Attributes</h3>

  <dl class="dl-horizontal">
    <dt>ClientDataBinding</dt>
    <dd>Bool - default value: false
      <br />
      When set to true output appropriate JavaScript and HTML formatting. 
    </dd>
  </dl>

  <h3>A Note about the Samples</h3>
  <p>
    These samples have been constructed to be very interactive to show both how a server-side implementation current works and how it could be augmented with the features described above and generate slightly different markup along with some JavaScript to connect the controls to their new client-side datasource.  To accomplish this, we abused the EmptyTemplate capabilities to include the prospective HTML that we would like delivered to the browser and tricked the server-side rendering of these controls to use the EmptyTemplate by rendering a server-side datasource with zero records.
  </p>

</asp:Content>
