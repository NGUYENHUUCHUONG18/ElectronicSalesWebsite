<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="banhangdientu.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #ndcontent {
            height: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Đăng nhập</h1>
         <div id="ndcontent">
             <table style="height: 78px">
                 <tr>
                     <td>
                          <asp:Label ID="Label1" runat="server" Text="Tên đăng nhập"></asp:Label>
                     </td>
                     <td>
                          <asp:TextBox ID="txt_tendangnhap" runat="server" Width="151px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>
                          <asp:Label ID="Label2" runat="server" Text="Mật khẩu"></asp:Label>
                     </td>
                     <td>
                          <asp:TextBox ID="txt_matkhau" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Button ID="Bt_dangnhap" runat="server" Text="Đăng nhập" Width="106px" OnClick="Bt_dangnhap_Click" />
                     </td>
                     <td>
                         <asp:Label ID="lbl_thongbao" runat="server" Text=""></asp:Label>
                     </td>
                 </tr><br />
             </table>
                      
         </div>  
</asp:Content>
    