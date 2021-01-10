<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="dangky.aspx.cs" Inherits="banhangdientu.dangky" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Đăng ký</h1>
         <div id="ndcontent">
             <table style="height: 78px">
                 <tr>
                     <td>
                          <asp:Label ID="Label1" runat="server" Text="Tên đăng nhập"></asp:Label>
                     </td>
                     <td>
                          <asp:TextBox ID="txt_dangky" runat="server" Width="151px"></asp:TextBox>
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
                          <asp:Label ID="Label3" runat="server" Text="Nhập lại Mật khẩu"></asp:Label>
                     </td>
                     <td>
                          <asp:TextBox ID="txt_nhaplaimk" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Button ID="Bt_dangky" runat="server" Text="Đăng ký" Width="107px" OnClick="Bt_dangky_Click" Height="31px" />
                     </td>
                     <td>
                         <asp:Label ID="lbl_thongbao" runat="server" Text=""></asp:Label>
                     </td>
                 </tr><br />
             </table>
                      
         </div>  
</asp:Content>
