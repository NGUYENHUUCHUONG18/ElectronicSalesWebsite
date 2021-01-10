<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="type_admin.aspx.cs" Inherits="sitemap.type_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MANHOMHH" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="MANHOMHH" HeaderText="MANHOMHH" InsertVisible="False" ReadOnly="True" SortExpression="MANHOMHH" />
            <asp:BoundField DataField="TENNHOMHH" HeaderText="TENNHOMHH" SortExpression="TENNHOMHH" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="sitemap.DataSet1TableAdapters.NHOMHANGHOATableAdapter" UpdateMethod="Update">
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
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="MANHOMHH" DataSourceID="ObjectDataSource2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="MANHOMHH" HeaderText="MANHOMHH" InsertVisible="False" ReadOnly="True" SortExpression="MANHOMHH" />
            <asp:BoundField DataField="TENNHOMHH" HeaderText="TENNHOMHH" SortExpression="TENNHOMHH" />
        </Fields>
    </asp:DetailsView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy" TypeName="sitemap.DataSet1TableAdapters.NHOMHANGHOATableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_MANHOMHH" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TENNHOMHH" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DetailsView1" Name="id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TENNHOMHH" Type="String" />
            <asp:Parameter Name="Original_MANHOMHH" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

</asp:Content>