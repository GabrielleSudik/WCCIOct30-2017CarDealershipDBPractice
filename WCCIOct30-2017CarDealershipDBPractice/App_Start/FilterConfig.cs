using System.Web;
using System.Web.Mvc;

namespace WCCIOct30_2017CarDealershipDBPractice
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
