<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Orther_shopping.aspx.cs" Inherits="Master_demo.Orther_shopping" %>
<asp:Content ID="Content1" ContentPlaceHolderID="home" runat="server">
    <div class="dathang" style="background-color:aliceblue;">
            <div class="table">
                <table border="1" width="65%" >
                    <tr>
                        <td style="font-size: 20px;">
                            <b style="margin-left: 20px;">THÔNG TIN NGƯỜI MUA</b>
                        </td>
                    </tr>
                    <tr> 
                        <td style="font-size: 17px; font-style: oblique; color: black; ">
                            <div style="margin-left: 20px; margin-right: 10px;">
                                <p>Bạn đã có tài khoản? <a href="#"><asp:HyperLink runat="server" NavigateUrl="~/Login.aspx">Đăng nhập</asp:HyperLink></a></p><br>
                            <div id="khoangcach"><p>Họ và tên(*)</p> <input  type="text" placeholder="Nhập họ tên vào đây..." size="48"><br>
                            <p>Số điện thoại(*)</p> <input size="48" type="text" placeholder="Nhập số điện thoại của bạn..."><br>
                            <p>Email</p> <input size="48" type="email" placeholder="quoccuong@gmail.com"><br>
                            <p>Địa chỉ giao hàng(*)</p> <input size="48" type="text" placeholder="Nhập địa chỉ nhận hàng..."><br>
                            <div style="width: 100%; height: 150px;margin-top: 20px;">
                                <p style="float: left;">Phương thức thanh toán(*):</p>
                                <div style="float: right; ">
                                    <p><input type="radio" name="PTTT" value="cod" checked> Thanh toán khi nhận hàng(COD)<br><img src="Hinhanh/COD.jpg" alt=""></p>
                                    <p><input type="radio" name="PTTT" value="tructiep"> Thanh toán trực tiếp <br> 
                                    <img src="Hinhanh/TTTT.png" alt=""></p>  
                                </div> 
                                <br>
                            </div>
                            <div style="margin-top: 20px;">
                                <p >Ghi chú:</p> <textarea cols="70"></textarea>
                            </div>
                            </div>
                            </div>
                        </td>
                    </tr>
                </table>
                <table border="1" width="30%" style="border-color: border-color: darkgrey;;" >
                <tr>
                    <td style="font-size: 20px;">
                        <b style="margin-left: 20px;">ĐƠN HÀNG</b>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: 17px; font-style: oblique; padding: 10px 10px;">
                        <img height="100px;" src="Hinhanh/nenlogin1.png" alt="" style="float: left; ">
                        <div style="display: inline-table; margin-left: 1.5px;">
                            <div style="float: left;"><p >Hồng sâm đặc biệt <br> Mã sản phẩm : 199 <br> 1,300,000 VNĐ</p></div>
                            <div style="float: right; margin-left: 60px; line-height: 2px; margin-top: 10px;"><p>SL</p> <br> <p style="width: 30px; height: 30px; border: 1px solid #343434;padding: 15px 3px;">01</p></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: 17px; font-style: oblique;">
                       <p style="float: left"><b>Tạm tính:</b></p> <p style="float: right">490,000 VNĐ</p> 
                    </td>
                </tr>
                <tr style=" line-height: 40px;">
                    <td style="font-size: 17px; font-style: oblique; height: 50px;">
                        <p style="float: left"><b>Thành tiền:</b> <br> 
                            (Đã bao gồm thế VAT)</p>
                        <p style="float: right">490,000 VNĐ</p><br> 
                        <a href=""><button style=" height: 35px; font-style: normal; color: white;background-color: #D52006; font-size: 17px; margin-top: 30px; margin-bottom: 5px;  ">HOÀN TẤT</button></a>
                    </td>
                </tr>
            </table>
            </div>   
        </div>
</asp:Content>
