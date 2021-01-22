using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Bai2Mau2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblName1.Text = Session["Name"].ToString();
    }
}