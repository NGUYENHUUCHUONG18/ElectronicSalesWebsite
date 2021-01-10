using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace banhangdientu
{
    public partial class login : System.Web.UI.Page
    {
        DataClasses1DataContext dt = new DataClasses1DataContext();
        public class tendn
        {
            static public string ten;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Bt_dangnhap_Click(object sender, EventArgs e)
        {
            tendn.ten = txt_tendangnhap.Text;
           
            var dl = dt.dangnhap_search(txt_tendangnhap.Text, txt_matkhau.Text);
            int kt = dl.Count();
            if ( kt > 0)
            {
                Session["admin"] = true;
                Response.Redirect("index.aspx");
                
            }
            else
            {
                lbl_thongbao.Text = "Sai tên đăng nhập hoặc mật khẩu!!";
                txt_tendangnhap.Text = "";
                txt_matkhau.Text = "";
                txt_tendangnhap.Focus();
            }
            
        }
        
    }
}