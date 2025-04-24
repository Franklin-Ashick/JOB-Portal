<%@ Page Title="" Language="C#" MasterPageFile="~/Homepage.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="JOBPortal.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end justify-content-start">
                <div class="col-md-12 ftco-animate text-center mb-5">
                    <p class="breadcrumbs mb-0"><span class="mr-3"><a href="Default.aspx">Home <i class="ion-ios-arrow-forward"></i></a></span><span>About</span></p>
                    <h1 class="mb-3 bread">Login</h1>
                </div>
            </div>
        </div>
    </div>


    <div class="login-area page-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-124 col-sm-12 col-xs-12">
                    <div class="login-page">
                        <div class="login-form">
                            <div class="row">
                                <form id="contactForm" method="POST" action="http://rockstheme.com/rocks/aievari-live/contact.php" class="log-form">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <asp:TextBox ID="username" runat="server" class="form-control" placeholder="Username" required data-error="Please enter your name"></asp:TextBox>
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                          <asp:TextBox ID="password" runat="server" class="form-control" placeholder="Password" TextMode="Password" required data-error="Please enter your name"></asp:TextBox>
                                    </div>
                                      <div class="col-md-12 col-sm-12 col-xs-12">

                                        <div class="check-group flexbox">

                                            <a class="text-muted" href="#">Forgot password?</a>
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                        <asp:Button type="submit" ID="submit" runat="server" class="login-btn" Text="Login" OnClick="submit_Click" />
                                        <div id="msgSubmit" class="h3 text-center hidden"></div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="clear"></div>
                                        <div class="separetor"><span>Or with Sign</span></div>
                                        <div class="sign-icon">
                                            <ul>
                                                <li><a class="facebook" href="#">Facebook</a></li>
                                                <li><a class="twitter" href="#">twitter</a></li>
                                                <li><a class="google" href="#">google+</a></li>
                                            </ul>

                                            <div class="acc-not">Don't have an account  <a href="UserRegister.aspx">Sign up</a></div>
                                            <div class="center"><a href="Adminlogin.aspx">Admin login</a> </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
