<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Detail_pro.aspx.cs" Inherits="Master_demo.Detail_pro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="home" runat="server">
    <form id="form1" runat="server" >
    <div class="chitietsanpham">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="MAHH" DataSourceID="ObjectDataSource1" HorizontalAlign="Center">
            <ItemTemplate>
                <table style="text-align:center ;">
                    <tr>
                        <td colspan ="2" id="anh" class="khoi" style="text-align:center">
                            <a href="Detail_pro.aspx"><asp:Image ID="ANHLabel" runat="server" ImageUrl='<%# "Hinhanh/" + Eval("ANH") %>' /></a>
                        </td>
                    </tr>
                     <tr style="color:orange ; text-align:center ; font-size:20px">
                        <td colspan="2"><asp:Label ID="TENHHLabel" runat="server" Text='<%# Eval("TENHH") %>' /></td>
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
                    <tr style="  font-size:25px;">
                        <td colspan="2" style="text-align:center" class="anh">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Hinhanh/cart.png"/> <a href="#" style="color:orange; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Thêm vào giỏ hàng</a></td>
                    </tr>
                </table>  
            </ItemTemplate>
        </asp:DataList>
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
                <asp:QueryStringParameter Name="id" QueryStringField="ID" Type="Int32" />
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
