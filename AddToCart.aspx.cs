using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace test3
{
    public partial class AddToCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("medicineid");
                dt.Columns.Add("medicinename");
                dt.Columns.Add("quantity");
                dt.Columns.Add("mrp");
                dt.Columns.Add("totalmrp");
                dt.Columns.Add("medicineimage");
               
                dt.Columns.Add("batchno");
                dt.Columns.Add("manufacturer");
                dt.Columns.Add("expirydate");


                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        int quantity;
                        dr = dt.NewRow();
                        String mycon = "Data Source=ABHI;Initial Catalog=trial;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Meddetails where medicineid=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["medicineid"] = ds.Tables[0].Rows[0]["medicineid"].ToString();
                        dr["medicinename"] = ds.Tables[0].Rows[0]["medicinename"].ToString();
                        dr["medicineimage"] = ds.Tables[0].Rows[0]["medicineimage"].ToString();
                        
                        dr["mrp"] = ds.Tables[0].Rows[0]["mrp"].ToString();

                        dr["batchno"] = ds.Tables[0].Rows[0]["batchno"].ToString();
                        dr["manufacturer"] = ds.Tables[0].Rows[0]["manufacturer"].ToString();
                        dr["expirydate"] = ds.Tables[0].Rows[0]["expirydate"].ToString();
                        dr["quantity"] = ds.Tables[0].Rows[0]["quantity"].ToString(); 
                        
                        double mrp = Convert.ToDouble(ds.Tables[0].Rows[0]["mrp"].ToString());
                        quantity = Convert.ToInt32(Request.QueryString["quantity"].ToString());
                        double totalmrp = mrp * quantity;
                        dr["totalmrp"] = totalmrp;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();


                        Session["Buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");

                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;


                        dr = dt.NewRow();
                        String mycon = "Data Source=ABHI;Initial Catalog=trial;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Meddetails where medicineid =" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["medicineid"] = ds.Tables[0].Rows[0]["medicineid"].ToString();
                        dr["medicinename"] = ds.Tables[0].Rows[0]["medicinename"].ToString();
                        dr["medicineimage"] = ds.Tables[0].Rows[0]["medicineimage"].ToString();
                        dr["quantity"] = ds.Tables[0].Rows[0]["quantity"].ToString();
                        dr["mrp"] = ds.Tables[0].Rows[0]["mrp"].ToString();

                        dr["batchno"] = ds.Tables[0].Rows[0]["batchno"].ToString();
                        dr["manufacturer"] = ds.Tables[0].Rows[0]["manufacturer"].ToString();
                        dr["expirydate"] = ds.Tables[0].Rows[0]["expirydate"].ToString();



                        int mrp = Convert.ToInt16(ds.Tables[0].Rows[0]["mrp"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        dr["totalmrp"] = ds.Tables[0].Rows[0]["totalmrp"].ToString();
                        int totalmrp = mrp * quantity;
                        dr["totalmrp"] = totalmrp;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["Buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");
                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    }
                }
                Label2.Text = GridView1.Rows.Count.ToString();

            }
        }
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalmrp"].ToString());
                i = i + 1;

            }
            return gtotal;
        }

        //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    DataTable dt = new DataTable();
        //    dt = (DataTable)Session["buyitems"];

        //    for (int i = 0; i <= dt.Rows.Count - 1; i++)
        //    {
        //        int sr;
        //        int srl;
        //        string qdata;
        //        string dtdata;
        //        sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
        //        TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
        //        qdata = cell.Text;
        //        dtdata = sr.ToString();
        //        srl = Convert.ToInt32(qdata);

        //        if (sr == srl)
        //        {
        //            dt.Rows[i].Delete();
        //            dt.AcceptChanges();
        //            Label1.Text = "Item has been deleted from the shopping cart";
        //            break;
        //        }

        //    }

        //    for (int i = 1; i <= dt.Rows.Count; i++)
        //    {
        //        dt.Rows[i - 1]["sno"] = i;
        //        dt.AcceptChanges();
        //    }
        //    Session["buyitems"] = dt;
        //    Response.Redirect("AddToCart.aspx");
        //}


    }
}

