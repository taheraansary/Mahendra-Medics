using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

namespace test_1
{
    public partial class FP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBck_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        public void Clear()
        {
            txtEID.Text = "";
        }

        protected void btnFP_Click(object sender, EventArgs e)
        {
            string pwd;
            SqlConnection con = new SqlConnection("Data Source=ABHI;Initial Catalog=trial;Integrated Security=True");
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from dbo.reg where EID ='" + txtEID.Text + "'", con);
                SqlDataAdapter dA = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                dA.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows.Count > 0)
                {
                    pwd = dt.Rows[0]["PSWD"].ToString();
                    sendpwd(pwd, txtEID.Text);
                    lblFP.Text = "Your Password has been sent to your Register Email Address!!..";
                }
                else
                {
                    lblFP.Text = "Your Email ID is NOT Registor with us!!..";
                }
            }
            catch (Exception ex)
            {
                lblFP.Text = "Error!.. " + ex;
            }
            finally
            {
                con.Close();
            }

        }

        private void sendpwd(string pwd, string Email)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("mahendramedics@gmail.com", "777666777999888555@");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Forgot Password ( Mahendra Medics )";
            msg.Body = "User " + txtEID.Text + ", Your Password is  " + pwd + "\n\n\nThanks & Regards\nMahendra Medics  ";
            string toaddress = txtEID.Text;
            msg.To.Add(toaddress);
            string fromaddress = "Mahendra Medics <mahendramedics@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
            }
            catch
            {
                throw;
            }
        }
    }
}