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
using System.Data;

namespace JOBPortal.user
{
    public partial class UserApplyjob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Where index of Cells is the column in Grid that you wan't to refer
            string js = Session["User"].ToString();
            string rname = GridView1.SelectedRow.Cells[2].Text;
            string jname = GridView1.SelectedRow.Cells[3].Text;
            string sal = GridView1.SelectedRow.Cells[4].Text;
            string jloc = GridView1.SelectedRow.Cells[5].Text;
            string exper = GridView1.SelectedRow.Cells[6].Text;
            string cname = GridView1.SelectedRow.Cells[8].Text;
            string degree = GridView1.SelectedRow.Cells[9].Text;
            //If accessing TemplateField column then you can use FindControl method


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            if (Session["marks"] != null)
            {

                conn.Open();
                SqlCommand cmd1 = new SqlCommand("SELECT * FROM Apply_job WHERE jobseeker= '" + js + "' AND jobName='" + jname + "'", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd1);
                DataSet ds1 = new DataSet();
                da.Fill(ds1);
                int i = ds1.Tables[0].Rows.Count;
                if (i > 0)
                {

                    lblMsg.Text = " Job Already Applied ";
                    lblMsg.CssClass = "alert alert-danger";

                }
                else
                {

                    string sql = "INSERT INTO Apply_job (jobseeker,jobName,Salary,JobLocation,Experience,Cname,recruiterName,Degree) VALUES (@jseek,@jname,@sal,@jloc,@exper,@cname,@rname,@degree)";
                    try
                    {

                        SqlCommand cmd = new SqlCommand(sql, conn);
                        cmd.Parameters.AddWithValue("@jseek", js);
                        cmd.Parameters.AddWithValue("@jname", jname);
                        cmd.Parameters.AddWithValue("@sal", sal);
                        cmd.Parameters.AddWithValue("@jloc", jloc);
                        cmd.Parameters.AddWithValue("@exper", exper);
                        cmd.Parameters.AddWithValue("@cname", cname);
                        cmd.Parameters.AddWithValue("@rname", rname);
                        cmd.Parameters.AddWithValue("@degree", degree);
                        cmd.CommandType = CommandType.Text;
                        cmd.ExecuteNonQuery();
                        lblMsg.Text = "Applied To Job Sucessfully";
                        lblMsg.CssClass = "alert alert-success";
                    }

                    finally
                    {
                        conn.Close();
                    }

                }
            }
            else
            {
                lblMsg.Text = "Plese Attend The Test ";
                lblMsg.CssClass = "alert alert-danger";
            }
        }
    }
}