using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ModernJavaScript.Models
{

  public class Customer
  {

    public int ID { get; set; }

    public string FirstName { get; set; }

    public string LastName { get; set; }

    public DateTime FirstOrderDate { get; set; }

  }

  public class CustomerRepository
  {

    private static readonly Customer[] _Customers = new Customer[]
    {
      new Customer {ID=1, FirstName="Jeff", LastName="Fritz", FirstOrderDate=new DateTime(2006, 5, 9) },
      new Customer {ID=2, FirstName="Mary", LastName="Contrary", FirstOrderDate=new DateTime(2000,5,27) },
      new Customer {ID=3, FirstName="Joe", LastName="Bag O'Donuts", FirstOrderDate=new DateTime(2003, 10,22) }
    };

    public IEnumerable<Customer> Get()
    {
      return _Customers;
    }

  }

}