using ModernJavaScript.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ModernJavaScript.Controllers
{
  public class CustomerController : ApiController
  {
    // GET: api/Customer
    public IEnumerable<Customer> Get()
    {
      var repo = new CustomerRepository();
      return repo.Get();
    }

    //// GET: api/Customer/5
    //public string Get(int id)
    //{
    //    return "value";
    //}

    //// POST: api/Customer
    //public void Post([FromBody]string value)
    //{
    //}

    //// PUT: api/Customer/5
    //public void Put(int id, [FromBody]string value)
    //{
    //}

    //// DELETE: api/Customer/5
    //public void Delete(int id)
    //{
    //}
  }
}
