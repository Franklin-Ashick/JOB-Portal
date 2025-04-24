using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.IO;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Web.UI.HtmlControls;
using System.Net;
using System.Drawing;
using System.Collections;
using System.Security.Cryptography.X509Certificates;
using System.Reflection;

namespace JOBPortal.user
{
    public partial class UserSettings : System.Web.UI.Page
    {
        SqlCommand cmd = null;
        SqlDataReader dr = null;
        string str = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //.SelectedValue = Session["grad"];
                str = "select * from [User] WHERE Username='" + Session["User"] + "'";
                SqlCommand cmd = new SqlCommand(str, con);
                con.Open();
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    if (dr.Read())
                    {
                        //SqlDataAdapter da = new SqlDataAdapter(con);
                        //DataSet ds = new DataSet();
                        //da.Fill(ds);  // fill dataset  

                        firstName.Text = dr["Name"].ToString();
                        email.Text = dr["Email"].ToString();
                        phnumber.Text = dr["Mobile"].ToString();
                        address.Text = dr["Address"].ToString();
                        country.SelectedValue = dr["Country"].ToString();
                        tenthMark.Text = dr["TenthGrade"].ToString();
                        twelvethmarks.Text = dr["TwelfthGrade"].ToString();
                        graduation.SelectedValue = dr["GraduationGrade"].ToString();
                        Session["grad"]= dr["GraduationGrade"].ToString();
                        post_graduation.SelectedValue = dr["PostGraduationGrade"].ToString();
                        works.Text = dr["WorksOn"].ToString();
                        Experience.SelectedValue = dr["Experience"].ToString();

                    }
                }
                con.Close();
               
            }
           
        }

        //protected void UploadFile(object sender, EventArgs e)
        //{
        //    string folderPath = Server.MapPath("~/Files/");

        //    //Check whether Directory (Folder) exists.
        //    if (!Directory.Exists(folderPath))
        //    {
        //        //If Directory (Folder) does not exists Create it.
        //        Directory.CreateDirectory(folderPath);
        //    }

        //    //Save the File to the Directory (Folder).
        //    FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

        //    //Display the Picture in Image control.

        //    Image1.ImageUrl = "~/Files/" + Path.GetFileName(FileUpload1.FileName);
        //}



        //protected void upload_Click(object sender, EventArgs e)
        //{
        //    try
        //    {

        //        if (FileUpload1.HasFile)
        //        {
        //            string filename = FileUpload1.PostedFile.FileName;
        //            string filepath = "Files/" + FileUpload1.FileName;
        //            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Files/") + filename);
        //            con.Open();
        //            SqlCommand cmd = new SqlCommand("Insert into [User]  (profile_img) values('" + filepath + "') WHERE Username='" + Session["User"] +"'", con);
        //            cmd.ExecuteNonQuery();
        //            con.Close();
        //            Label1.Visible = true;
        //            Label1.Text = "Image Uploaded successfully";
        //        }
        //        else
        //        {
        //            Label1.Visible = true;
        //            Label1.Text = "Plz upload the image!!!!";
        //        }



        //    }
        //    catch (SqlException ex)
        //    {
        //        if (ex.Message.Contains("Violation of UNIQUE KEY constraint"))
        //        {

        //            Label1.Visible = true;
        //            Label1.Text = "</b> Image already selected , try new one ";
        //            Label1.CssClass = "alert alert-danger";
        //        }
        //        else
        //        {
        //            Response.Write("<script>alert('" + ex.Message + "');</script>");
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "');</script>");
        //    }

        //    finally
        //    {
        //        con.Close();
        //    }
        //}


        protected void Button1_Click1(object sender, EventArgs e)
        {         //,'"+ resume.PostedFile +"'
           
                //clear();


                //    SqlCommand cmd = new SqlCommand("update [User](Name,Address,Mobile,Email,Country,TenthGrade,TwelfthGrade,GraduationGrade,PostGraduationGrade,WorksOn,Experience) values('" + firstName.Text + "','" + address.Text + "','" + phnumber.Text + "','" + email.Text + "','" + country.SelectedValue + "','"+ tenthMark.Text +"','"+twelvethmarks.Text +"','"+graduation.SelectedValue +"','"+post_graduation.SelectedValue+"','"+works.Text +"','"+Experience.SelectedValue +"') where Username ='" + Session["User"] + "'", con);
                //    int r = cmd.ExecuteNonQuery();
                //    //con = new SqlConnection(str);
                //    //string query = @"Insert into [User] (Username,Password,Name,Address,Mobile,Email,Country) values
                //    //  (@Username,@Password,@Name,@Address,@Mobile,@Email,@Country)";
                //    //cmd = new SqlCommand(query, con);
                //    //cmd.Parameters.AddWithValue("@Username ", Username.Text.Trim());
                //    //cmd.Parameters.AddWithValue("@Password ", Password.Text.Trim());
                //    //cmd.Parameters.AddWithValue("@Name", fullname.Text.Trim());
                //    //cmd.Parameters.AddWithValue("@Address ", address.Text.Trim());
                //    //cmd.Parameters.AddWithValue("@Mobile ", mobile.Text.Trim());
                //    //cmd.Parameters.AddWithValue("@Email ", email.Text.Trim());
                //    //cmd.Parameters.AddWithValue("@Country ", country.SelectedValue);
                //    //con.Open();
                //    if (r > 0)
                //    {

                //        con.Close();
                //        Label1.Visible = true;
                //        Label1.Text = " Registered Successfull !  Go To login";
                //        Label1.CssClass = "alert alert-success";
                //        HtmlMeta meta = new HtmlMeta();
                //        meta.HttpEquiv = "Refresh";
                //        meta.Content = "3;url=UserLogin.aspx";
                //        this.Page.Controls.Add(meta);

                //    }
                //    else
                //    {
                //        con.Close();
                //        Label1.Visible = true;
                //        Label1.Text = " Cannot save record right now , plz try after sometime .. ! ";
                //        Label1.CssClass = "alert alert-danger";
                //    }
                //}

                //   catch (Exception ex)
                //{
                //    Response.Write("<script>alert('" + ex.Message + "');</script>");
                //}


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string usr = Session["User"].ToString();
            string str1 = "UPDATE [User] SET Name=@Name,Address=@Address,Mobile=@Mobile,Email=@Email,Country=@Country,TenthGrade=@tenth,TwelfthGrade=@twelth,GraduationGrade=@gg,PostGraduationGrade=@pg,WorksOn=@work,Experience=@exp WHERE Username=@Username";
        SqlCommand cmd = new SqlCommand(str1, con);
        cmd.Parameters.AddWithValue("@Name", firstName.Text.Trim());
        cmd.Parameters.AddWithValue("@Address ", address.Text.Trim());
        cmd.Parameters.AddWithValue("@Mobile ", phnumber.Text.Trim());
        cmd.Parameters.AddWithValue("@Email ", email.Text.Trim());
        cmd.Parameters.AddWithValue("@Country ", country.SelectedValue);
        cmd.Parameters.AddWithValue("@tenth ", tenthMark.Text.Trim());
        cmd.Parameters.AddWithValue("@twelth ", twelvethmarks.Text.Trim());
        cmd.Parameters.AddWithValue("@gg", graduation.SelectedValue);
        cmd.Parameters.AddWithValue("@pg", post_graduation.SelectedValue);
        cmd.Parameters.AddWithValue("@work ", works.Text.Trim());
        cmd.Parameters.AddWithValue("@exp ", Experience.SelectedValue);
        cmd.Parameters.AddWithValue("@Username", usr);
            con.Open();
        int R = cmd.ExecuteNonQuery();
        if (R > 0)
        {
            con.Close();
               
                Label1.Visible = true;
            Label1.Text = " Updated sucessfully ! ";
            Label1.CssClass = "alert alert-success";
        }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

      
    }
    }
