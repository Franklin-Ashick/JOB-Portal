<%@ Page Title="" Language="C#" MasterPageFile="~/Recruiter/RecruiterHomepage.Master" AutoEventWireup="true" CodeBehind="RecruiterProfile.aspx.cs" Inherits="JOBPortal.Recruiter.RecruiterProfile1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            width: 100%;
            margin: 5px;
        }

        .table-condensed tr th {
            border: 0px solid #6e7bd9;
            color: white;
            background-color: #6e7bd9;
        }

        .table-condensed, .table-condensed tr td {
            border: 0px solid #000;
        }

        tr:nth-child(even) {
            background: #f8f7ff
        }

        tr:nth-child(odd) {
            background: #fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <div class="content-wrapper">

            <div class="container-xxl flex-grow-1 container-p-y">
                <h4 class="fw-bold py-3 mb-4">
                    <span class="text-muted fw-light">Account / </span>My Profile
                </h4>
                      
                <div class="row">
                    <div class="col-md-12">
                        <ul class="nav nav-pills flex-column flex-md-row mb-3">
                            <li class="nav-item">
                                <a class="nav-link active btn-primary mr-2" href="javascript:void(0);"><i class="ti-user"></i>Profile</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link btn-primary mr-2" href="RecruiterSettings.aspx"><i class=" ti-settings"></i>Settings</a>
                            </li>

                        </ul>
                    </div>
                </div>
                <div class="row text-align ">
                    <div class="col-md-6 col-12 mb-md-0 mb-4">
                      <div class="card">
                        <h4 class="card-header">Profile</h4>
                        <div class="card-body">
                                 
                                        <div class="text-center h5 mb-0">
                                            <img
                                                src="../user/assets/img/avatars/1.png"
                                                alt="user-avatar"
                                                class="rounded "
                                                height="100"
                                                width="100" 
                                                                                      
                                                id="uploadedAvatar" />
                                        </div>
                            	<h5 class="text-center h5 mb-0 text-primary">
                                    <asp:Label ID="name" runat="server" Text="Label"></asp:Label></h5>
							<p class="text-center text-muted font-14">Recruiter</p>
                                <div class="profile-info">
								<h4 class="mb-20 h4 text-blue">Contact Information</h4>
								<ul>
									<li>
										<span class ="text-primary">Email Address:</span>
										<asp:Label ID="email" runat="server" Text="Label"></asp:Label>
									</li>
									<li>
										<span class ="text-primary">Phone Number:</span>
										<asp:Label ID="phnumber" runat="server" Text="Label"></asp:Label>
									</li>
                                    <li>
										<span class ="text-primary">Company Name:</span>
										<asp:Label ID="cname" runat="server" Text="Label"></asp:Label>
									</li>
									<li>
										<span class ="text-primary">Country:</span>
										<asp:Label ID="country" runat="server" Text="Label"></asp:Label>
									</li>
									<li>
										<span class ="text-primary">Address:</span>
									 <asp:Label ID="address" runat="server" Text="Label"></asp:Label>
									</li>
								</ul>
							</div>
							</div>
                          </div>
                        </div>
                    <div class="col-md-6 col-12">
                      <div class="card">
                        <h5 class="card-header">Posted Jobs</h5>
                        <div class="card-body">
                            <asp:GridView ID="GridView2" CssClass="table table-condensed  table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="JobName" HeaderText="JobName" SortExpression="JobName" />
                                    <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                                    <asp:BoundField DataField="JobLocation" HeaderText="JobLocation" SortExpression="JobLocation" />
                                    <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                                    <asp:BoundField DataField="vacancy" HeaderText="vacancy" SortExpression="vacancy" />
                                    <asp:BoundField DataField="Companyname" HeaderText="Companyname" SortExpression="Companyname" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [JobName], [Salary], [JobLocation], [Experience], [vacancy], [Companyname] FROM [Post_job] WHERE ([recruiterName] = @recruiterName)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="recruiterName" SessionField="User" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <!-- Social Accounts -->
                 
        
                    
                    








      


        </div>


    </div>


</div>
    </div>
    </div>

    </div>
</asp:Content>
