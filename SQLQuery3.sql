create proc dangnhap_insert
(
	@tenkhachhang nvarchar(50),
	@dienthoai nchar(10),
	@tentaikhoan nchar(30),
	@matkhau nchar(10),
	@email nvarchar(20),
	@diachi nvarchar(50)
	
)
as
begin
insert into KHACHHANG(TENKHACH,DIENTHOAI,DIACHI,MATKHAU,EMAIL,TENTK) VALUES(@tenkhachhang,@dienthoai,@diachi,@matkhau,@email,@tentaikhoan)
END