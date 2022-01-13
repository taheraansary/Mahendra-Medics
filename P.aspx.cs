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
    public partial class P : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // lblfn.Visible = false;
           // txtFN.Visible = false;
           // lblMN.Visible = false;
           // txtMNo.Visible = false;
           // lblEID.Visible = false;
           // txtEID.Visible = false;
           // lblPwd.Visible = false;
           // txtPwd.Visible = false;
        }
        public void Clear()
        {
            txtFN.Text = "";
            txtMNo.Text = "";
            txtEID.Text = "";
            txtID.Text = "";
            txtDlt.Text = "";
            txtPwd.Text = "";
        }

        protected void btnAA_Click(object sender, EventArgs e)
        {
           //lblfn.Visible = true;
           //txtFN.Visible = true;
           //lblMN.Visible = true;
           //txtMNo.Visible = true;
           //lblEID.Visible = true;
           //txtEID.Visible = true;
           //lblPwd.Visible = true;
           //txtPwd.Visible = true;

            SqlConnection con = new SqlConnection("Data Source=ABHI;Initial Catalog=trial;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[P]
           ([FulNm]
           ,[Mno]
           ,[EID]
           ,[PSWD])
     VALUES
           ('"+txtFN.Text+"','"+txtMNo.Text+"','"+txtEID.Text+"','"+txtPwd.Text+"')",con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lblAAdm.Text = "Admin" + txtEID.Text + "  has been registered  Sucessfully";
            Clear();
        }

       
        protected void btnDlt_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=ABHI;Initial Catalog=trial;Integrated Security=True");
            try
            {
                if (txtID.Text != "")
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("DELETE FROM dbo.AAgent WHERE AgID='" + txtID.Text + "'", con);
                    cmd.ExecuteNonQuery();
                    lblmsg.Text = "AgentID " + txtID.Text + "  has been Deleted Succesfully!..";
                }
                else
                {
                    lblmsg.Text = "Please! Enter the Valid ID..";
                }
            }
            catch (Exception ex)
            {
                lblmsg.Text = "Error!!.." + ex;
            }
            finally
            {
                con.Close();
                Clear();
            }
        }

        protected void btnSch_Click(object sender, EventArgs e)
        {
            lblmsg.Text = "";
            SqlConnection sqlcon = new SqlConnection("Data Source=ABHI;Initial Catalog=trial;Integrated Security=True");
            try
            {
                sqlcon.Open();
                SqlCommand cmd = new SqlCommand("select FullN from dbo.AAgent where AgID ='" + txtID.Text + "'", sqlcon);
                SqlDataReader dR = cmd.ExecuteReader();
                //SqlDataAdapter sda = new SqlDataAdapter(cmd);
                //DataTable dt = new DataTable();
                //sda.Fill(dt);
                //cmd.ExecuteNonQuery();
                if (dR.Read())
                {
                    txtDlt.Text = dR[0].ToString();
                    lblmsg.Text = "";
                }
                else
                {
                    lblmsg.Text = "Invalid AgentID!!.." + txtID.Text;
                }
            }
            catch (Exception ex)
            {
                lblmsg.Text = "Error!!." + ex;
            }
            finally
            {

                sqlcon.Close();
            }
        }
    }
}