using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace UpdateMed
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void btnS_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=ABHI;Initial Catalog=trial;Integrated Security=True");
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select medicinename from dbo.Meddetails where batchno='" + txtBNo + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    txtMN.Text = dr[0].ToString();
                }
            }
            catch(Exception ex)
            {
                lblmsg.Text = "Error!! " + ex;
            }
            finally
            {
                con.Close();
            }
        }

        protected void BtnReset_Click(object sender, EventArgs e)
        {
            txtBNo.Text = txtMN.Text = "";
        }
    }
}