<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SiteShell.ascx.cs" Inherits="RockWeb.Themes.TablerPublic.Controls.SiteShell" %>

<link rel="stylesheet" href="/Themes/TablerPublic/Assets/vendor/tabler/tabler.min.css" />
<link rel="stylesheet" href="/Themes/TablerPublic/Assets/vendor/tabler/tabler-icons.min.css" />
<link rel="stylesheet" href="/Themes/TablerPublic/Assets/css/rock-bs3-compat.css" />
<link rel="stylesheet" href="/Themes/TablerPublic/Assets/css/theme.css" />

<div class="page rock-tabler-theme <%= BodyCssClass %>">
    <% if ( ShowSidebar ) { %>
    <aside class="navbar navbar-vertical navbar-expand-lg" data-bs-theme="dark">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#sidebar-menu" aria-controls="sidebar-menu" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <h1 class="navbar-brand navbar-brand-autodark">
                <a href="/">
                    <img src="/Themes/TablerPublic/Assets/img/logo.svg" alt="Site logo" class="navbar-brand-image" />
                </a>
            </h1>

            <div class="collapse navbar-collapse" id="sidebar-menu">
                <div class="navbar-nav pt-lg-3">
                    <Rock:Zone Name="Sidebar" runat="server" />
                </div>
            </div>
        </div>
    </aside>
    <% } %>

    <div class="page-wrapper">
        <% if ( ShowTopbar ) { %>
        <header class="navbar navbar-expand-md d-print-none rock-topbar">
            <div class="container-fluid">
                <div class="navbar-nav flex-row order-md-last ms-auto">
                    <Rock:Zone Name="TopbarRight" runat="server" />
                </div>
                <div class="navbar-nav">
                    <Rock:Zone Name="Topbar" runat="server" />
                </div>
            </div>
        </header>
        <% } %>

        <% if ( ShowPageHeader ) { %>
        <div class="page-header d-print-none">
            <div class="container-fluid">
                <div class="row g-2 align-items-center">
                    <div class="col">
                        <div class="page-pretitle"><Rock:Zone Name="Breadcrumbs" runat="server" /></div>
                        <h2 class="page-title"><Rock:PageIcon runat="server" /> <Rock:PageTitle runat="server" /></h2>
                    </div>
                    <div class="col-auto ms-auto d-print-none"><Rock:Zone Name="PageActions" runat="server" /></div>
                </div>
            </div>
        </div>
        <% } %>

        <main class="page-body">
            <div class="container-fluid">
                <div class="rock-content">
                    <Rock:Zone Name="Feature" runat="server" />
                    <Rock:Zone Name="Main" runat="server" />
                </div>
            </div>
        </main>

        <% if ( ShowFooter ) { %>
        <footer class="footer footer-transparent d-print-none">
            <div class="container-fluid">
                <div class="row text-center align-items-center flex-row-reverse">
                    <div class="col-lg-auto ms-lg-auto"><Rock:Zone Name="FooterRight" runat="server" /></div>
                    <div class="col-12 col-lg-auto mt-3 mt-lg-0"><Rock:Zone Name="Footer" runat="server" /></div>
                </div>
            </div>
        </footer>
        <% } %>
    </div>
</div>

<script src="/Themes/TablerPublic/Assets/vendor/tabler/tabler.min.js"></script>
<script src="/Themes/TablerPublic/Assets/js/rock-bs3-compat.js"></script>
<script src="/Themes/TablerPublic/Assets/js/theme.js"></script>
