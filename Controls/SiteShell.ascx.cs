using System;
using System.Web.UI;

namespace RockWeb.Themes.TablerPublic.Controls
{
    public partial class SiteShell : UserControl
    {
        public string LayoutTitle { get; set; } = "Default";
        public string BodyCssClass { get; set; } = "";
        public bool ShowSidebar { get; set; } = true;
        public bool ShowTopbar { get; set; } = true;
        public bool ShowFooter { get; set; } = true;
        public bool ShowPageHeader { get; set; } = true;

        protected void Page_Load( object sender, EventArgs e )
        {
        }
    }
}
