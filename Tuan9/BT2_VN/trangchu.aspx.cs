using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NguyenThaiBao_BT2_VN_trangchu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            DataTable cart = new DataTable();
            if (Session["cart"] == null)
            {
                cart.Columns.Add("ID");
                cart.Columns.Add("Name");
                cart.Columns.Add("Quantity");
                cart.Columns.Add("Price");
                cart.Columns.Add("Thanh");
                Session["cart"] = cart;
            }
            else
            {
                //Lấy thông tin giỏ hàng từ Session["cart"]
                cart = Session["cart"] as DataTable;
            }
            if (!String.IsNullOrEmpty(Request.QueryString["action"]))
            {
                if (Request.QueryString["action"] == "add")
                {
                    string id = Request.QueryString["id"];
                    string name = Request.QueryString["name"];
                    string price = Request.QueryString["price"];
                    string thanh = Request.QueryString["thanh"];
                    bool isExisted = false;
                    foreach (DataRow dr in cart.Rows)
                    {
                        if (dr["ID"].ToString() == id)
                        {
                            Response.Write("<script language='JavaScript'> alert('Sản phẩm đã có trong giỏ hàng !!'); </script>");
                            isExisted = true;
                            break;
                        }
                    }
                    

                    if (!isExisted)
                    {
                        DataRow dr = cart.NewRow();
                        dr["ID"] = id;
                        dr["Name"] = name;
                        dr["Quantity"] = 1;
                        dr["Price"] = price;
                        dr["Thanh"] = (int.Parse(dr["Quantity"].ToString())) * (int.Parse(dr["Price"].ToString()));
                        cart.Rows.Add(dr);
                    }
                    Session["cart"] = cart;
                }
            }

        }
    }

   
}