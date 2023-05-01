using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Web.UI.HtmlControls;

namespace JOBPortal.user
{
    public partial class UserProfile : System.Web.UI.Page
    {
        SqlCommand cmd = null;
        SqlDataReader dr = null;
        string str = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            string Username = Session["User"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());

            str = "select * from [User] WHERE Username='" + Session["User"] + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                if (dr.Read())
                {
                    name.Text = dr["Name"].ToString();
                    email.Text= dr["Email"].ToString();
                    phnumber.Text = dr["Mobile"].ToString();
                    address.Text = dr["Address"].ToString();
                    country.Text = dr["Country"].ToString();
          
                }
            }
        }
    } 
}