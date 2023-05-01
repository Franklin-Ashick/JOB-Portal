using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JOBPortal
{
    public partial class Contact : System.Web.UI.Page
    {
        SqlConnection con = null;
        SqlCommand cmd = null;
        string str = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(str);
                string query = @"Insert into Contact values (@Name,@Email,@Subject,@Message)";
                cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Name", name.Value.Trim());
                cmd.Parameters.AddWithValue("@Email", email.Value.Trim());
                cmd.Parameters.AddWithValue("@Subject", subject.Value.Trim());
                cmd.Parameters.AddWithValue("@Message", message.Value.Trim());
                con.Open();
                int r = cmd.ExecuteNonQuery();
                if (r > 0)
                {
                    Label1.Visible = true;
                    Label1.Text = " Thanks for reaching out will look into your query ! ";
                    Label1.CssClass = "alert alert-success";
                    clear();
                }
                else
                {

                    Label1.Visible = true;
                    Label1.Text = " Cannot save record right now , plz try after sometime .. ! ";
                    Label1.CssClass = "alert alert-danger";
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            finally
            {
                con.Close();
            }
        }
            private void clear()
            {
                name.Value = string.Empty;
                email.Value = string.Empty;
                subject.Value = string.Empty;
                message.Value = string.Empty;
            }
        }
    }