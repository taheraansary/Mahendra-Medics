using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFP_Click(object sender, EventArgs e)
        {
            Response.Redirect("FP.aspx");
        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reg.aspx");
        }

        protected void btnBck_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserHP.aspx");
        }
        public void Clear()
        {
            txtEID.Text = "";
            txtPwd.Text = "";

        }
        protected void btnSub_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=ABHI;Initial Catalog=trial;Integrated Security=True");
            try 
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from reg where EID ='" + txtEID.Text + "'and PSWD ='" + txtPwd.Text + "'", con);
                SqlDataAdapter dA = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                dA.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows.Count > 0)
                {
                   // lblsub.Text = "success";


                   Response.Redirect("UserHP.aspx");
                }
                else
                {
                    lblsub.Text = "Invalid UserID and Password!..";
                }

            }
            catch (Exception ex)
            {
                lblsub.Text = ex.Message.ToString();
            }
            finally
            {
                con.Close();
                Clear();
            }

        }
    }
}