using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JOBPortal.Recruiter
{
    public partial class RecruiterProfile1 : System.Web.UI.Page
    {
        SqlCommand cmd = null;
        SqlDataReader dr = null;
        string str = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
     
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());

            str = "select * from Recruiter WHERE Username='" + Session["User"] + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                if (dr.Read())
                {
                    name.Text = dr["Name"].ToString();
                    email.Text = dr["Email"].ToString();
                    phnumber.Text = dr["Mobile"].ToString();
                    address.Text = dr["Address"].ToString();
                    country.Text = dr["Country"].ToString();
                    cname.Text = dr["Cname"].ToString();
                    con.Close();    
                }
            }
        }
    }
}