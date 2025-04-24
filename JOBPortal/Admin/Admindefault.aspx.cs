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

namespace JOBPortal.Admin
{
    public partial class Admin_default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void GridView8_SelectedIndexChanged(object sender, EventArgs e)
        {
            

        }

        protected void GridView8_SelectedIndexChanged1(object sender, EventArgs e)
        {//Where index of Cells is the column in Grid that you wan't to refer
            string rname = GridView8.SelectedRow.Cells[3].Text;
            string jname = GridView8.SelectedRow.Cells[4].Text;
            string sal = GridView8.SelectedRow.Cells[5].Text;
            string jloc = GridView8.SelectedRow.Cells[6].Text;
            string exper = GridView8.SelectedRow.Cells[7].Text;
            string vac = GridView8.SelectedRow.Cells[8].Text;
            string cname = GridView8.SelectedRow.Cells[9].Text;
            string degree = GridView8.SelectedRow.Cells[10].Text;
            //If accessing TemplateField column then you can use FindControl method


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());



            conn.Open();
            SqlCommand cmd1 = new SqlCommand("SELECT * FROM ApprovedJobs WHERE recruiterName= '" + rname + "' AND JobName='" + jname + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataSet ds1 = new DataSet();
            da.Fill(ds1);
            int i = ds1.Tables[0].Rows.Count;
            if (i > 0)
            {
                lblMsg.Text = " Job Already Aproved ";
                lblMsg.CssClass = "alert alert-danger";





            }
            else
            {


                string sql = "INSERT INTO ApprovedJobs (recruiterName,JobName,Salary,JobLocation,Experience,vacancy,CompanyName,Degree) VALUES (@rname,@jname,@sal,@jloc,@exper,@vac,@cname,@degree)";
                try
                {

                    SqlCommand cmd = new SqlCommand(sql, conn);
                    cmd.Parameters.AddWithValue("@rname", rname);
                    cmd.Parameters.AddWithValue("@jname", jname);
                    cmd.Parameters.AddWithValue("@sal", sal);
                    cmd.Parameters.AddWithValue("@jloc", jloc);
                    cmd.Parameters.AddWithValue("@exper", exper);
                    cmd.Parameters.AddWithValue("@vac", vac);
                    cmd.Parameters.AddWithValue("@cname", cname);
                    cmd.Parameters.AddWithValue("@degree", degree);
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                    lblMsg.Text = "Job Aproved";
                    lblMsg.CssClass = "alert alert-success";
                }

                finally
                {
                    conn.Close();
                }

            }

        }
    }
}