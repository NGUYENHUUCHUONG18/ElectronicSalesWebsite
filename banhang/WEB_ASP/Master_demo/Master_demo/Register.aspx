<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Master_demo.Register" %>

 <!DOCTYPE html>
 <html lang="en">
 <head>
 	<meta charset="UTF-8">
 	<title>Trang đăng ký</title>
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
 	<form class="backgroud" action="Dangky.html" method="POST" role="form">
 				
 			
 				<div class="form-group">
 					<legend>Đăng ký thành viên</legend>
 					<label for="">Tên đăng nhập</label>
 					<input type="text" class="form-control" id="" placeholder="Tên đăng nhập..">
 					<label for="">Mật khẩu</label>
 					<input type="password" class="form-control" id="" placeholder="Mật khẩu">
                    <label for="">Email</label>
 					<input type="email" class="form-control" id="" placeholder="quoccuong@gmail.com...">
                    <label for="">Địa chỉ</label>
 					<input type="text" class="form-control" id="" placeholder="Địa chỉ">
                    <label for="">Số điện thoại</label>
 					<input type="text" class="form-control" id="" placeholder="Điện thoại">
                    <label for="">Giới tính :</label>
                    <div >
                        <input type="radio" name="Sex" value="Nam" checked> Nam &nbsp; 
                        <input type="radio" name="Sex" value="Nữ"> Nữ
                    </div><br>
 					<center><button type="submit" class="btn btn-primary btn">Đăng ký</button>&nbsp; 
                        <a href="index.html"><button type="button" class="btn btn-primary btn">Thoát</button></a></center> 
 				</div>
 	</form>		
 	</div> 
 </body>
 </html>

