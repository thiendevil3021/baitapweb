using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Bai2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnStep2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void btnStep1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnStep3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        lblFirstName.Text = txtFirstName.Text;
        lblLastName.Text = txtLastName.Text;
        lblGender.Text = DrowDropList1.SelectedValue;
        lblEmail.Text = txtEmail.Text;
        lblMobile.Text = txtMobile.Text;
    }
}