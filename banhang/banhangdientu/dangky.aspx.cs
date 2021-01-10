using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace banhangdientu
{
    public partial class dangky : System.Web.UI.Page
    {
        DataClasses1DataContext dt = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bt_dangky_Click(object sender, EventArgs e)
        {
            if(txt_dangky.Text=="")
            {
                lbl_thongbao.Text = "Không được bỏ trống tên đăng nhập";
                txt_dangky.Focus();
            }
            else if (txt_matkhau.Text == "")
            {
                lbl_thongbao.Text = "Không được bỏ trống mat khau";
                txt_matkhau.Focus();
            }
            else if (txt_nhaplaimk.Text == "")
            {
                lbl_thongbao.Text = "Không được bỏ trống nhập lại mật khẩu";
                txt_nhaplaimk.Focus();
            }
            else if(txt_matkhau.Text!=txt_nhaplaimk.Text)
            {
                lbl_thongbao.Text = "Nhập lại mật khẩu không đúng!!";
                txt_nhaplaimk.Text = "";
                txt_nhaplaimk.Focus();
            }
            else
            {
                dt.dangnhap_insert(txt_dangky.Text, txt_nhaplaimk.Text);
                var dl = dt.dangnhap_search(txt_dangky.Text, txt_matkhau.Text);
                int kt = dl.Count();
                if (kt > 0)
                {
                    Session["admin"] = true;
                    Response.Redirect("index.aspx");

                }
                else
                {
                    lbl_thongbao.Text = "Sai tên đăng nhập hoặc mật khẩu!!";
                    txt_dangky.Text = "";
                    txt_matkhau.Text = "";
                    txt_dangky.Focus();
                }
                
               
            }
        }
    }
}