using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }


    protected void btntieptuc_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void btnquaylai_click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void btntrang3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        lbltennv.Text = txtTennv.Text;
        lblngaysinh.Text = txtngaysinh.Text;
        lblsoCMT.Text = txtcmt.Text;
        lblnoicap.Text = txtnoicap.Text;
        lbllienlac.Text = txtlienlac.Text;
        lblvitri.Text = radiovitriungtuyen.SelectedItem.Text;
        String kq = "";
        foreach (ListItem list in chklistphucap.Items)
        {
            kq += list.Text + ",";
        }
        lblyeucaupc.Text = kq;
        lblloaihd.Text = ListBox1.SelectedItem.Text;
        lblphongban.Text = droplistphongban.SelectedItem.Text;
        lblngaybatdau.Text = Calendar1.SelectedDate.ToString();

        string filepath = MapPath(FileUpload1.FileName);
        FileUpload1.SaveAs(filepath);
        Image1.ImageUrl = FileUpload1.FileName;

        lbldc.Text = txtdiachithuongtru.Text;
        lblphone.Text = txtphone.Text;
        lblbangcap.Text = radiobangcap.SelectedItem.Text;
        String kq1 = "";
        foreach (ListItem list in chktrinhdo.Items)
        {
            kq1 += list.Text + ",";
        }
        lblngoaingu.Text = kq1;
        String kq2 = "";
        foreach (ListItem list in chkthoiquen.Items)
        {
            kq2 += list.Text + ",";
        }
        lblthoiquen.Text = kq2;
        lblhotencha.Text = txthotencha.Text;
        lblnghecha.Text = txtnghecha.Text;
        lblhotenme.Text = txthotenme.Text;
        lblngheme.Text = txtngheme.Text;
        lblsoluong.Text = txtsoluongchiem.Text;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        lblngaybatdau.Text = Calendar1.SelectedDate.ToString();
    }
}