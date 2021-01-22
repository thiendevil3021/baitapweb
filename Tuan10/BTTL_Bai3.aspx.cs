using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BTTL_Bai3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
        //tao ket noi 
        String strcn = ConfigurationManager.ConnectionStrings["QLSP"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();
        FileUpload fl = (FileUpload)FindControl("FileUpload1");
        Session.Add("hinhanh", MapPath("~/HinhAnhMinhHoa/" + fl.FileName));

        if (fl.ToString() != "")
        {
            fl.SaveAs(MapPath("~/HinhAnhMinhHoa/" + fl.FileName));
        }
        //lay maloai
        int ml;
        if (DropDownList1.Text.Equals("Tình yêu"))
        {
            ml = 1;
        }
        else if (DropDownList1.Text.Equals("Cuộc sống"))
        {
            ml = 2;
        }
        else
            ml = 3;

        //tao cmd 
        String strcmd = "insert into tbl_SanPham(MaSanPham,TenSP,DonGia,HinhAnh,Mota,ML) values('" + txtMasp.Text + "',N'" + txtTensp.Text + "','"
            + txtDongia.Text + "','" + Session["hinhanh"].ToString() + "','" + txtMota.Text + "','" + ml + "')";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strcmd;
        //thực thi 

        int rs = cmd.ExecuteNonQuery();
        if (rs == 1)
        {
            lblkq.Text = "Thêm thành công ";
        }
        else
            lblkq.Text = "Thất bại";
    }
}