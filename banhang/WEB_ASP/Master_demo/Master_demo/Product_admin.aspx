<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Product_admin.aspx.cs" Inherits="Master_demo.Product_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content2" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MAHH" DataSourceID="ObjectDataSource1">
    <Columns>
        <asp:CommandField SelectText="Xem" ShowSelectButton="True" />
        <asp:BoundField DataField="MAHH" HeaderText="MAHH" InsertVisible="False" ReadOnly="True" SortExpression="MAHH" />
        <asp:BoundField DataField="MANHOMHH" HeaderText="MANHOMHH" SortExpression="MANHOMHH" />
        <asp:BoundField DataField="TENHH" HeaderText="TENHH" SortExpression="TENHH" />
        <asp:BoundField DataField="DONGIALE" HeaderText="DONGIALE" SortExpression="DONGIALE" />
        <asp:BoundField DataField="GIANHAPVE" HeaderText="GIANHAPVE" SortExpression="GIANHAPVE" />
        <asp:BoundField DataField="BAOHANH" HeaderText="BAOHANH" SortExpression="BAOHANH" />
        <asp:BoundField DataField="DVT" HeaderText="DVT" SortExpression="DVT" />
        <asp:BoundField DataField="ANH_SP_" HeaderText="ANH_SP_" SortExpression="ANH_SP_" />
        <asp:BoundField DataField="MOTA_SP_" HeaderText="MOTA_SP_" SortExpression="MOTA_SP_" />
    </Columns>
</asp:GridView>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Master_demo.DataSet1TableAdapters.HANGHOATableAdapter" UpdateMethod="Update">
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
        <asp:Parameter Name="ANH_SP_" Type="String" />
        <asp:Parameter Name="MOTA_SP_" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="MANHOMHH" Type="Int32" />
        <asp:Parameter Name="TENHH" Type="String" />
        <asp:Parameter Name="DONGIALE" Type="Decimal" />
        <asp:Parameter Name="GIANHAPVE" Type="Decimal" />
        <asp:Parameter Name="BAOHANH" Type="Int32" />
        <asp:Parameter Name="DVT" Type="String" />
        <asp:Parameter Name="ANH_SP_" Type="String" />
        <asp:Parameter Name="MOTA_SP_" Type="String" />
        <asp:Parameter Name="Original_MAHH" Type="Int32" />
    </UpdateParameters>
</asp:ObjectDataSource>
<asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy" TypeName="Master_demo.DataSet1TableAdapters.HANGHOATableAdapter" UpdateMethod="Update">
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
        <asp:Parameter Name="ANH_SP_" Type="String" />
        <asp:Parameter Name="MOTA_SP_" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="DetailsView1" Name="id" PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="MANHOMHH" Type="Int32" />
        <asp:Parameter Name="TENHH" Type="String" />
        <asp:Parameter Name="DONGIALE" Type="Decimal" />
        <asp:Parameter Name="GIANHAPVE" Type="Decimal" />
        <asp:Parameter Name="BAOHANH" Type="Int32" />
        <asp:Parameter Name="DVT" Type="String" />
        <asp:Parameter Name="ANH_SP_" Type="String" />
        <asp:Parameter Name="MOTA_SP_" Type="String" />
        <asp:Parameter Name="Original_MAHH" Type="Int32" />
    </UpdateParameters>
</asp:ObjectDataSource>
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="MAHH" DataSourceID="ObjectDataSource2" Height="50px" Width="353px">
    <Fields>
        <asp:BoundField DataField="MAHH" HeaderText="MAHH" InsertVisible="False" ReadOnly="True" SortExpression="MAHH" />
        <asp:BoundField DataField="MANHOMHH" HeaderText="MANHOMHH" SortExpression="MANHOMHH" />
        <asp:BoundField DataField="TENHH" HeaderText="TENHH" SortExpression="TENHH" />
        <asp:BoundField DataField="DONGIALE" HeaderText="DONGIALE" SortExpression="DONGIALE" />
        <asp:BoundField DataField="GIANHAPVE" HeaderText="GIANHAPVE" SortExpression="GIANHAPVE" />
        <asp:BoundField DataField="BAOHANH" HeaderText="BAOHANH" SortExpression="BAOHANH" />
        <asp:BoundField DataField="DVT" HeaderText="DVT" SortExpression="DVT" />
        <asp:BoundField DataField="ANH_SP_" HeaderText="ANH_SP_" SortExpression="ANH_SP_" />
        <asp:BoundField DataField="MOTA_SP_" HeaderText="MOTA_SP_" SortExpression="MOTA_SP_" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
</asp:Content>
