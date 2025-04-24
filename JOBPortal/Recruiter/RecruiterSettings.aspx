<%@ Page Title="" Language="C#" MasterPageFile="~/Recruiter/RecruiterHomepage.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="RecruiterSettings.aspx.cs" Inherits="JOBPortal.Recruiter.RecruiterProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-color: lightblue;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <div class="content-wrapper">

            <div class="container-xxl flex-grow-1 container-p-y">
                <h4 class="fw-bold py-3 mb-4">
                    <span class="text-muted fw-light">Account / </span>Settings </h4>

                <div class="row">
                    <div class="col-md-12">
                        <ul class="nav nav-pills flex-column flex-md-row mb-3">
                            <li class="nav-item">
                                <a class="nav-link btn-primary mr-2" href="RecruiterProfile.aspx"><i class="ti-user "></i>Profile</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active btn-primary mr-2" href="javascript:void(0);"><i class="ti-settings"></i>Settings</a>
                            </li>

                        </ul>
                    </div>
                </div>


                <div class="row">

                    <div class="col-12 grid-margin">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Your Details</h4>

                                <p class="card-description">
                                    Personal info  
                                    <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
                                </p>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">UserName</label>
                                            <div class="col-sm-9">
                                                <asp:TextBox ID="username" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">First Name</label>
                                            <div class="col-sm-9">
                                                <asp:TextBox class="form-control" ID="firstName" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Company Name</label>
                                            <div class="col-sm-9">
                                                <asp:TextBox ID="cname" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Email</label>
                                            <div class="col-sm-9">
                                                <asp:TextBox class="form-control" ID="email" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Mobile No</label>
                                            <div class="col-sm-9">
                                                <asp:TextBox class="form-control" ID="phnumber" runat="server" ></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Address</label>
                                            <div class="col-sm-9">
                                                <asp:TextBox class="form-control" ID="address" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Country</label>
                                            <div class="col-sm-9">
                                                <asp:DropDownList ID="country" class="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="CountryName" DataValueField="CountryName">
                                                    <asp:ListItem Value="0">Select Country</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [CountryName] FROM [Country]"></asp:SqlDataSource>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="country" ErrorMessage="Country is Required" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [CountryName] FROM [Country]"></asp:SqlDataSource>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="card-body">
                                   
                                    <asp:Button ID="Submit" runat="server" Text="Submit" class="btn btn-primary mr-2" TabIndex="0" OnClick="Submit_Click1"  />
                                    <asp:Button ID="Clear" runat="server" Text="Cancel" class="btn btn-light" TabIndex="0" OnClick="Clear_Click" />
                                </div>



                            </div>
                        </div>
                    </div>

                </div>
            </div>
            </div>
  
     
</asp:Content>
