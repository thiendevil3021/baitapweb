using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebUserControl_ChooseFromList : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnadd_click(object sender, EventArgs e)
    {
        if (listItem.SelectedItem == null)
            return;
        else
        {
            ListBox2.Items.Add(listItem.SelectedValue);
            listItem.Items.RemoveAt(listItem.SelectedIndex);
        }
    }
    protected void btnaddall_Click(object sender, EventArgs e)
    {
        foreach(ListItem list in listItem.Items)
        {
            ListBox2.Items.Add(list);
        }
        listItem.Items.Clear();   
    }

    protected void btnremove_Click(object sender, EventArgs e)
    {
        if(ListBox2.SelectedItem==null)
            return;
        else
        {
            listItem.Items.Add(ListBox2.SelectedValue);
            ListBox2.Items.RemoveAt(ListBox2.SelectedIndex);
        }
    }

    protected void btnremoveall_Click(object sender, EventArgs e)
    {
        foreach(ListItem list in ListBox2.Items)
        {
            listItem.Items.Add(list);
        }
        ListBox2.Items.Clear();
    }
}