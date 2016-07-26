using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Services;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace MustHaveApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //lblVersion.Text = "1.7";
        }

        [WebMethod]
        public static CodeDetails[] BindDatatable(string OnlineCode)
        {
            DataTable dt = new DataTable();
            //52.40.73.251
            List<CodeDetails> details = new List<CodeDetails>();
            //string cs = "server=awsdemo2.czpafcmavuki.us-west-2.rds.amazonaws.com,1433;user=AWSPOC;database=awsdemo2;password=AWSPOC1!;";
            string cs = "Data Source=52.40.73.251;Persist Security Info=True;Initial Catalog=AWSPOC;User ID=AWSPOC;PWD=AWSPOC1!;";
            //SqlConnection myConn = new SqlConnection("Data Source=52.40.73.251;Persist Security Info=True;User ID=AWSPOC;PWD=AWSPOC1!;");
            try
            {
                //using (SqlConnection con = new SqlConnection("Data Source=aws.czpafcmavuki.us-west-2.rds.amazonaws.com;Initial Catalog=awsPOC;port=1433;User ID=CloudPOC ;Password=CloudPOC"))
                //using (SqlConnection con = new SqlConnection("Data Source=awsdemo2.czpafcmavuki.us-west-2.rds.amazonaws.com,1433;Initial Catalog=awsdemo2;User ID=AWSPOC ;Password=AWSPOC1!"))
                using (SqlConnection con = new SqlConnection(cs))


                //using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString))
                {
                    con.Open();
                    //using (SqlCommand cmd = new SqlCommand("GetRecommendations", con))
                    //{
                    //    cmd.CommandType = CommandType.StoredProcedure;
                    //    cmd.Parameters.Add("@OnlineCode", SqlDbType.VarChar).Value = OnlineCode;

                    //    con.Open();
                    //    cmd.ExecuteNonQuery();
                    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    //    da.Fill(dt);
                    //    foreach (DataRow dtrow in dt.Rows)
                    //    {
                    //        CodeDetails cd = new CodeDetails();
                    //        cd.Code = dtrow["Code"].ToString();
                    //        cd.Description = dtrow["Description"].ToString();

                    //        details.Add(cd);
                    //    }
                    //}
                }
            }
            catch (Exception ex)
            {

                //CodeDetails cd = new CodeDetails();
                //cd.Code = ex.Message;
                //cd.Description = ex.Message;

                //details.Add(cd);
                throw ex;
            }
            //finally
            //{
            //    con
            //}
            return details.ToArray();
        }
        public class CodeDetails
        {
            public string Code { get; set; }
            public string Description { get; set; }
            
        }

      
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        //////////protected void btnTest_Click_Click(object sender, EventArgs e)
        //////////{
        //////////    try
        //////////    {
        //////////        //string OnlineCode = "123";
        //////////        DataTable dt = new DataTable();
        //////////        List<CodeDetails> details = new List<CodeDetails>();
        //////////        string cs = "Data Source=In-Mum-Aprimo;Initial Catalog=awsPOC;User ID=sa;Password=Aprimo@123";
        //////////        using (SqlConnection con = new SqlConnection(cs))
        //////////        //using (SqlConnection con = new SqlConnection("Data Source=awsdemo2.czpafcmavuki.us-west-2.rds.amazonaws.com,1433;Initial Catalog=AWSPOC;User ID=AWSPOC;Password=AWSPOC1!"))
        //////////        {
        //////////            //con.Open();
        //////////            ////////txtError.Text = "Successfull";

        //////////            //using (SqlCommand cmd = new SqlCommand("GetRecommendations", con))
        //////////            //{
        //////////                //cmd.CommandType = CommandType.StoredProcedure;
        //////////                //cmd.Parameters.Add("@OnlineCode", SqlDbType.VarChar).Value = OnlineCode;
        //////////            SqlCommand cmd = new SqlCommand();
        //////////            cmd.Connection = con;
        //////////                con.Open();
        //////////                ////////txtError.Text = "Connected";
        //////////                //cmd.ExecuteNonQuery();

        //////////                cmd.CommandType = CommandType.Text;
        //////////                cmd.CommandText = "insert [Recommendations](Code, OnlineCode, [Description]) values('7', '123', 'Spurhalte-Assistent')";
        //////////                cmd.ExecuteScalar();
        //////////                /////////txtError.Text = "Inserted";
        //////////                //SqlDataAdapter da = new SqlDataAdapter(cmd);
        //////////                //da.Fill(dt);
        //////////                //foreach (DataRow dtrow in dt.Rows)
        //////////                //{
        //////////                //    CodeDetails cd = new CodeDetails();
        //////////                //    cd.Code = dtrow["Code"].ToString();
        //////////                //    cd.Description = dtrow["Description"].ToString();

        //////////                //    details.Add(cd);
        //////////                //}
        //////////            //}
        //////////            con.Close();
        //////////        }
        //////////    }
        //////////    catch (Exception ex)
        //////////    {
        //////////        /////txtError.Text = ex.Message;
        //////////    }
        //////////}
    }
}