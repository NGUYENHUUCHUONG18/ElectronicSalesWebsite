<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Master_demo.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="home" runat="server">
    <form id="form1" runat="server">
    <div class="slide_show">
			<div class="slide fade">
				<img width="80%" height="350" src="Hinhanh/paner1.jpg" style=" margin-left: 150px">
				
			</div>
			<div class="slide fade">
				<img width="80%" height="350" src="Hinhanh/paner2.png" style=" margin-left: 150px">
			</div>
			<div style="text-align: center">
				<span class="dot" onClick="showslide()"></span>
				<span class="dot" onClick="showslide()"></span>
			</div>
		</div>
    <div class="imagesp">
			<p><img height="350" width="70%" src="Hinhanh/paner5.jpg" alt=""></p>
		</div>
    <div class="product">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="MAHH" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" Width="200px" RepeatColumns="2"  Font-Italic="True" Font-Names="Arial" Font-Size="Medium"  HorizontalAlign="Center" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table style="margin:5px">
                    <tr>
                        <td colspan ="2" id="anh" style="text-align:center">
                            <a href="Detail_pro.aspx?ID=<%# Eval("MAHH") %>"><asp:Image ID="ANHLabel" runat="server" ImageUrl='<%# "Hinhanh/" + Eval("ANH") %>' /></a>
                        </td>
                    </tr>
                     <tr style="color:orange">
                        <td></td>
                        <td><asp:Label ID="TENHHLabel" runat="server" Text='<%# Eval("TENHH") %>' /></td>
                    </tr>
                    <tr style="color:white">
                        <td>Mã SP:</td>
                        <td><asp:Label ID="MAHHLabel" runat="server" Text='<%# Eval("MAHH") %>' /></td>
                    </tr>
                    <tr style="color:white">
                        <td>Giá:</td>
                        <td><asp:Label ID="DONGIALELabel" runat="server" Text='<%# Eval("DONGIALE") %>' /> đ</td>
                    </tr>
                    <tr style="color:white">
                        <td>Bảo hành:</td>
                        <td ><asp:Label ID="BAOHANHLabel" runat="server" Text='<%# Eval("BAOHANH") %>' /></td>
                    </tr>
                    <tr style="color:white">
                        <td>Chi tiết:</td>
                        <td><asp:Label ID="MOTALabel" runat="server" Text='<%# Eval("MOTA") %>' />s</td>
                    </tr>
                    <tr style="color:white ; text-align:center ; background-color:orange">
                        <td colspan="2"><a href="Detail_pro.aspx?ID=<%# Eval("MAHH") %>">Xem chi tiết --></a></td>
                    </tr>
                </table>  
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_v1ConnectionString %>" SelectCommand="SELECT * FROM [HANGHOA]"></asp:SqlDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy" TypeName="Master_demo.DataSet1TableAdapters.HANGHOATableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_MAHH" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MANHOMHH" Type="Int32" />
                <asp:Parameter Name="TENHH" Type="String" />
                <asp:Parameter Name="DONGIALE" Type="Decimal" />
                <asp:Parameter Name="GIANHAPVE" Type="Decimal" />
                <asp:Parameter Name="BAOHANH" Type="Int32" />
                <asp:Parameter Name="DVT" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="MAHH" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="MANHOMHH" Type="Int32" />
                <asp:Parameter Name="TENHH" Type="String" />
                <asp:Parameter Name="DONGIALE" Type="Decimal" />
                <asp:Parameter Name="GIANHAPVE" Type="Decimal" />
                <asp:Parameter Name="BAOHANH" Type="Int32" />
                <asp:Parameter Name="DVT" Type="String" />
                <asp:Parameter Name="Original_MAHH" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </div>
    </form>
</asp:Content>
