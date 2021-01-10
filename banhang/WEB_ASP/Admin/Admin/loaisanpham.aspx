<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="loaisanpham.aspx.cs" Inherits="Admin.loaisanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 100%;
        border: 1px solid #00FFFF;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_v1ConnectionString %>" DeleteCommand="DELETE FROM [NHOMHANGHOA] WHERE [MANHOMHH] = @MANHOMHH" InsertCommand="INSERT INTO [NHOMHANGHOA] ([TENNHOMHH]) VALUES (@TENNHOMHH)" SelectCommand="SELECT * FROM [NHOMHANGHOA]" UpdateCommand="UPDATE [NHOMHANGHOA] SET [TENNHOMHH] = @TENNHOMHH WHERE [MANHOMHH] = @MANHOMHH">
    <DeleteParameters>
        <asp:Parameter Name="MANHOMHH" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="TENNHOMHH" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TENNHOMHH" Type="String" />
        <asp:Parameter Name="MANHOMHH" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MANHOMHH" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnPageIndexChanging="FormView1_PageIndexChanging">
    <EditItemTemplate>
        MANHOMHH:
        <asp:Label ID="MANHOMHHLabel1" runat="server" Text='<%# Eval("MANHOMHH") %>' />
        <br />
       Tên loại sản phẩm:
        <asp:TextBox ID="TENNHOMHHTextBox" runat="server" Text='<%# Bind("TENNHOMHH") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Cập nhập" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" />
    </EditItemTemplate>
    <InsertItemTemplate>
        Tên loại sản phẩm:
        <asp:TextBox ID="TENNHOMHHTextBox" runat="server" Text='<%# Bind("TENNHOMHH") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" />
    </InsertItemTemplate>
    <ItemTemplate>
        <br />
        <table class="auto-style2">
            <tr>
                <td>Mã loại sản phẩm:</td>
                <td>
                    <asp:Label ID="MANHOMHHLabel" runat="server" Text='<%# Eval("MANHOMHH") %>' />
                </td>
            </tr>
            <tr>
                <td>Tên loại sản phẩm:</td>
                <td>
                    <asp:Label ID="TENNHOMHHLabel" runat="server" Text='<%# Bind("TENNHOMHH") %>' />
                </td>
            </tr>
        </table>
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Cập nhập" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Xóa" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Thêm mới" />
    </ItemTemplate>
</asp:FormView>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MANHOMHH" DataSourceID="SqlDataSource1" BackColor="#66FFFF" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" Height="265px" Width="684px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" DeleteText="Xóa" EditText="Cập nhập" />
        <asp:BoundField DataField="MANHOMHH" HeaderText="Mã loại sản phẩm" InsertVisible="False" ReadOnly="True" SortExpression="MANHOMHH" />
        <asp:BoundField DataField="TENNHOMHH" HeaderText="Tên loại sản phẩm" SortExpression="TENNHOMHH" />
    </Columns>
    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#330099" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    <SortedAscendingCellStyle BackColor="#FEFCEB" />
    <SortedAscendingHeaderStyle BackColor="#AF0101" />
    <SortedDescendingCellStyle BackColor="#F6F0C0" />
    <SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:GridView>

</asp:Content>
