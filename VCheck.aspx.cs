﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test_1
{
    public partial class VCheck : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnVAM_Click(object sender, EventArgs e)
        {
            gvAm.Visible = true;
        }
    }
}