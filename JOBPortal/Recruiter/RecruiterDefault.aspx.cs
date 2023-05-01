using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JOBPortal.Recruiter
{
    public partial class RecruiterDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            name.Text = Session["User"].ToString();
        }
    }
}