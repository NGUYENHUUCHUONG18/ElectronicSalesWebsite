<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="type_Product_1.aspx.cs" Inherits="Master_demo.Product_1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content2" runat="server">
    <p>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Master_demo.DataSet1TableAdapters.NHOMHANGHOATableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_MANHOMHH" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TENNHOMHH" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TENNHOMHH" Type="String" />
                <asp:Parameter Name="Original_MANHOMHH" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MANHOMHH" DataSourceID="ObjectDataSource1" GridLines="Horizontal" Width="448px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="MANHOMHH" HeaderText="MANHOMHH" InsertVisible="False" ReadOnly="True" SortExpression="MANHOMHH" />
            <asp:BoundField DataField="TENNHOMHH" HeaderText="TENNHOMHH" SortExpression="TENNHOMHH" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy" TypeName="Master_demo.DataSet1TableAdapters.NHOMHANGHOATableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_MANHOMHH" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TENNHOMHH" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TENNHOMHH" Type="String" />
            <asp:Parameter Name="Original_MANHOMHH" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="MANHOMHH" DataSourceID="ObjectDataSource2" Height="50px" Width="125px">
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="MANHOMHH" HeaderText="MANHOMHH" InsertVisible="False" ReadOnly="True" SortExpression="MANHOMHH" />
            <asp:BoundField DataField="TENNHOMHH" HeaderText="TENNHOMHH" SortExpression="TENNHOMHH" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:DetailsView>
</asp:Content>
