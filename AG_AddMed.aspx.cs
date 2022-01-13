using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data.OleDb;

namespace Lg
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnUD_Click(object sender, EventArgs e)
        {
            string medicinename;
            string batchno;
            string manufacturer;
            string expirydate;
            string medicineimage;
            string mrp;
            try
            {
                string path = Path.GetFileName(FileUpload1.FileName);
                path = path.Replace(" ", "");
                FileUpload1.SaveAs(Server.MapPath("~/Details/") + path);
                String ExcelPath = Server.MapPath("~/Details/") + path;
                OleDbConnection mycon = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = " + ExcelPath + "; Extended Properties = Excel 12.0; Persist Security Info = False");
                mycon.Open();
                OleDbCommand cmd = new OleDbCommand("select * from [Sheet1$]", mycon);
                OleDbDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    medicinename = dr[0].ToString();
                    batchno = dr[1].ToString();
                    manufacturer = dr[2].ToString();
                    expirydate = dr[3].ToString();
                    medicineimage = dr[4].ToString();
                    mrp = dr[5].ToString();
                    savedata(medicinename, batchno, manufacturer, expirydate, medicineimage, mrp);

                }
                mycon.Close();
                lblmsg.Text = "Data has been save successfully";
            }
            catch(Exception ex)
            {
                lblmsg.Text = "Error!1.. " + ex;

            }
        }

        private void savedata(string medicinename, string batchno, string manufacturer, string expirydate, string medicineimage, string mrp)
        {
            try
            {
                string query = " INSERT INTO [dbo].[Meddetails] (medicinename, batchno, manufacturer, expirydate, medicineimage, mrp)" +
           "values(" + medicinename + ",'" + batchno + "','" + manufacturer + "','" + expirydate + "','" + medicineimage + "','" + mrp + "',')";
                string mycon = "Data Source=ABHI;Initial Catalog=trial;Integrated Security=True";
                SqlConnection sqlcon = new SqlConnection(mycon);
                sqlcon.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = sqlcon;
                cmd.ExecuteNonQuery();
                sqlcon.Close();
            }
            catch (Exception ex)
            {
                lblmsg.Text = "Error!.. " + ex;
            }
        }
        
}
}