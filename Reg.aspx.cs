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
    public partial class Reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (rdmale.Checked == true)
            {
                Gender = rdmale.Text;
            }
            else if (rdfemale.Checked == true)
            {
                Gender = rdfemale.Text;
            }
            else if (rdothers.Checked == true)
            {
                Gender = rdothers.Text;
            }
        }

        string Gender = "Gender";
       

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserHP.aspx");
        }

        public void Clear()
        {
            txtFN.Text = "";
            txtLN.Text = "";
            txtEI.Text = "";
            txtDOB.Text = "";
            rdmale.Checked = false;
            rdfemale.Checked = false;
            rdothers.Checked = false;
            txtAD.Text = "";
            ddlAC.SelectedIndex = 0 ;
            txtPN.Text = "";
            txtPwd.Text = "";


        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=ABHI;Initial Catalog=trial;Integrated Security=True");
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[reg]
           ([FN]
           ,[LN]
           ,[EID]
           ,[DOB]
           ,[Gender]
           ,[ADrs]
           ,[AC]
           ,[MNO]
           ,[PSWD])
            VALUES
           ('" + txtFN.Text + "','" + txtLN.Text + "','" + txtEI.Text + "','" + txtDOB.Text + "','"
            + Gender + "','" + txtAD.Text + "','" + ddlAC.Text + "','" + txtPN.Text + "','"           
            + txtPwd.Text + "')", con);
             cmd.ExecuteNonQuery();
            }
            catch(Exception ex)
            {
                lblmsg.Text = ex.Message.ToString();
            }
            finally
            {
                con.Close();
                lblmsg.Text = "EId " + txtEI.Text + "  has been registered  Sucessfully";
                Clear();

            }

        }

       
    }
}