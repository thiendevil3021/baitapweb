using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BTVN1_Table : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcn = ConfigurationManager.ConnectionStrings["XXX"].ToString();
        SqlConnection cn = new SqlConnection(strcn);
        String strcmd = "select * from NhanVien";
        SqlDataAdapter da = new SqlDataAdapter(strcmd, cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "Databound");
        GridView1.DataSource = ds.Tables["Databound"];
        GridView1.DataBind();
    }
}