﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblNilaiFirst" runat="server" Text="Label"></asp:Label>
            <br />
        </div>
        <asp:Button ID="btnTampilkanNama" runat="server" OnClick="Button1_Click" Text="Button" /> 
        <br />
        <br />
        <asp:ListBox ID="listNama" runat="server"></asp:ListBox>
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
        <br />
        <asp:TextBox ID="nama" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="alamat" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="simpan" runat="server" Text="Button" OnClick="simpan_Click" />
    </form>
</body>
</html>
