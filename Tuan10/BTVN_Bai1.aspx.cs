using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BTVN_Bai1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String strcn = ConfigurationManager.ConnectionStrings["QLT"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);

        cn.Open();
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(strcn);
        cmd.CommandText = " SELECT * FROM tblChuDe";
        cmd.Connection = con;
        SqlDataAdapter adpt = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adpt.Fill(ds);

        DropDownList1.DataSource = ds;
        DropDownList1.DataTextField = "TenChuDe";
        DropDownList1.DataValueField = "MaChuDe";
        DropDownList1.DataBind();
        cn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String strcn = ConfigurationManager.ConnectionStrings["QLT"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();
        FileUpload fl = (FileUpload)FindControl("FileUpload1");
        String i = MapPath("~/HinhAnhMinhHoa/" + fl.FileName);
        fl.SaveAs(MapPath("~/HinhAnhMinhHoa/" + fl.FileName));
        String strcmd = "insert into tblTinTuc values('" + TextBox1.Text + "','" + DropDownList1.SelectedValue.ToString()
            + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strcmd;

        int rs = cmd.ExecuteNonQuery();

        String strcmd2 = "insert into tbl_ChiTiet values('" + TextBox1.Text + "','"
            + TextBox3.Text + "','" + TextBox2.Text + "','" + i.ToString() + "','" + TextBox4.Text + "')";
        SqlCommand cmd2 = new SqlCommand();
        cmd2.Connection = cn;
        cmd2.CommandText = strcmd2;
        int rs2 = cmd2.ExecuteNonQuery();

        if (rs > 0 && rs2 > 0)
            Label7.Text = "Đã thêm";

        cn.Close();
    }
}