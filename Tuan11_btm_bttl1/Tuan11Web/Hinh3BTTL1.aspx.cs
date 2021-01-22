using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hinh3BTTL1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String strcn = ConfigurationManager.ConnectionStrings["QLTin2"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);

        SqlCommand cmd = new SqlCommand("select Tentheloai from Theloaitin where IDLoai = '" + Request.QueryString["id"] + "'", cn);
        cmd.CommandType = CommandType.Text;
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
            Label1.Text = dr["Tentheloai"].ToString();
        cn.Close();

        String strcmd = "select IDTIN,TENTHELOAI,TIEUDETIN,NOIDUNGTIN from TINTUC,THELOAITIN where tintuc.idloai=theloaitin.idloai and tintuc.IDLoai='" + Request.QueryString["id"] + "'";

        SqlDataAdapter da = new SqlDataAdapter(strcmd, cn);
       
        DataSet ds = new DataSet();
        da.Fill(ds, "abc");
        GridView1.DataSource = ds.Tables["abc"];
        
        GridView1.DataBind();
    }
}