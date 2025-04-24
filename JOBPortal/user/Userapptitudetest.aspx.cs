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

namespace JOBPortal.user
{
    public partial class Userapptitudetest : System.Web.UI.Page
    {
        SqlCommand cmd = null;
        SqlDataReader dr = null;
        SqlDataReader dr1 = null;
        SqlDataReader dr2 = null;
        SqlDataReader dr3 = null;
        SqlDataReader dr4 = null;
        SqlDataReader dr5 = null;
        int marks = 0;
        string str = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            q1o.Visible = false;
            q2o.Visible = false;
            q3o.Visible = false;
            q4o.Visible = false;
            q50.Visible = false;
            an1.Visible = false;    
            an2.Visible  = false;   
            an3.Visible = false;
            an4.Visible = false;
            an5.Visible = false;    



            //if (!IsPostBack)
            //{
                // string js 
                string jP = Session["grad"].ToString();
                String q11 = "q1";
                String q12 = "q2";
                String q13 = "q3";
                String q14 = "q4";
                String q15 = "q5";
                string ans =null;
                

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                conn.Open();
                SqlCommand cmd1 = new SqlCommand("SELECT * FROM Test WHERE Graduation= '" + jP + "' AND QuestionNO ='" + q11 + "'", conn);
                using (SqlDataReader dr = cmd1.ExecuteReader())
                {
                    if (dr.Read())
                    {
                        q1.Text   = dr["Question"].ToString();
                        q1o1.Text = dr["Option1"].ToString();
                        q1o2.Text = dr["Option2"].ToString();
                        q1o3.Text = dr["Option3"].ToString();
                        q1o4.Text = dr["Option4"].ToString();
                        ans = dr["CorrectAns"].ToString();
                        if(q1o1.Checked)
                        { 
                            if(q1o1.Text.ToString() == ans)
                            {
                                marks=marks+1;
                                an1.Visible = true;
                                an1.Text = "Correct Answer IS :";
                                q1o.Visible = true;
                                q1o.Text = dr["CorrectAns"].ToString();
                            }
                            else
                            {
                                
                                an1.Visible = true;
                                an1.Text = "Wrong Answer, Correct Answer  IS :";
                                q1o.Visible = true;
                                q1o.Text = dr["CorrectAns"].ToString();

                            }

                        }
                        else if(q1o2.Checked)
                        {
                        if (q1o2.Text.ToString() == ans)
                        {
                            marks = marks + 1;
                            an1.Visible = true;
                            an1.Text = "Correct Answer IS :";
                            q1o.Visible = true;
                            q1o.Text = dr["CorrectAns"].ToString();
                        }
                        else
                        {

                            an1.Visible = true;
                            an1.Text = "Wrong Answer, Correct Answer  IS :";
                            q1o.Visible = true;
                            q1o.Text = dr["CorrectAns"].ToString();

                        }

                    }

                    else if (q1o3.Checked)
                    {
                        if (q1o3.Text.ToString() == ans)
                        {
                            marks = marks + 1;
                            an1.Visible = true;
                            an1.Text = "Correct Answer IS :";
                            q1o.Visible = true;
                            q1o.Text = dr["CorrectAns"].ToString();
                        }
                        else
                        {

                            an1.Visible = true;
                            an1.Text = "Wrong Answer, Correct Answer  IS :";
                            q1o.Visible = true;
                            q1o.Text = dr["CorrectAns"].ToString();

                        }
                    }
                    else if (q1o4.Checked)
                    {
                        if (q1o4.Text.ToString() == ans)
                        {
                            marks = marks + 1;
                            an1.Visible = true;
                            an1.Text = "Correct Answer IS :";
                            q1o.Visible = true;
                            q1o.Text = dr["CorrectAns"].ToString();
                        }
                        else
                        {

                            an1.Visible = true;
                            an1.Text = "Wrong Answer, Correct Answer  IS :";
                            q1o.Visible = true;
                            q1o.Text = dr["CorrectAns"].ToString();

                        }
                    }
                    else
                    {
                        an1.Text = "Select The Answer :";
                    }

                }
                }
                SqlCommand cmd2 = new SqlCommand("SELECT * FROM Test WHERE Graduation= '" + jP + "' AND QuestionNO ='" + q12 + "'", conn);
                using (SqlDataReader dr1 = cmd2.ExecuteReader())
                {
                    if (dr1.Read())
                    {
                        q2.Text = dr1["Question"].ToString();
                        q2o1.Text = dr1["Option1"].ToString();
                        q2o2.Text = dr1["Option2"].ToString();
                        q2o3.Text = dr1["Option3"].ToString();
                        q2o4.Text = dr1["Option4"].ToString();
                        ans = dr1["CorrectAns"].ToString();
                   if (q2o1.Checked)
                    {
                        if (q2o1.Text.ToString() == ans)
                        {
                            marks = marks + 1;
                            an2.Visible = true;
                            an2.Text = "Correct Answer IS :";
                            q2o.Visible = true;
                            q2o.Text = dr1["CorrectAns"].ToString();
                        }
                        else
                        {

                            an2.Visible = true;
                            an2.Text = "Wrong Answer, Correct Answer  IS :";
                            q2o.Visible = true;
                            q2o.Text = dr1["CorrectAns"].ToString();

                        }

                    }
                    else if (q2o2.Checked)
                    {
                        if (q2o2.Text.ToString() == ans)
                        {
                            marks = marks + 1;
                            an2.Visible = true;
                            an2.Text = "Correct Answer IS :";
                            q2o.Visible = true;
                            q2o.Text = dr1["CorrectAns"].ToString();
                        }
                        else
                        {

                            an2.Visible = true;
                            an2.Text = "Wrong Answer, Correct Answer  IS :";
                            q2o.Visible = true;
                            q2o.Text = dr1["CorrectAns"].ToString();

                        }

                    }

                    else if (q2o3.Checked)
                    {
                        if (q1o3.Text.ToString() == ans)
                        {
                            marks = marks + 1;
                            an2.Visible = true;
                            an2.Text = "Correct Answer IS :";
                            q2o.Visible = true;
                            q2o.Text = dr1["CorrectAns"].ToString();
                        }
                        else
                        {

                            an2.Visible = true;
                            an2.Text = "Wrong Answer, Correct Answer  IS :";
                            q2o.Visible = true;
                            q2o.Text = dr1["CorrectAns"].ToString();

                        }
                    }
                    else if (q2o4.Checked)
                    {
                        if (q2o4.Text.ToString() == ans)
                        {
                            marks = marks + 1;
                            an2.Visible = true;
                            an2.Text = "Correct Answer IS :";
                            q2o.Visible = true;
                            q2o.Text = dr1["CorrectAns"].ToString();
                        }
                        else
                        {

                            an2.Visible = true;
                            an2.Text = "Wrong Answer, Correct Answer  IS :";
                            q2o.Visible = true;
                            q2o.Text = dr1["CorrectAns"].ToString();

                        }
                    }
                    else
                    {
                        an2.Text = "Select The Answer :";
                    }

                }
            }
                SqlCommand cmd3 = new SqlCommand("SELECT * FROM Test WHERE Graduation= '" + jP + "' AND QuestionNO ='" + q13 + "'", conn);
                using (SqlDataReader dr2 = cmd3.ExecuteReader())
                {
                    if (dr2.Read())
                    { 
                        q3.Text = dr2["Question"].ToString();
                        q3o1.Text = dr2["Option1"].ToString();
                        q3o2.Text = dr2["Option2"].ToString();
                        q3o3.Text = dr2["Option3"].ToString();
                        q3o4.Text = dr2["Option4"].ToString();
                    ans = dr2["CorrectAns"].ToString();
                    if (q3o1.Checked)
                    {
                        if (q3o1.Text.ToString() == ans)
                        {
                            marks = marks + 1;
                            an3.Visible = true;
                            an3.Text = "Correct Answer IS :";
                            q3o.Visible = true;
                            q3o.Text = dr2["CorrectAns"].ToString();
                        }
                        else
                        {

                            an3.Visible = true;
                            an3.Text = "Wrong Answer, Correct Answer  IS :";
                            q3o.Visible = true;
                            q3o.Text = dr2["CorrectAns"].ToString();

                        }

                    }
                    else if (q3o2.Checked)
                    {
                        if (q3o2.Text.ToString() == ans)
                        {
                            marks = marks + 1;
                            an3.Visible = true;
                            an3.Text = "Correct Answer IS :";
                            q3o.Visible = true;
                            q3o.Text = dr2["CorrectAns"].ToString();
                        }
                        else
                        {

                            an3.Visible = true;
                            an3.Text = "Wrong Answer, Correct Answer  IS :";
                            q3o.Visible = true;
                            q3o.Text = dr2["CorrectAns"].ToString();

                        }

                    }

                    else if (q3o3.Checked)
                    {
                        if (q3o3.Text.ToString() == ans)
                        {
                            marks = marks + 1;
                            an3.Visible = true;
                            an3.Text = "Correct Answer IS :";
                            q3o.Visible = true;
                            q3o.Text = dr2["CorrectAns"].ToString();
                        }
                        else
                        {

                            an3.Visible = true;
                            an3.Text = "Wrong Answer, Correct Answer  IS :";
                            q3o.Visible = true;
                            q3o.Text = dr2["CorrectAns"].ToString();

                        }
                    }
                    else if (q3o4.Checked)
                    {
                        if (q3o4.Text.ToString() == ans)
                        {
                            marks = marks + 1;
                            an3.Visible = true;
                            an3.Text = "Correct Answer IS :";
                            q3o.Visible = true;
                            q3o.Text = dr2["CorrectAns"].ToString();
                        }
                        else
                        {

                            an3.Visible = true;
                            an3.Text = "Wrong Answer, Correct Answer  IS :";
                            q3o.Visible = true;
                            q3o.Text = dr2["CorrectAns"].ToString();

                        }
                    }
                    else
                    {
                        an3.Text = "Select The Answer :";
                    }

                }
            }
                SqlCommand cmd4 = new SqlCommand("SELECT * FROM Test WHERE Graduation= '" + jP + "' AND QuestionNO ='" + q14 + "'", conn);
                using (SqlDataReader dr3 = cmd4.ExecuteReader())
                {
                    if (dr3.Read())
                    {
                        q4.Text = dr3["Question"].ToString();
                        q4o1.Text = dr3["Option1"].ToString();
                        q4o2.Text = dr3["Option2"].ToString();
                        q4o3.Text = dr3["Option3"].ToString();
                        q4o4.Text = dr3["Option4"].ToString();
                    ans = dr3["CorrectAns"].ToString();
                    if (q4o1.Checked)
                    {
                        if (q4o1.Text.ToString() == ans)
                        {
                            marks = marks + 1;
                            an4.Visible = true;
                            an4.Text = "Correct Answer IS :";
                            q4o.Visible = true;
                            q4o.Text = dr3["CorrectAns"].ToString();
                        }
                        else
                        {

                            an4.Visible = true;
                            an4.Text = "Wrong Answer, Correct Answer  IS :";
                            q4o.Visible = true;
                            q4o.Text = dr3["CorrectAns"].ToString();

                        }

                    }
                    else if (q4o2.Checked)
                    {
                        if (q4o2.Text.ToString() == ans)
                        {
                            marks = marks + 1;
                            an4.Visible = true;
                            an4.Text = "Correct Answer IS :";
                            q4o.Visible = true;
                            q4o.Text = dr3["CorrectAns"].ToString();
                        }
                        else
                        {

                            an4.Visible = true;
                            an4.Text = "Wrong Answer, Correct Answer  IS :";
                            q4o.Visible = true;
                            q4o.Text = dr3["CorrectAns"].ToString();

                        }

                    }

                    else if (q4o3.Checked)
                    {
                        if (q4o3.Text.ToString() == ans)
                        {
                            marks = marks + 1;
                            an4.Visible = true;
                            an4.Text = "Correct Answer IS :";
                            q4o.Visible = true;
                            q4o.Text = dr3["CorrectAns"].ToString();
                        }
                        else
                        {

                            an4.Visible = true;
                            an4.Text = "Wrong Answer, Correct Answer  IS :";
                            q4o.Visible = true;
                            q4o.Text = dr3["CorrectAns"].ToString();

                        }
                    }
                    else if (q4o4.Checked)
                    {
                        if (q4o4.Text.ToString() == ans)
                        {
                            marks = marks + 1;
                            an4.Visible = true;
                            an4.Text = "Correct Answer IS :";
                            q4o.Visible = true;
                            q4o.Text = dr3["CorrectAns"].ToString();
                        }
                        else
                        {

                            an4.Visible = true;
                            an4.Text = "Wrong Answer, Correct Answer  IS :";
                            q4o.Visible = true;
                            q4o.Text = dr3["CorrectAns"].ToString();

                        }
                    }
                    else
                    {
                        an4.Text = "Select The Answer :";
                    }

                }
            }
                SqlCommand cmd5 = new SqlCommand("SELECT * FROM Test WHERE Graduation= '" + jP + "' AND QuestionNO ='" + q15 + "'", conn);
                using (SqlDataReader dr4 = cmd5.ExecuteReader())
                {
                    if (dr4.Read())
                    {
                        q5.Text = dr4["Question"].ToString();
                        q5o1.Text = dr4["Option1"].ToString();
                        q5o2.Text = dr4["Option2"].ToString();
                        q5o3.Text = dr4["Option3"].ToString();
                        q5o4.Text = dr4["Option4"].ToString();
                              ans = dr4["CorrectAns"].ToString();
                    if (q5o1.Checked)
                    {
                        if (q5o1.Text.ToString() == ans)
                        {
                            marks = marks + 1;
                            an5.Visible = true;
                            an5.Text = "Correct Answer IS :";
                            q50.Visible = true;
                            q50.Text = dr4["CorrectAns"].ToString();
                        }
                        else
                        {

                            an5.Visible = true;
                            an5.Text = "Wrong Answer, Correct Answer  IS :";
                            q50.Visible = true;
                            q50.Text = dr4["CorrectAns"].ToString();

                        }

                    }
                    else if (q5o2.Checked)
                    {
                        if (q5o2.Text.ToString() == ans)
                        {
                            marks = marks + 1;
                            an5.Visible = true;
                            an5.Text = "Correct Answer IS :";
                            q50.Visible = true;
                            q50.Text = dr4["CorrectAns"].ToString();
                        }
                        else
                        {

                            an5.Visible = true;
                            an5.Text = "Wrong Answer, Correct Answer  IS :";
                            q50.Visible = true;
                            q50.Text = dr4["CorrectAns"].ToString();

                        }

                    }

                    else if (q5o3.Checked)
                    {
                        if (q5o3.Text.ToString() == ans)
                        {
                            marks = marks + 1;
                            an5.Visible = true;
                            an5.Text = "Correct Answer IS :";
                            q50.Visible = true;
                            q50.Text = dr4["CorrectAns"].ToString();
                        }
                        else
                        {

                            an5.Visible = true;
                            an5.Text = "Wrong Answer, Correct Answer  IS :";
                            q50.Visible = true;
                            q50.Text = dr4["CorrectAns"].ToString();

                        }
                    }
                    else if (q5o4.Checked)
                    {
                        if (q5o4.Text.ToString() == ans)
                        {
                            marks = marks + 1;
                            an4.Visible = true;
                            an4.Text = "Correct Answer IS :";
                            q50.Visible = true;
                            q50.Text = dr4["CorrectAns"].ToString();
                        }
                        else
                        {

                            an5.Visible = true;
                            an5.Text = "Wrong Answer, Correct Answer  IS :";
                            q50.Visible = true;
                            q50.Text = dr4["CorrectAns"].ToString();

                        }
                    }
                    else
                    {
                        an4.Text = "Select The Answer :";
                    }

                }
            }
                }
         

        

        protected void Button1_Click(object sender, EventArgs e)
        {

            
            if(marks>=2)
            {
                lblmsg.Text = "Your Passed";
                Session["Marks"]=marks;
            }
            else
            {
                lblmsg.Text = "Failed";
            }
           

        }
    }
}




            