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
    public partial class AGlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserHP.aspx");
        }
        public void Clear()
        {
            txtUN.Text = "";
            txtpas.Text = "";
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=ABHI;Initial Catalog=trial;Integrated Security=True");
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from AAgent where AgID ='" + txtUN.Text + "'and PSWD ='" + txtpas.Text + "'", con);
                SqlDataAdapter dA = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                dA.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows.Count > 0)
                {

                    Response.Redirect("AGdashboard.aspx");
                }
                else
                {
                    lblAg.Text = "Invalid UserID and Password!..";
                }
                
            }
            catch (Exception ex)
            {
                lblAg.Text = ex.Message.ToString();
            }
            finally
            {
                con.Close();
              
                Clear();
            }
        }
    }
}
           
            
           

        
    

      
    
