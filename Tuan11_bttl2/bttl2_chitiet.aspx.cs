using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bttl2_chitiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //tao ket noi
        string strcn = ConfigurationManager.ConnectionStrings["BTTL2"].ToString();
        SqlConnection cn = new SqlConnection(strcn);

        //tao cmd
        String strcmd = "select manhanvien,tennhanvien,ngaysinh,hinhanh,gioitinh,diachi,dienthoai from nhanvien nv, phongban pb where nv.maphong = pb.maphong";
        SqlDataAdapter da = new SqlDataAdapter(strcmd, cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "Databound");

        GridView1.DataSource = ds.Tables["Databound"];
        GridView1.DataBind();
    }
}