using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Reflection;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using static System.Net.Mime.MediaTypeNames;
using System.Web.UI.HtmlControls;
using System.Reflection.Emit;
using System.Collections;

namespace JOBPortal
{
    public partial class RecruiterRegistration : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd = null;
        string str = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMsg.Visible = false;
        }
        



       
        private void clear()
        {
            Username.Text = string.Empty;
            Password.Text = string.Empty;
            address.Text = string.Empty;
            email.Text = string.Empty;
            Cname.Text = string.Empty;
            mobile.Text = string.Empty;
            fullname.Text = string.Empty;
            ConfPassword.Text = string.Empty;
            country.ClearSelection();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Recruiter(Username,Password,Name,Cname,Email,Mobile,Address,Country) values('" + Username.Text + "','" + Password.Text + "','" + fullname.Text + "','" + Cname.Text + "','" + email.Text + "','" + mobile.Text + "','" + address.Text + "','" + country.SelectedValue + "')", con);
                int r = cmd.ExecuteNonQuery();

                if (r > 0)
                {
                    SqlCommand cmd2 = new SqlCommand("insert into Login (username,password,role) values('" + Username.Text + "','" + Password.Text + "','Recruiter')", con);
                    cmd2.ExecuteNonQuery();
                    con.Close();
                    lblMsg.Visible = true;
                    lblMsg.Text = " Registered Successfull !  Go To login";
                    lblMsg.CssClass = "alert alert-success";
                    HtmlMeta meta = new HtmlMeta();
                    meta.HttpEquiv = "Refresh";
                    meta.Content = "3;url=RecruiterLogin.aspx";
                    this.Page.Controls.Add(meta);
                    clear();
                }

                else
                {
                    con.Close();
                    lblMsg.Visible = true;
                    lblMsg.Text = " Cannot save record right now , plz try after sometime .. ! ";
                    lblMsg.CssClass = "alert alert-danger";
                }
            }

            catch (SqlException ex)
            {
                if (ex.Message.Contains("Violation of UNIQUE KEY constraint"))
                {

                    lblMsg.Visible = true;
                    lblMsg.Text = "<bv>" + Username.Text.Trim() + "</b> Username already exist, try new one ";
                    lblMsg.CssClass = "alert alert-danger";
                }
                else
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }
    }
    }
