using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace JOBPortal.Recruiter
{
    public partial class RecruiterProfile : System.Web.UI.Page
    {
        SqlCommand cmd = null;
        SqlDataReader dr = null;
        string str = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblmsg.Visible = false;

                str = "select * from Recruiter WHERE Username='" + Session["User"] + "'";
                SqlCommand cmd = new SqlCommand(str, con);
                con.Open();
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    if (dr.Read())
                    {
                        //SqlDataAdapter da = new SqlDataAdapter(con);
                        //DataSet ds = new DataSet();
                        //da.Fill(ds);  // fill dataset  
                        username.Text = dr["Username"].ToString();
                        firstName.Text = dr["Name"].ToString();
                        email.Text = dr["Email"].ToString();
                        phnumber.Text = dr["Mobile"].ToString();
                        address.Text = dr["Address"].ToString();
                        country.SelectedValue = dr["Country"].ToString();
                        cname.Text = dr["Cname"].ToString();


                    }
                }
                con.Close();
            }
        }

        private void clear()
        {
            firstName.Text = string.Empty;
            phnumber.Text = string.Empty;
            address.Text = string.Empty;
            email.Text = string.Empty;
            cname.Text = string.Empty;
            country.ClearSelection();

        }

        protected void Submit_Click1(object sender, EventArgs e)
        {
           

            string str1 = "UPDATE Recruiter SET Name=@Name,Email=@Email,Mobile=@Mobile,Address=@Address,Country=@Country,Cname=@Cname WHERE Username=@Username";
            //string str1 = "UPDATE Recruiter SET Name='" + firstName.Text + "',Email='" + email.Text + "',Mobile='" + phnumber.Text + "',Address='" + address.Text + "' ,Country='" + country.SelectedValue + "',Cname='" + cname.Text + "' WHERE Username='" + username.Text + "' ";
            SqlCommand cmd = new SqlCommand(str1, con);

            cmd.Parameters.AddWithValue("@Name", firstName.Text.Trim());
            cmd.Parameters.AddWithValue("@Address ", address.Text.Trim());
            cmd.Parameters.AddWithValue("@Mobile ", phnumber.Text.Trim());
            cmd.Parameters.AddWithValue("@Email ", email.Text.Trim());
            cmd.Parameters.AddWithValue("@Country ", country.SelectedValue);
            cmd.Parameters.AddWithValue("@Cname", cname.Text.Trim());
            cmd.Parameters.AddWithValue("@Username", username.Text.Trim());
            con.Open();
            int R = cmd.ExecuteNonQuery();
            if (R > 0)
            {
                con.Close();
                lblmsg.Visible = true;
                lblmsg.Text = " Updated sucessfully ! ";
                lblmsg.CssClass = "alert alert-success";
                          //str = "select * from Recruiter WHERE Username='" + Session["User"] + "'";
                //SqlCommand cmd1 = new SqlCommand(str, con);
                //con.Open();
                //using (SqlDataReader dr1 = cmd1.ExecuteReader())
                //{
                //    if (dr1.Read())
                //    {
                //        //SqlDataAdapter da = new SqlDataAdapter(con);
                //        //DataSet ds = new DataSet();
                //        //da.Fill(ds);  // fill dataset  
                //        username.Text = dr1["Username"].ToString();
                //        firstName.Text = dr1["Name"].ToString();
                //        email.Text = dr1["Email"].ToString();
                //        phnumber.Text = dr1["Mobile"].ToString();
                //        address.Text = dr1["Address"].ToString();
                //        country.SelectedValue = dr1["Country"].ToString();
                //        cname.Text = dr1["Cname"].ToString();


                //    }
                //}
            }
            con.Close();
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            clear();
        }
    }
}