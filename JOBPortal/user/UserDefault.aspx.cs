using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JOBPortal.user
{
    public partial class UserDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            naame.Text = Session["User"].ToString();
        }
    }
}