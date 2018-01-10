<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:TextBox ID="tbNama" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="btnClickMe" runat="server" Text="Button" OnClick="btnClickMe_Click" /><br />
            <asp:Label ID="lbResult" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:ListBox ID="listNama" runat="server" OnSelectedIndexChanged="listNama_SelectedIndexChanged" Width="113px" AutoPostBack="true"></asp:ListBox>
        <br />
        <br />
        <asp:TextBox ID="tbNilai" runat="server"></asp:TextBox>
        <asp:Button ID="btnTambah" runat="server" Text="Button" OnClick="btnTambah_Click" />
        <p>
            <asp:Button ID="btnHasil" runat="server" Text="Submit" OnClick="btnHasil_Click" />
        </p>
        <p>
            <asp:Label ID="lblHasil" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:LinkButton ID="linkBtn" runat="server" OnClick="linkBtn_Click">LinkButton</asp:LinkButton>
        </p>
    </form>
</body>
</html>
