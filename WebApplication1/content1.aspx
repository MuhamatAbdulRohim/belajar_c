<%@ Page Title="" Language="C#" MasterPageFile="~/myLayout.Master" AutoEventWireup="true" CodeBehind="content1.aspx.cs" Inherits="WebApplication1.content1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="boot/bootstrap.css" />
    <link rel="stylesheet" href="Content/font-awesome.css" />
    <link rel="stylesheet" href="admin-lte/css/AdminLTE.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header class="main-header">
        <h1 class="page-header">Daftar Nama</h1>
    </header>
    <asp:GridView ID="GridListNama" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowEditing="GridListNama_RowComand" OnRowCancelingEdit="GridListNama_RowCanceling" OnRowUpdating="GridListNama_OnRowUpdating">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="Nama">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("nama") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("nama") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="alamat" HeaderText="Alamat" />
            <asp:CommandField ShowEditButton="True" EditText="Ubah" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:Button ID="okBtn" runat="server" Text="OK" CssClass="btn btn-primary" />

    <!-- js -->
    <script src="Scripts/jquery-3.1.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="admin-lte/js/adminlte.js"></script>

</asp:Content>
