using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BTVN_Bai2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (CheckBox1.Checked == false)
        {
            Label1.Text = "Phải ấn vào tôi đồng ý";
            return;
        }
        String strcn = ConfigurationManager.ConnectionStrings["BTVN2"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();

        String strcmd = "insert into tbl_ThanhVien values('" + txtMaKH.Text + "','" + txtTenKH.Text + "','" + txtMK.Text + "','" + txtEmail.Text + "','" + Session["hinhanh"].ToString() + "')";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strcmd;

        int rs = cmd.ExecuteNonQuery();

        if (rs > 0)
            Label1.Text = "Đã thêm";

        cn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        FileUpload fl = (FileUpload)FindControl("FileUpload1");
        Session.Add("hinhanh", MapPath("~/HinhAnhMinhHoa/" + fl.FileName));

        if (fl.ToString() != "")
        {
            fl.SaveAs(MapPath("~/HinhAnhMinhHoa/" + fl.FileName));
            Image1.ImageUrl = "~/HinhAnhMinhHoa/" + fl.FileName;
        }
    }
}