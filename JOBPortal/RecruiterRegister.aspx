<%@ Page Title="" Language="C#" MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="RecruiterRegister.aspx.cs"  EnableEventValidation="false"Inherits="JOBPortal.RecruiterRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<link href="StyleSheet1.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end justify-content-start">
                <div class="col-md-12 ftco-animate text-center mb-5">
                    <p class="breadcrumbs mb-0"><span class="mr-3"><a href="Default.aspx">Home <i class="ion-ios-arrow-forward"></i></a></span><span>About</span></p>
                    <h1 class="mb-3 bread">Recruiter Registration</h1>
                </div>
            </div>
        </div>
    </div>
    <section class="contact-section">
        <div class="container pt 50 pb 40">
            <div class="row">
                 <div class ="col-12 pb-20">
                            <asp:Label ID="lblMsg" runat="server"  ></asp:Label>
                  </div>
                <div class="col-lg-6 mx-auto">
                  <div class="form-contact contact_form" id="contactForm">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                                    <asp:TextBox ID="Username" CssClass="form-control" runat="server" placeholder="Enter your Username" required></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
                                    <asp:TextBox ID="Password" CssClass="form-control" runat="server" placeholder="Enter Password" TextMode="Password" required></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
                                    <asp:TextBox ID="ConfPassword" CssClass="form-control" runat="server" placeholder="Renter Your Password" TextMode="Password"  required></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Not Matched" ControlToCompare="Password" ControlToValidate="ConfPassword" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:CompareValidator>
                                </div>
                            </div>
                              <div class="col-12">
                                <h6>Personal Imformation</h6>  
                              </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <asp:Label ID="Label4" runat="server" Text="Full Name"></asp:Label>
                                    <asp:TextBox ID="fullname" CssClass="form-control" runat="server"   placeholder="Enter Your Full Name" required></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate ="fullname" ErrorMessage="Name must be in Character" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                              <div class="col-12">
                                <div class="form-group">
                                    <asp:Label ID="Label9" runat="server" Text="Company Name"></asp:Label>
                                    <asp:TextBox ID="Cname" CssClass="form-control" runat="server"   placeholder="Enter Your Company Name" required></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate ="Cname" ErrorMessage="Name must be in Character" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                             <div class="col-12">
                                <div class="form-group">
                                    <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
                                    <asp:TextBox ID="address" CssClass="form-control" runat="server" placeholder="Enter Address" TextMode="MultiLine" required></asp:TextBox>
                                </div>
                            </div>

                                <div class="col-12">
                                <div class="form-group">
                                    <asp:Label ID="Label8" runat="server" Text="Mobile Number"></asp:Label>
                                    <asp:TextBox ID="mobile" CssClass="form-control" runat="server" placeholder="Enter Your Mobile Number" required></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Mobile No. must have 10 digits" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" ValidationExpression="^[0-9]{10}$" ControlToValidate ="mobile"></asp:RegularExpressionValidator>
                                </div>
                            </div>


                             <div class="col-12">
                                <div class="form-group">
                                    <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
                                    <asp:TextBox ID="email" CssClass="form-control" runat="server" placeholder="Enter Your Email" TextMode="Email"  required></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate ="email" ErrorMessage="Email Required" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" ValidationExpression="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"></asp:RegularExpressionValidator>
                                            </div>
                            </div>
                            
                            <div class="col-12">
                                <div class="form-group">
                                    <asp:Label ID="Label7" runat="server" Text="Select Your Country"></asp:Label>
                                    <asp:DropDownList ID="country" runat="server" DataSourceID="SqlDataSource1" CssClass="form-control w-100" AppendDataBoundsItems="true" DataTextField ="CountryName" DataValueField ="CountryName">
                                        <asp:ListItem Value="0">Select Country</asp:ListItem>
                                    </asp:DropDownList> 
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="country" ErrorMessage="Country is Required" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [CountryName] FROM [Country]"></asp:SqlDataSource>

                                </div>
                            </div>
                                                    </div>
                        <div class="form-group mt-3">
                            <asp:Button ID="Button1" runat="server" Class="login-btn" Text="Sign Up" OnClick="Button1_Click"/>
           
                             <div class="center">Already Have an Account?--> <a href="RecruiterLogin.aspx">Sign In</a></div>
                                           </div>
                    </div>

                </div>
                   </div> 
            </div>
    </section>

</asp:Content>
