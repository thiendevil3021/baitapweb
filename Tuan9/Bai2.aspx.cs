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
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        lblTenSach.Text = txtTenSach.Text;

        string filepath = MapPath(FileUpload1.FileName);
        FileUpload1.SaveAs(filepath);
        
        lblFileHinh.Text = FileUpload1.FileName;

        Request.SaveAs("G:\\Web\\Tuan9\\Bai2.txt", true);
    }
}