using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace MustHaveApp
{
    public partial class EquipmentRecommendation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RetrieveData();
        }

        public void RetrieveData()
        {
            try
            {
                //string OnlineCode = "123";
                DataTable dt = new DataTable();
                //List<CodeDetails> details = new List<CodeDetails>();
                string cs = "Data Source=In-Mum-Aprimo;Initial Catalog=awsPOC;User ID=sa;Password=Aprimo@123";
                using (SqlConnection con = new SqlConnection(cs))
                //using (SqlConnection con = new SqlConnection("Data Source=awsdemo2.czpafcmavuki.us-west-2.rds.amazonaws.com,1433;Initial Catalog=AWSPOC;User ID=AWSPOC;Password=AWSPOC1!"))
                {
                    //con.Open();
                    //txtError.Text = "Successfull";

                    using (SqlCommand cmd = new SqlCommand("GetRecommendations", con))
                    {
                    //SqlCommand cmd = new SqlCommand();
                    //cmd.Connection = con;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@OnlineCode", SqlDbType.VarChar).Value = Request.QueryString["txtOnlineCode"].ToString();

                        con.Open();
                        //txtError.Text = "Connected";
                        //cmd.ExecuteNonQuery();

                        //cmd.CommandType = CommandType.Text;
                        //cmd.CommandText = "insert [Recommendations](Code, OnlineCode, [Description]) values('1', '1', '123')";
                        //cmd.ExecuteScalar();
                        //txtError.Text = "Inserted";
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        tblRecommendations.GridLines = GridLines.None;
                        tblRecommendations.DataSource = ds.Tables[0];
                        tblRecommendations.DataBind();


                        tblRecommendations2.GridLines = GridLines.None;
                        tblRecommendations2.DataSource = ds.Tables[1];
                        tblRecommendations2.DataBind();



                    }
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                //txtError.Text = ex.Message;
            }
        }

             

    }
}