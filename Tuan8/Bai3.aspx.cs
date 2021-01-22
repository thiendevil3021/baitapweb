using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Bai3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView2.ActiveViewIndex = 0;
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        MultiView2.ActiveViewIndex = 1;
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        MultiView2.ActiveViewIndex = 2;
    }
    protected void xuatLogin(object sender, EventArgs e)
    {
        MultiView2.ActiveViewIndex = 3;
        lblXuat_US.Text = txtUserName.Text;
        lblXuat_PS.Text = txtPassWord.Text;
    }
    protected void xuatRegister(object sender, EventArgs e)
    {
        MultiView2.ActiveViewIndex = 4;
        lblRegister_US.Text = txtUS.Text;
        lblRegister_PS.Text = txtPS.Text;
        lblRegister_Email.Text = txtEmail.Text;
    }
}