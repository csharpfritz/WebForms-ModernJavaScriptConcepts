using ModernJavaScript.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ModernJavaScript.Angular1
{
  public partial class grid : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

      if (myGrid.Attributes["ClientDataBinding"] != "true")
      {
        var repo = new CustomerRepository();
        myGrid.DataSource = repo.Get();
        myGrid.DataBind();
      } else
      {
        myGrid.DataSource = new Customer[] { };
        myGrid.DataBind();
      }

    }

    [WebMethod]
    public static IEnumerable<Customer> GetCustomers()
    {

      var repo = new CustomerRepository();
      return repo.Get();

    }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable myGrid_GetData()
        {
            return null;
        }
    }
}