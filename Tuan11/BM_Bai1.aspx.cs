using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BM_Bai1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //tao ket noi
        string strcn = ConfigurationManager.ConnectionStrings["BaiMau1"].ToString();
        SqlConnection cn = new SqlConnection(strcn);

        //tao cmd
        String strcmd = "select * from DSKH";
        SqlDataAdapter da = new SqlDataAdapter(strcmd, cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "abc");

        GridView1.DataSource = ds.Tables["abc"];
        GridView1.DataBind();
    }
}