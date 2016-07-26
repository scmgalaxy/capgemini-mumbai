using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Net;
using System.Web.UI.WebControls;
using System.Threading.Tasks;
using System.Runtime.Serialization;
using System.Data;

using Newtonsoft.Json;

namespace MustHaveApp
{
    public partial class RestService : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var url = "http://pcfwebapi.azurewebsites.net/api/package/get/1";
            var syncClient = new WebClient();
            var jsonData = syncClient.DownloadString(url);
            DataTable table = JsonConvert.DeserializeObject<DataTable>(jsonData);
            tblRecommendations.DataSource = table;
            tblRecommendations.DataBind();
            
        }
    }
}