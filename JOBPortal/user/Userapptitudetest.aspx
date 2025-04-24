<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserHompage.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Userapptitudetest.aspx.cs" Inherits="JOBPortal.user.Userapptitudetest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
        <!-- Content -->

        <div class="container-xxl flex-grow-1 container-p-y">
            <h4 class="fw-bold py-3 mb-4">
                <span class="text-muted fw-light">Account /</span> Aptitude test
            </h4>

            <div class="row">
                <div class="card">
                    <div class="d-flex align-items-end row">

                        <h4 class="card-header">
                            <p class="card-description card-header">Test  
                                </p>
                        </h4>

                       
                            <div class="form-group row">
                                
                                <div>

                               
                                <h5>
                                    <span>Question 1 :<asp:Label ID="q1" runat="server"  Text=""></asp:Label> 
                                        <br />
                                        <asp:RadioButton ID="q1o1"  runat="server" GroupName="q1" Text="Please Fill Ur Education Details  In settings" /> <br/>
                                        <asp:RadioButton ID="q1o2"  runat="server" GroupName="q1" Text="Please Fill Ur Education Details  In settings" /> <br />
                                        <asp:RadioButton ID="q1o3"  runat="server" GroupName="q1" Text="Please Fill Ur Education Details  In settings" /> <br />
                                        <asp:RadioButton ID="q1o4" runat="server" GroupName="q1" Text="Please Fill Ur Education Details  In settings" /> <br />

                                   
                                     <asp:Label ID="an1" runat="server" class="form-label" Text=""></asp:Label></span><asp:Label ID="q1o" runat="server" class="form-label" Text=""></asp:Label></span>
                                </h5>
                                     </div>
                                <div></div>
                                <h5>
                                    <span>Question 2 :<asp:Label ID="q2" runat="server"  Text=""></asp:Label>
                                        <br />
                                        <asp:RadioButton ID="q2o1" runat="server" GroupName="q2" Text="Please Fill Ur Education Details  In settings" /><br/>
                                        <asp:RadioButton ID="q2o2" runat="server" GroupName="q2" Text="Please Fill Ur Education Details  In settings" /><br/>
                                        <asp:RadioButton ID="q2o3" runat="server" GroupName="q2" Text="Please Fill Ur Education Details  In settings" /><br/>
                                        <asp:RadioButton ID="q2o4" runat="server" GroupName="q2" Text="Please Fill Ur Education Details  In settings" /><br/>

                                    </span>
                                  <asp:Label ID="an2" runat="server" class="form-label" Text=""></asp:Label></span>   <asp:Label ID="q2o" runat="server" class="form-label" Text=""></asp:Label>
                                </h5>
                              </div>
                            <div>
                                <h5>
                                    <span>Question 3 :<asp:Label ID="q3" runat="server"  Text=""></asp:Label>
                                        <br />
                                        <asp:RadioButton ID="q3o1" runat="server" GroupName="q3" Text="Please Fill Ur Education Details  In settings" /><br/>
                                        <asp:RadioButton ID="q3o2" runat="server" GroupName="q3" Text="Please Fill Ur Education Details  In settings" /><br/>
                                        <asp:RadioButton ID="q3o3" runat="server" GroupName="q3" Text="Please Fill Ur Education Details  In settings" /><br/>
                                        <asp:RadioButton ID="q3o4" runat="server" GroupName="q3" Text="Please Fill Ur Education Details  In settings" /><br/>

                                    </span>
                                     <asp:Label ID="an3" runat="server" class="form-label" Text=""></asp:Label></span><asp:Label ID="q3o" runat="server" class="form-label" Text=""></asp:Label>
                                </h5>
                                </div>
                              <div>
 <h5>
                                    <span>Question 4 :<asp:Label ID="q4" runat="server"  Text=""></asp:Label>
                                        <br />
                                        <asp:RadioButton ID="q4o1" runat="server" GroupName="q4" Text="Please Fill Ur Education Details  In settings" /><br/>
                                        <asp:RadioButton ID="q4o2" runat="server" GroupName="q4" Text="Please Fill Ur Education Details  In settings" /><br/>
                                        <asp:RadioButton ID="q4o3" runat="server" GroupName="q4" Text="Please Fill Ur Education Details  In settings" /><br/>
                                        <asp:RadioButton ID="q4o4" runat="server" GroupName="q4" Text="Please Fill Ur Education Details  In settings" /><br/>

                                    </span>
                                    <asp:Label ID="an4" runat="server" class="form-label" Text=""></asp:Label></span> <asp:Label ID="q4o" runat="server" class="form-label" Text=""></asp:Label>
                                </h5>
                              </div>
                               <div>
<h5>
                                    <span>Question 5 :<asp:Label ID="q5" runat="server"  Text=""></asp:Label>
                                        <br />
                                        <asp:RadioButton ID="q5o1" runat="server" GroupName="q5" Text="Please Fill Ur Education Details  In settings" /><br/>
                                        <asp:RadioButton ID="q5o2" runat="server" GroupName="q5" Text="Please Fill Ur Education Details  In settings" /><br/>
                                        <asp:RadioButton ID="q5o3" runat="server" GroupName="q5" Text="Please Fill Ur Education Details  In settings" /><br/>
                                        <asp:RadioButton ID="q5o4" runat="server" GroupName="q5" Text="Please Fill Ur Education Details  In settings" /><br/> 

                                    </span>
                                    <asp:Label ID="an5" runat="server" class="form-label" Text=""></asp:Label></span> <asp:Label ID="q50" runat="server" class="form-label" Text=""></asp:Label>
                                </h5>
                               </div>
                                
                        <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                        <asp:Button ID="Button1" class="btn btn-primary me-2" runat="server" Text="Submit" OnClick="Button1_Click" />
                







                        <%-- <asp:Repeater ID="Repeater1" runat="server"></asp:Repeater>
                        <itemtemplete>
                            <table>
                                <tr>
                                    <td><%#Eval("TestID")%> : <%#Eval("Question")%>  </td>
                                </tr>
                                <tr>
                                     <td>
                                       
 

                                    <asp:RadioButton ID="RadOption1" runat="server" Text='<%#Eval("Option1")%>' GroupName="rdexam" />
                                    <asp:RadioButton ID="RadOption2" runat="server" Text='<%#Eval("Option2")%>' GroupName="rdexam"/>
                                    <asp:RadioButton ID="RadOption3" runat="server" Text='<%#Eval("Option3")%>' GroupName="rdexam"/>
                                    <asp:RadioButton ID="RadOption4" runat="server" Text='<%#Eval("Option4")%>' GroupName="rdexam" />
                                    <br />
                                    <asp:Label ID="LabCorrectAns" runat="server" Text='<%#Eval("CorrectAns")%>'></asp:Label>
                                   </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="LabUserSelectedOption" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </itemtemplete> --%>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
