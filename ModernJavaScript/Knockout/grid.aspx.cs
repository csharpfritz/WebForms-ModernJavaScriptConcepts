using ModernJavaScript.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ModernJavaScript.Knockout
{
  public partial class grid : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

      ServerSideDataBinding();

    }

    public bool IsClientSideDataBindingEnabled
    {
      get { return myGrid.Attributes["ClientDataBinding"].Equals("true", StringComparison.InvariantCultureIgnoreCase); }
    }


    [WebMethod]
    public static IEnumerable<Customer> GetCustomers()
    {

      var repo = new CustomerRepository();
      return repo.Get();

    }

    public void ServerSideDataBinding()
    {
      myGrid.DataSource = !IsClientSideDataBindingEnabled ? GetCustomers() : new Customer[] { };
      myGrid.DataBind();
    }

    protected void ToggleLink_Click(object sender, EventArgs e)
    {
      myGrid.Attributes["ClientDataBinding"] = (!IsClientSideDataBindingEnabled).ToString();
      ServerSideDataBinding();
    }


  }
}