using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace JOBPortal.Recruiter
{
    public partial class RecruiterApplications : System.Web.UI.Page
    {
        SqlCommand cmd = null;
        SqlDataReader dr = null;
        string str = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Where index of Cells is the column in Grid that you wan't to refer
            string rname= Session["User"].ToString();
            string js = GridView1.SelectedRow.Cells[2].Text;
            string jname = GridView1.SelectedRow.Cells[3].Text;
            string sal = GridView1.SelectedRow.Cells[4].Text;
            string jloc = GridView1.SelectedRow.Cells[5].Text;
            string cname = GridView1.SelectedRow.Cells[7].Text;
            //If accessing TemplateField column then you can use FindControl method


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());



            conn.Open();
            SqlCommand cmd1 = new SqlCommand("SELECT * FROM Selected WHERE jobseeker= '" + js + "' AND jobName='" + jname + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataSet ds1 = new DataSet();
            da.Fill(ds1);
            int i = ds1.Tables[0].Rows.Count;
            if (i > 0)
            {

                lblMsg.Text = " User Already Selected ";
                lblMsg.CssClass = "alert alert-danger";

            }
            else
            {

                string sql = "INSERT INTO Selected (jobseeker,jobname,recruiterName,Cname,Salary) VALUES (@jseek,@jname,@rname,@cname,@sal)";
                try
                {

                    SqlCommand cmd = new SqlCommand(sql, conn);
                    cmd.Parameters.AddWithValue("@jseek", js);
                    cmd.Parameters.AddWithValue("@jname", jname);
                    cmd.Parameters.AddWithValue("@rname", rname);
                    cmd.Parameters.AddWithValue("@cname", cname);
                    cmd.Parameters.AddWithValue("@sal", sal);
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                    lblMsg.Text = "Sucessfully Selected User";
                    lblMsg.CssClass = "alert alert-success";
                }

                finally
                {
                    conn.Close();
                }

            }
        }
    }

        //protected void gridbind()
        //{
        //   // string Username = Session["User"].ToString();
        //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());

        //    str = "select * from Recruiter WHERE Username='" + Session["User"] + "'";
        //    SqlCommand cmd = new SqlCommand(str, con);
        //    con.Open();
        //    using (SqlDataReader dr = cmd.ExecuteReader())
        //    {
        //        if (dr.HasRows== true)
        //        {
        //            GridView1.DataSource = null;
        //        GridView1.DataSource = dr;
        //            GridView1.DataBind();


        //        }
        //    }

        //}
    }
