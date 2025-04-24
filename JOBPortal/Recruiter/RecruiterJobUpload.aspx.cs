using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace JOBPortal.Recruiter
{

    public partial class RecruiterJobUpload : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string str = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
      
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMsg.Visible = false;

            //if (!IsPostBack)
            //{
            //    gridbind();
            //}
        }
        //protected void gridbind()
        //{
        //    // string Username = Session["User"].ToString();
        //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());

        //    str = "select * FROM Post_job WHERE recruiterName='" + Session["User"] + "'";
        //    SqlCommand cmd = new SqlCommand(str, con);
        //    con.Open();
        //    using (SqlDataReader dr = cmd.ExecuteReader())
        //    {
        //        if (dr.HasRows == true)
        //        {
        //            GridView1.DataSource = null;
        //            GridView1.DataSource = dr;
        //            GridView1.DataBind();


        //        }
        //    }

        //}



        protected void Submit_Click1(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Post_job (recruiterName,JobName,Salary,JobLocation,Experience,vacancy,Companyname,Degree) values('" + Session["User"] + "','" + jobname.Text + "','" + salary.Text + "','" + joblocation.SelectedValue + "','" + Experience.SelectedValue + "','" + vacancy.Text + "','" + comname.Text + "','" + Degree.SelectedValue + "')", con);

               
                int R = cmd.ExecuteNonQuery();
                if (R > 0)
                {
                    
                    lblMsg.Visible = true;
                    lblMsg.Text = " Uploded sucessfully ! ";
                    lblMsg.CssClass = "alert alert-success";
                    SqlCommand cmd2 = new SqlCommand("insert into recrtuiterjobs(recruiterName,JobName,Salary,JobLocation,Experience,vacancy,Companyname,Degree) values('" + Session["User"] + "','" + jobname.Text + "','" + salary.Text + "','" + joblocation.SelectedValue + "','" + Experience.SelectedValue + "','" + vacancy.Text + "','" + comname.Text + "','" + Degree.SelectedValue + "')", con);
                    cmd2.ExecuteNonQuery();
                    HtmlMeta meta = new HtmlMeta();
                    meta.HttpEquiv = "Refresh";
                    meta.Content = "3;url=RecruiterDefault.aspx";
                    this.Page.Controls.Add(meta);


                }


                else
                {

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
                    lblMsg.Text = "<bv>" + jobname.Text.Trim() + "</b> Job already exist, try new one ";
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
            finally
            {
                con.Close();
            }

        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            jobname.Text = string.Empty;
            salary.Text = string.Empty;
            joblocation.ClearSelection();
            vacancy.Text = string.Empty;
            Experience.ClearSelection();
        }

      
    }
}