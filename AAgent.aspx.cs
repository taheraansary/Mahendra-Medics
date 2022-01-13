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
    public partial class AAgent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gvVA.Visible = false;
            gvA.Visible = false;
        }

        protected void btnVA_Click(object sender, EventArgs e)
        {
            gvVA.Visible = true;
        }

        protected void btnAdmin_Click(object sender, EventArgs e)
        {
            gvA.Visible = true;
        }
        public void Clear()
        {
            txtAID.Text = "";
            txtDOB.Text = "";
            txtMNo.Text = "";
            txtFN.Text = "";
            txtEID.Text = "";
            txtAMN.Text = "";
            txtPwd.Text = "";
        }
        protected void btnADAgnt_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=ABHI;Initial Catalog=trial;Integrated Security=True");
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[AAgent]
           ([AgID]
           ,[DOB]
           ,[Mno]
           ,[FullN]
           ,[EID]
           ,[AltMno]
           ,[PSWD])
                 VALUES
                     ('" + txtAID.Text + "','" + txtDOB.Text + "','"
                         + txtMNo.Text + "','" + txtFN.Text + "','"
                         + txtEID.Text + "','" + txtAMN.Text + "','" + txtPwd.Text + "')", con);

                cmd.ExecuteNonQuery();

                          
            }
            catch(Exception ex)
            {
                lblAA.Text = ex.Message.ToString();              

            }
            finally
            {
                con.Close();
              lblAA.Text = "Agent " + txtAID.Text + "  has been registered  Sucessfully";
                Clear();
            }
            
            
        }
    }
}