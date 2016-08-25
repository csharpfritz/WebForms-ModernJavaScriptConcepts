using ModernJavaScript.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ModernJavaScript.Angular1
{
  public partial class formdetails : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      ServerSideDataBinding();
    }

    public bool IsClientSideDataBindingEnabled
    {
      get { return myForm.Attributes["ClientDataBinding"].Equals("true", StringComparison.InvariantCultureIgnoreCase); }
    }


    [WebMethod]
    public static IEnumerable<Customer> GetCustomers([QueryString("id")]int id)
    {

      var repo = new CustomerRepository();
      return repo.Get().Where(c => c.ID == id).ToArray();

    }

    public void ServerSideDataBinding()
    {
      myForm.DataSource = !IsClientSideDataBindingEnabled ? GetCustomers(1) : new Customer[] { };
      myForm.DataBind();
    }

    protected void myForm_ModeChanging(object sender, FormViewModeEventArgs e)
    {

    }
  }
}