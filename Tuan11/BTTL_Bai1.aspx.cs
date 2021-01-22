using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BTTL_Bai1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcn = ConfigurationManager.ConnectionStrings["BTTL1"].ToString();
        SqlConnection cn = new SqlConnection(strcn);

        String strcmd = "select idtin, tentheloai, tieudetin,noidungtin from theloaitin tlt, tintuc tt where tlt.idloai = tt.idloai";
        String strcmd2 = "select * from theloaitin";
        SqlDataAdapter da = new SqlDataAdapter(strcmd, cn);
        SqlDataAdapter da2 = new SqlDataAdapter(strcmd2, cn);
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();

        da.Fill(ds, "Databound");
        GridView1.DataSource = ds.Tables["Databound"];
        GridView1.DataBind();
        da2.Fill(ds2, "Databound");
        GridView2.DataSource = ds2.Tables["Databound"];
        GridView2.DataBind();
    }
}