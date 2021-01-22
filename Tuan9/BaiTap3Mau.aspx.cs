using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BaiTap3Mau : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            MultiView1.ActiveViewIndex = 0;
            Session["Name"] = txtName.Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        lblName.Text = Session["Name"].ToString();
    }
}