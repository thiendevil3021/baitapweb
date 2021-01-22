using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Bai4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btndathang1_Click(object sender, EventArgs e)
    {
        ListItem list = new ListItem();
        list.Text = Label1.Text;
        ListBox1.Items.Add(list);
    }

    protected void btnsp2_Click(object sender, EventArgs e)
    {
        ListItem list = new ListItem();
        list.Text = Label2.Text;
        ListBox1.Items.Add(list);
    }

    protected void btnsp3_Click(object sender, EventArgs e)
    {
        ListItem list = new ListItem();
        list.Text = Label3.Text;
        ListBox1.Items.Add(list);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (ListBox1.SelectedItem == null)
            return;
        else
        {
            ListBox1.Items.RemoveAt(ListBox1.SelectedIndex);
        }
    }
}