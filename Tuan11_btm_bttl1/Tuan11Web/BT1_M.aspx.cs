﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BT1_M : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String strcn = ConfigurationManager.ConnectionStrings["QLTin"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        

        String strcmd = "select * from Khachhang";

        SqlDataAdapter da = new SqlDataAdapter(strcmd, cn);
        DataSet ds = new DataSet();
        da.Fill(ds,"abc");
        GridView1.DataSource = ds.Tables["abc"];
        GridView1.DataBind();
    }
}