using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BT1_TL_gio : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable cart = new DataTable();
        cart = Session["cart"] as DataTable;
        GridView1.DataSource = cart;
        GridView1.DataBind();
    }


}