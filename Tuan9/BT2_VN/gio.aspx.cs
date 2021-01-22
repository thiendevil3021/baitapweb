using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BT2_VN_gio : System.Web.UI.Page
{
    int flags = 0;
    private int _tongtien = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            //Hiện thị thông tin giỏ hàng
            DataTable cart = new DataTable();
            cart = Session["cart"] as DataTable;
            GridView1.DataSource = cart;
            GridView1.DataBind();
            foreach (DataRow dr in cart.Rows)
            {
                _tongtien += (int.Parse(dr["Quantity"].ToString())) * (int.Parse(dr["Price"].ToString()));
            }
            Label5.Text = _tongtien.ToString() + " VND";
        }
    }
   

    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        //Sửa thông tin giỏ hàng
        string id = GridView1.DataKeys[e.NewSelectedIndex].Value.ToString();
        TextBox quantity = GridView1.Rows[e.NewSelectedIndex].Cells[2].FindControl("txtQuantity")
            as TextBox;
        //Duyệt qua Giỏ hàng và tăng số lượng
        DataTable cart = Session["cart"] as DataTable;
        foreach (DataRow dr in cart.Rows)
        {
            //Kiểm tra mã sản phẩm phù hợp để gán số lượng khách hàng mua
            if (dr["ID"].ToString() == id)
            {
                dr["Quantity"] = int.Parse(quantity.Text);
                break;
            }
        }
        //Lưu lại vào Session
        Session["cart"] = cart;
        //Hiển thị giỏ hàng với thông tin mới
        GridView1.DataSource = cart;
        GridView1.DataBind();
        foreach (DataRow dr in cart.Rows)
        {
            _tongtien += (int.Parse(dr["Quantity"].ToString())) * (int.Parse(dr["Price"].ToString()));
        }
        Label5.Text = _tongtien.ToString() + " VND";
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //Xóa sản phẩm khỏi giỏ hàng
        string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        //Duyệt qua Giỏ hàng và xóa sản phẩm phù hợp
        DataTable cart = Session["cart"] as DataTable;
        foreach (DataRow dr in cart.Rows)
        {
            //Kiểm tra mã sản phẩm phù hợp để tăng số lượng
            if (dr["ID"].ToString() == id)
            {
                dr.Delete();
                break;
            }
        }
        //Lưu lại vào Session
        Session["cart"] = cart;
        //Hiển thị giỏ hàng với thông tin mới
        GridView1.DataSource = cart;
        GridView1.DataBind();
        foreach (DataRow dr in cart.Rows)
        {
            _tongtien += (int.Parse(dr["Quantity"].ToString())) * (int.Parse(dr["Price"].ToString()));
        }
        Label5.Text = _tongtien.ToString() + " VND";
    }
 

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("trangchu.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataTable cart = Session["cart"] as DataTable;
        cart.Clear();
        Response.Redirect("~/BT2_VN/gio.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable cart =(DataTable)Session["cart"] ;
            foreach (GridViewRow r in GridView1.Rows)
            {
                foreach (DataRow dr in cart.Rows)
                {
                    if(int.Parse(GridView1.DataKeys[r.DataItemIndex].Value.ToString())==int.Parse(dr["ID"].ToString()))
                    {
                        TextBox t = (TextBox)r.Cells[3].FindControl("txtQuantity");
                        if (Convert.ToInt32(t.Text) <= 0)
                            cart.Rows.Remove(dr);
                        else
                            dr["Quantity"] = t.Text;
                        break;
                       
                    }
                }
            }
            Session["cart"] = cart;
            Response.Redirect("~/BT2_VN/gio.aspx");
        }
        catch (Exception)
        {
            Response.Write("<script>alert('Đã Phát Sinh Lỗi, Vui Lòng Kiểm Tra Lại!...')</script>");
        }
    }
}