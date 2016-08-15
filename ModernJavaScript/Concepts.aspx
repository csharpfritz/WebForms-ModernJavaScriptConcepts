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



</asp:Content>
