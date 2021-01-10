<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="banhangdientu.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1>Tiêu đề nội dung chính</h1>
         <div id="ndcontent">
             <asp:Label ID="lbl_ten" runat="server" Text=""></asp:Label>
         </div>  
    
</asp:Content>
