using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace test_1
{
    public partial class Adlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Clear()
        {
            txtUN.Text = "";
            AdPwd.Text = "";
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=ABHI;Initial Catalog=trial;Integrated Security=True");
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from [dbo].[P] where EID='" + txtUN.Text + "'and PSWD='" + AdPwd.Text + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows.Count > 0)
                {
                    Response.Redirect("Admin.aspx");

                }
                else
                {
                    lblmsg.Text = "error";
                }
            }
            catch(Exception ex)
            {
                lblmsg.Text = ex.Message.ToString();
            }
            finally
            {
                con.Close();
                Clear();
            }
           

        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserHP.aspx");
        }
    }
}