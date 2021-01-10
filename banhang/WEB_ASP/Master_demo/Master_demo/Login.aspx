<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Master_demo.Login" %>

<!DOCTYPE html>
 <html lang="en">
 <head>
 	<meta charset="UTF-8">
 	<title>Trang đăng nhập</title>
 	<!-- Latest compiled and minified CSS & JS -->
 	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" >
	<link rel="stylesheet" href="bootstrap/filecsslogin.css" >
	<script src="bootstrap/jquery.js"></script>
	<script src="bootstrap/bootstrap.js"></script>
	<script src="bootstrap/java.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
 </head>
 <body>
 
 	<div class="container-fluid">
 	<form class="backgroud" action="admin.html" method="POST" role="form">
 				
 			
 				<div class="form-group">
 					<h1 >ĐĂNG NHẬP</h1>
 					<label for="">Tên đăng nhập</label>
 					 <asp:TextBox CssClass="form-control" ID="txt_tendangnhap" runat="server" Width="354px" Height="30px"></asp:TextBox>
 					<label for="">Mật khẩu</label>
 					 <asp:TextBox CssClass="form-control" ID="txt_matkhau" runat="server" TextMode="Password" Width="352px" Height="30px"></asp:TextBox>
					<asp:Label ID="lbl_thongbao" runat="server" Text=""></asp:Label>
					&nbsp;
					<a href="#"><label for="">Quên mật khẩu?</label></a> 
					<br>
 					<center><asp:Button ID="Bt_dangnhap" runat="server" Text="Đăng nhập" Width="106px" OnClick="Bt_dangnhap_Click" CssClass="btn btn-primary btn"/>&nbsp;
                        <asp:Button ID="bt_dangky" runat="server" Text="Đăng ký" Width="106px" OnClick="Bt_dangky_Click" CssClass="btn btn-primary btn"/>&nbsp;
                        <asp:Button ID="bt_thoat" runat="server" Text="Thoát" Width="106px" OnClick="Bt_thoat_Click" CssClass="btn btn-primary btn"/>&nbsp;</center> 
 				</div>
 	</form>		
 	</div> 
 </body>
 </html>
