<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserHompage.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="JOBPortal.user.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4">
                <span class="text-muted fw-light">Account / </span> My Profile
              </h4>

              <div class="row">
                  <div class="col-md-12">
                      <ul class="nav nav-pills flex-column flex-md-row mb-3">
                               <li class="nav-item">
                              <a class="nav-link active" href="javascript:void(0);"><i class="bx bx-user me-1"></i>MY Profile</a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link" href="UserSettings.aspx"><i class="bx  bx-cog  me-1"></i>Settings</a>
                          </li>
                     
                          <li class="nav-item">
                              <a class="nav-link" href="UserNotifications.aspx"><i class="bx bx-bell me-1"></i>Notifications</a>
                          </li>

                      </ul>
                  <div class="row text-align ">
                    <div class="col-md-6 col-12 mb-md-0 mb-4">
                      <div class="card">
                        <h4 class="card-header">Profile</h4>
                        <div class="card-body">
                                 
                                        <div class="text-center h5 mb-0">
                                            <img
                                                src="assets/img/avatars/1.png"
                                                alt="user-avatar"
                                                class="rounded "
                                                height="100"
                                                width="100" 
                                                                                      
                                                id="uploadedAvatar" />
                                        </div>
                            	<h5 class="text-center h5 mb-0 text-primary">
                                    <asp:Label ID="name" runat="server" Text="Label"></asp:Label></h5>
							<p class="text-center text-muted font-14">JOB Seeker</p>
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
                        <h5 class="card-header">Social Accounts</h5>
                        <div class="card-body">
                          <p>Display content from social accounts on your site</p>
                          <!-- Social Accounts -->
                          <div class="d-flex mb-3">
                            <div class="flex-shrink-0">
                              <img
                                src="assets/img/icons/brands/facebook.png"
                                alt="facebook"
                                class="me-3"
                                height="30"
                              />
                            </div>
                            <div class="flex-grow-1 row">
                              <div class="col-8 col-sm-7 mb-sm-0 mb-2">
                                <h6 class="mb-0">Facebook</h6>
                                <small class="text-muted">Not Connected</small>
                              </div>
                              <div class="col-4 col-sm-5 text-end">
                                <button type="button" class="btn btn-icon btn-outline-secondary">
                                  <i class="bx bx-link-alt"> </i>
                                </button>
                              </div>
                            </div>
                          </div>
                          <div class="d-flex mb-3">
                            <div class="flex-shrink-0">
                              <img
                                src="assets/img/icons/brands/twitter.png"
                                alt="twitter"
                                class="me-3"
                                height="30"
                              />
                            </div>
                            <div class="flex-grow-1 row">
                              <div class="col-8 col-sm-7 mb-sm-0 mb-2">
                                <h6 class="mb-0">Twitter</h6>
                               <%-- <a href="https://twitter.com/Theme_Selection" target="_blank">@ThemeSelection</a>--%>
                              </div>
                              <div class="col-4 col-sm-5 text-end">
                                <button type="button" class="btn btn-icon btn-outline-danger">
                                  <i class="bx bx-link-alt"></i>
                                </button>
                              </div>
                            </div>
                          </div>
                          <div class="d-flex mb-3">
                            <div class="flex-shrink-0">
                              <img
                                src="../assets/img/icons/brands/instagram.png"
                                alt="instagram"
                                class="me-3"
                                height="30"
                              />
                            </div>
                            <div class="flex-grow-1 row">
                              <div class="col-8 col-sm-7 mb-sm-0 mb-2">
                                <h6 class="mb-0">instagram</h6>
                                <a href="https://www.instagram.com/themeselection/" target="_blank">@ThemeSelection</a>
                              </div>
                              <div class="col-4 col-sm-5 text-end">
                                <button type="button" class="btn btn-icon btn-outline-danger">
                                  <i class="bx bx-link-alt"></i>
                                </button>
                              </div>
                            </div>
                          </div>
                          <div class="d-flex mb-3">
                            <div class="flex-shrink-0">
                              <img
                                src="../assets/img/icons/brands/dribbble.png"
                                alt="dribbble"
                                class="me-3"
                                height="30"
                              />
                            </div>
                            <div class="flex-grow-1 row">
                              <div class="col-8 col-sm-7 mb-sm-0 mb-2">
                                <h6 class="mb-0">Dribbble</h6>
                                <small class="text-muted">Not Connected</small>
                              </div>
                              <div class="col-4 col-sm-5 text-end">
                                <button type="button" class="btn btn-icon btn-outline-secondary">
                                  <i class="bx bx-link-alt"></i>
                                </button>
                              </div>
                            </div>
                          </div>
                          <div class="d-flex">
                            <div class="flex-shrink-0">
                              <img
                                src="../assets/img/icons/brands/behance.png"
                                alt="behance"
                                class="me-3"
                                height="30"
                              />
                            </div>
                            <div class="flex-grow-1 row">
                              <div class="col-8 col-sm-7 mb-sm-0 mb-2">
                                <h6 class="mb-0">Behance</h6>
                                <small class="text-muted">Not Connected</small>
                              </div>
                              <div class="col-4 col-sm-5 text-end">
                                <button type="button" class="btn btn-icon btn-outline-secondary">
                                  <i class="bx bx-link-alt"></i>
                                </button>
                              </div>
                            </div>
                          </div>
                          <!-- /Social Accounts -->
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- / Content -->
          </div>
</asp:Content>
