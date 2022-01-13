using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test_1
{
    public partial class PAY : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void rdbT_CheckedChanged(object sender, EventArgs e)
        {
            txtT.Visible = true;
        }

        protected void rdbC_CheckedChanged(object sender, EventArgs e)
        {
            txtT.Visible = false;
        }
    }
}