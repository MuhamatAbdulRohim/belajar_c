<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_identitas.ascx.cs" Inherits="WebApplication1.usercontrol.UC_identitas" %>
Nama :<asp:TextBox ID="nama" runat="server"></asp:TextBox><br />
Alamat :
<asp:TextBox ID="alamat" runat="server"></asp:TextBox><br />
NIM :
<asp:TextBox ID="nim" runat="server"></asp:TextBox><br />
<asp:Button ID="ok" runat="server" Text="OK" OnClick="ok_Click" />
<br />
<asp:Label ID="result" runat="server" Text="Result"></asp:Label>