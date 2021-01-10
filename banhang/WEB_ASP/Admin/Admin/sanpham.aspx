<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="sanpham.aspx.cs" Inherits="Admin.sanpham" %>
<%@ Register assembly="DevExpress.Web.v19.1, Version=19.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Data.Linq" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_v1ConnectionString %>" SelectCommand="SELECT * FROM [HANGHOA]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MAHH" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField SelectText="Xem" ShowSelectButton="True" />
            <asp:BoundField DataField="MAHH" HeaderText="Mã hàng hóa" InsertVisible="False" ReadOnly="True" SortExpression="MAHH" />
            <asp:BoundField DataField="MANHOMHH" HeaderText="Mã loại hàng hóa" SortExpression="MANHOMHH" />
            <asp:BoundField DataField="TENHH" HeaderText="Tên hang hóa" SortExpression="TENHH" />
            <asp:BoundField DataField="DONGIALE" HeaderText="Đơn giá lẻ" SortExpression="DONGIALE" />
            <asp:BoundField DataField="GIANHAPVE" HeaderText="Giá nhập về" SortExpression="GIANHAPVE" />
            <asp:BoundField DataField="BAOHANH" HeaderText="Bảo hành" SortExpression="BAOHANH" />
            <asp:BoundField DataField="DVT" HeaderText="Đơn vị tính" SortExpression="DVT" />
            <asp:BoundField DataField="ANH" HeaderText="Ảnh" SortExpression="ANH" />
            <asp:BoundField DataField="MOTA" HeaderText="Mô tả" SortExpression="MOTA" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
<br />
    </asp:Content>
