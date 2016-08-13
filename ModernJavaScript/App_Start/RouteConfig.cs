using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace ModernJavaScript
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {

            // Web Forms doesn't support FriendlyUrls + Web Methods 
            // var settings = new FriendlyUrlSettings();
            // settings.AutoRedirectMode = RedirectMode.Temporary;
            //routes.EnableFriendlyUrls(settings);
        }
    }
}
