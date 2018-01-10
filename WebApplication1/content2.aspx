<%@ Page Title="" Language="C#" MasterPageFile="~/myLayout.Master" AutoEventWireup="true" CodeBehind="content2.aspx.cs" Inherits="WebApplication1.content2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>DATA BARU</div>
    <div>
        Nama : <asp:TextBox ID="tbNama" runat="server"></asp:TextBox>
        Alamat : <asp:TextBox ID="tbAlamat" runat="server"></asp:TextBox>
        <asp:Button ID="tbSimpan" runat="server" OnClick="tbSimpan_Click" Text="Simpan" />
    </div>

</asp:Content>
