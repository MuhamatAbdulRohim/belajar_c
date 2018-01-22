<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lteForm.aspx.cs" Inherits="WebApplication1.lteForm" %>

<%@ Register TagPrefix="uc" TagName="identitas" Src="~/usercontrol/UC_identitas.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AdminLTE</title>
    <link rel="stylesheet" href="boot/bootstrap.css" />
    <link rel="stylesheet" href="Content/font-awesome.css" />
    <link rel="stylesheet" href="admin-lte/css/AdminLTE.css" />
</head>
<body>
    <div class="wrapper">
        <form id="form1" runat="server">
            <header class="main-header">
                <div style="background-color: palevioletred">Header</div>
                <nav class="navbar navbar-static-top" style="background-color: aquamarine">
                    <a href="#" class="sidebar-toggle" style="float: right" data-toggle="push-menu" role="button">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                </nav>
            </header>
            <aside class="main-sidebar">
                <section class="sidebar">
                    <ul class="sidebar-menu">
                        <li class="header">MENU UTAMA</li>
                        <li><a href="#"><i class="fa fa-home"></i>Beranda</a></li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-area-chart"></i><span>Detail Statistik</span>
                                <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="#"><i class="fa fa-database"></i>Tribunnews</a></li>
                                <li><a href="#"><i class="fa fa-database"></i>Detik</a></li>
                                <li><a href="#"><i class="fa fa-database"></i>Liputan6</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-newspaper-o"></i><span>Berita</span>
                                <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="#"><i class="fa fa-globe"></i>Tribunnews</a></li>
                                <li><a href="#"><i class="fa fa-globe"></i>Detik</a></li>
                                <li><a href="#"><i class="fa fa-globe"></i>Liputan6</a></li>
                            </ul>
                        </li>
                    </ul>
                </section>
            </aside>
            <div class="content-wrapper">
                <div style="float: left; width: 20%;">Left Content</div>
                <div style="float: left; width: auto;">
                    <uc:identitas ID="identitas_mahasiswa" runat="server"/>
                </div>
                <div style="clear: both;"></div>
            </div>
            <div class="main-footer">
                <div>Footer</div>
            </div>
        </form>
    </div>

    <script src="Scripts/jquery-3.1.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="admin-lte/js/adminlte.js"></script>
    <script src="Scripts/jquery.slimscroll.js"></script>
</body>
</html>
