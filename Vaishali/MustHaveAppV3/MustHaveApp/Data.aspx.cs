using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

namespace MustHaveApp
{
    public partial class Data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTest_Click(object sender, EventArgs e)
        {
            try
            {
                //string OnlineCode = "123";
                DataTable dt = new DataTable();
                //List<CodeDetails> details = new List<CodeDetails>();
                //string cs = "Data Source=In-Mum-Aprimo;Initial Catalog=awsPOC;User ID=sa;Password=Aprimo@123";
                //using (SqlConnection con = new SqlConnection(cs))
                using (SqlConnection con = new SqlConnection("Data Source=awsdemo2.czpafcmavuki.us-west-2.rds.amazonaws.com,1433;Initial Catalog=AWSPOC;User ID=AWSPOC;Password=AWSPOC1!"))
                {
                    //con.Open();
                    ///////txtError.Text = "Successfull";

                    //using (SqlCommand cmd = new SqlCommand("GetRecommendations", con))
                    //{
                    //cmd.CommandType = CommandType.StoredProcedure;
                    //cmd.Parameters.Add("@OnlineCode", SqlDbType.VarChar).Value = OnlineCode;
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    con.Open();
                    ////////txtError.Text = "Connected";
                    //cmd.ExecuteNonQuery();

                    cmd.CommandType = CommandType.Text;
                    ///////cmd.CommandText = "insert [Recommendations](Code, OnlineCode, [Description]) values('7', '123', 'Spurhalte-Assistent')";
                    cmd.CommandText = txtError.Text.ToString().Replace("\r\n","");
                    cmd.ExecuteScalar();
                    txtError.Text = txtError.Text + "\n Executed ";
                    //SqlDataAdapter da = new SqlDataAdapter(cmd);
                    //da.Fill(dt);
                    //foreach (DataRow dtrow in dt.Rows)
                    //{
                    //    CodeDetails cd = new CodeDetails();
                    //    cd.Code = dtrow["Code"].ToString();
                    //    cd.Description = dtrow["Description"].ToString();

                    //    details.Add(cd);
                    //}
                    //}
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                txtError.Text = ex.Message;
            }
        }
    }
}
