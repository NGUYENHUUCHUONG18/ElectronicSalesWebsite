<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Master_demo.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="home" runat="server">
    <div class="sanphamtronggio" >
                <div class="sosanpham" >
                    <table width="70%" height="auto" border="1" bordercolor="#676363" align="center" style="font-size: 17px;" >
                        <tr align="center" style=" font-family: 'abril-fatface'; font-size: 20px;" >
                            <td>Sản phẩm</td>
                            <td>Giá</td>
                            <td>Số lượng</td>
                            <td>Thành tiền</td>
                            <td>Xóa khỏi giỏ</td>
                        </tr>
                        <tr align="center">
                            <td>
                                <img height="100" src="Hinhanh/nenlogin1.png" alt="">
                                <p>Hồng sâm Hàn Quốc</p>
                                <p>Mô tả chi tiết ở đây</p>
                            </td>
                            <td><p style="color: red;">490,000 VNĐ</p></td>
                            <td><input type="number"></td>
                            <td><p style="color: red;">490,000 VNĐ</p></td>
                            <td><a href=""><button><span class="glyphicon glyphicon-remove"></span></button></a></td>
                        </tr>
                        <tr align="center">
                            <td>
                                <img height="100" src="Hinhanh/nenlogin1.png" alt="">
                                <p>Hồng sâm Hàn Quốc</p>
                                <p>Mô tả chi tiết ở đây</p>
                            </td>
                            <td><p style="color: red;">490,000 VNĐ</p></td>
                            <td><input type="number"></td>
                            <td><p style="color: red;">490,000 VNĐ</p></td>
                            <td><a href=""><button><span class="glyphicon glyphicon-remove"></span></button></a></td>
                        </tr>
                    </table>
                </div>
                <div class="thanhtoan">
                <table width="70%" height="auto" border="1" align="center" style="margin-top: 10px;">
                    <tr style="font-size: 16px;">
                        <td>
                            <ul>
                                <li>Nếu bạn đồng ý mua danh sách sản phẩm ở trên thì vui lòng bấm nút "<b>HOÀN TẤT ĐƠN HÀNG</b>"</li>
                                <li>Để tiếp tục mua thêm sản phẩm khác, bạn bấm nút "<b>TIẾP TỤC MUA</b>"</li>
                                <li>Để bỏ từng sản phẩm trong danh sách, bấm vào biểu tượng xóa phía bên trái hình sản phẩm</li>
                                <li>Để thêm số lượng cho một sản phẩm cần mua, bạn chọn số lượng</li>
                            </ul>
                        </td>
                        <td >
                            <div id="top">
                                <p style="font-size: 19px; margin-left: 50px;">Tổng tiền</p>
                                <p style="font-size: 19px; color: red; margin-left: 80px;">490,000 VNĐ</p>
                            </div>
                            <div id="down">
                                <a href="index.html"><asp:HyperLink runat="server" NavigateUrl="~/Home.aspx"><button style="font-size: 19px; background-color: #E1A524; margin-left: 10px;">Tiếp tục mua sắm</button></asp:HyperLink></a>
                                <a href="Dathang.html"><asp:HyperLink runat="server" NavigateUrl="~/Orther_shopping.aspx"><button style="font-size: 19px; background-color:#F51418;">Hoàn tất hóa đơn</button></asp:HyperLink></a>
                            </div>
                                
                        </td>
                    </tr>
                </table>
            </div>
            </div>
</asp:Content>
