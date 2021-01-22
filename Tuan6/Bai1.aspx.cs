using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Bai1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        foreach (ListItem lt in this.CheckBoxList1.Items)
        {
            if (lt.Selected)
                CheckBoxList1.SelectedItem.Selected = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String kq = "";
        foreach (ListItem lt in this.CheckBoxList1.Items)
        {
            if (lt.Selected)
            {
                
                kq += " " +lt.Text;
            }
        }
        foreach (ListItem lt in this.CheckBoxList2.Items)
        {
            if (lt.Selected)
            {

                kq += " " + lt.Text;
            }
        }
        this.Label1.Text = kq;
    }
}