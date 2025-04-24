using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JOBPortal
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        SqlCommand cmd = null;
        SqlDataReader dr = null;
        string str = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;

        }

        protected void submit_Click(object sender, EventArgs e)
        {

            bool Flag = false;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from Login";
            dr = cmd.ExecuteReader();
            string Role = "";
            while (dr.Read())
            {
                string Username = dr[0].ToString();
                string Password = dr[1].ToString();
                if (username.Text == Username && password.Text == Password)
                {
                    Role = dr[2].ToString();
                    Flag = true;

                }
            }
            dr.Close();

            if (Flag == true)
            {
                if (Role == "Admin")
                {
                    Session["User"] = username.Text;
                    Label1.ForeColor = System.Drawing.Color.Green;
                    Response.Redirect("/Admin/Admindefault.aspx");
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "&emsp; Wrong Password. Try Again";
                    Label1.ForeColor = System.Drawing.Color.Red;

                }
            }
            else if (Flag == false)
            {
                Label1.Visible = true;
                Label1.Text = "&emsp; Wrong Password. Try Again";
                Label1.ForeColor = System.Drawing.Color.Red;

            }



            con.Close();
        }
    }
}