using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace test_1
{
    public partial class UserHP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {
                lbNProd.Text = dt.Rows.Count.ToString();
            }
            else
            {
                lbNProd.Text = "0";

            }

        }

       
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "addtocart")
            {
                DropDownList dlist = (DropDownList)(e.Item.FindControl("Dropdownlist1"));
                Response.Redirect("AddToCart.aspx?id= " + e.CommandArgument.ToString() + "&quantity" + dlist.SelectedItem.ToString());
            }
        }
    }
}