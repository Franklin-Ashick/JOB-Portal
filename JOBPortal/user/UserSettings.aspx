<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserHompage.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="UserSettings.aspx.cs" Inherits="JOBPortal.user.UserSettings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--    <div class="layout-wrapper layout-content-navbar">
        <div class="layout-container">--%>
    <%-- <div class="layout-page">--%>
    <div class="content-wrapper">
        <!-- Content -->

        <div class="container-xxl flex-grow-1 container-p-y">
            <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Account /</span> Settings</h4>

            <div class="row">
                <div class="col-md-12">
                    <ul class="nav nav-pills flex-column flex-md-row mb-3">
                        <li class="nav-item">
                            <a class="nav-link" href="UserProfile.aspx"><i class="bx bx-user  me-1"></i>My Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="javascript:void(0);"><i class="bx bx-cog me-1"></i>Settings</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="UserNotifications.aspx"><i class="bx bx-bell me-1"></i>Notifications</a>
                        </li>

                    </ul>
                    <div class="card mb-4">
                        <h5 class="card-header">Profile Details</h5>
                        <!-- Account -->
                        <div>
                        <div class="card-body">
                            <div class="d-flex align-items-start align-items-sm-center gap-4">
                                <asp:Image ID="Image1" alt="user-avatar" ImageUrl="assets/img/avatars/1.png" class="d-block rounded" height="100" width="100" runat="server" />   <asp:Label ID="Label1" runat="server"  ></asp:Label>
                                
                              <%--  <div class="button-wrapper">
                                      <asp:Button ID="upload" runat="server" Text="Upload" class="btn btn-primary me-2 mb-4" tabindex="0"  />
                                          <label for="upload" class="btn btn-primary me-2 mb-4" tabindex="0">
                                                    <span class="d-none d-sm-block">  <asp:FileUpload ID="FileUpload1"  runat="server" /></span>
                                        <i class="bx bx-upload d-block d-sm-none"> </i>
                                                                   </label> 

                                    <asp:Button ID="reset" runat="server" OnClick="reset_Click" Text="Reset" class="btn btn-outline-secondary account-image-reset mb-4" />
                                     <i class="bx bx-reset d-block d-sm-none"></i>

                                    <p class="text-muted mb-0">Allowed JPG, GIF or PNG. Max size of 800K</p>
                                  

                                </div>--%>
                            </div>
                        </div>
                            </div>

                        <hr class="my-0" />
                        <div class="card-body">
                     
                                <div class="row">
                                    <div class="mb-3 col-md-6">
                                        <label for="firstName" class="form-label">First Name</label>
                                        <asp:TextBox class="form-control" ID="firstName" runat="server" autofocus=""></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="firstName" ErrorMessage="Name must be in Character" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                                    </div>

                                    <div class="mb-3 col-md-6">
                                        <label for="email" class="form-label">E-mail</label>
                                        <asp:TextBox class="form-control" ID="email" runat="server" required="Email Required"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="email" ErrorMessage="Email Required" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" ValidationExpression="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"></asp:RegularExpressionValidator>
                                    </div>

                                    <div class="mb-3 col-md-6">
                                        <label class="form-label" for="phoneNumber">Phone Number</label>
                                        <div class="input-group input-group-merge">
                                            <span class="input-group-text">INDIA (+91)</span>
                                            <asp:TextBox ID="phnumber" class="form-control" runat="server" required=""></asp:TextBox>
                                        </div>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Mobile No. must have 10 digits" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" ValidationExpression="^[0-9]{10}$" ControlToValidate="phnumber"></asp:RegularExpressionValidator>

                                    </div>

                                    <div class="mb-3 col-md-6">
                                        <label for="address" class="form-label">Address</label>
                                        <asp:TextBox class="form-control" ID="address" runat="server" required=""></asp:TextBox>
<%--                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Address required" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" ControlToValidate="address"></asp:RegularExpressionValidator>--%>
                                    </div>

                                    <div class="mb-3 col-md-6">
                                        <label class="form-label" for="country">Country</label>
                                        <asp:DropDownList ID="country" class="select2 form-select" runat="server" DataSourceID="SqlDataSource1" DataTextField="CountryName" DataValueField="CountryName" >
                                            <asp:ListItem Value="0">Select Country</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="country" ErrorMessage="Country is Required" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [CountryName] FROM [Country]"></asp:SqlDataSource>
                                    </div>

                                    <%-- 10th --%>
                                    <div class="mb-3 col-md-6">
                                        <label for="tenthMark" class="form-label">10th Marks</label>
                                        <asp:TextBox class="form-control" ID="tenthMark" runat="server" required></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="10th Marks required" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" ValidationExpression="^0*([0-9]|[1-8][0-9]|9[0-9]|100)$" ControlToValidate="tenthMark"></asp:RegularExpressionValidator>
                                    </div>
                                    <%-- 12th --%>

                                    <div class="mb-3 col-md-6">
                                        <label for="twelvethmarks" class="form-label">12th Marks</label>
                                        <asp:TextBox class="form-control" ID="twelvethmarks" runat="server" required></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="12th Marks required" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^0*([0-9]|[1-8][0-9]|9[0-9]|100)$" Font-Size="Small" ControlToValidate="twelvethmarks"></asp:RegularExpressionValidator>
                                    </div>
                                    <%-- graduation --%>
                                    <div class="mb-3 col-md-6">
                                        <label class="form-label" for="graduation">Graduation"</label>
                                        <asp:DropDownList ID="graduation" class="select2 form-select" runat="server" DataSourceID="SqlDataSource3" DataTextField="grandCo" DataValueField="grandCo" OnSelectedIndexChanged="ddl_SelectedIndexChanged" AutoPostBack="True">
                                            <asp:ListItem Value="0">Select Graduation</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="graduation" ErrorMessage="Select Graduation" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>

                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [grandCo] FROM [Grad]"></asp:SqlDataSource>

                                        <script runat="server">
                                            protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
                                            {
                                                //Session["grad"] = graduation.SelectedValue;
                                            }
                                        </script>
                                    </div>
                                    <%-- post grad--%>
                                    <div class="mb-3 col-md-6">
                                        <label class="form-label" for="country">Post Graduation"</label>
                                        <asp:DropDownList ID="post_graduation" class="select2 form-select" runat="server" DataSourceID="SqlDataSource4" DataTextField="postgradCo" DataValueField="postgradCo">
                                            <asp:ListItem Value="0">Select Post Graduation</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [postgradCo] FROM [Postgrad]"></asp:SqlDataSource>
                                    </div>
                                    <%-- works --%>
                                    <div class="mb-3 col-md-6">
                                        <label for="works" class="form-label">Workes In</label>
                                        <asp:TextBox class="form-control" ID="works" runat="server"></asp:TextBox>
                                    </div>
                                    <%-- exper --%>
                                    <div class="mb-3 col-md-6">
                                        <label class="form-label" for="country">Experience"</label>
                                        <asp:DropDownList ID="Experience" class="select2 form-select" runat="server" DataSourceID="SqlDataSource2" DataTextField="ExperNo" DataValueField="ExperNo">
                                            <asp:ListItem Value="0">Select Experience</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Experience" ErrorMessage="Select Experience" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [ExperNo] FROM [Experience]"></asp:SqlDataSource>

                                    </div>
                                    <%-- resume --%>
                                    <div class="mb-3 col-md-6">
                                        <label for="resume" class="form-label">Resume</label>

                                        <asp:FileUpload ID="resume" class="form-control" runat="server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ErrorMessage="Resume required" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" ControlToValidate="resume"></asp:RegularExpressionValidator>
                                    </div>
                                    <%--  --%>
                                </div>
                                <div class="mt-2">
                                    <asp:Button ID="Button1" class="btn btn-primary me-2" runat="server" Text="Save changes" OnClick="Button1_Click" />
                                    <asp:Button ID="Button2" class="btn btn-outline-secondary" runat="server" Text="Cancel" OnClick="Button2_Click" />
                          <%--          <button type="submit" class="btn btn-primary me-2">Save changes</button>
                                    <button type="reset" class="btn btn-outline-secondary">Cancel</button>--%>
                                </div>
                    
                        </div>
                        <!-- /Account -->
                    </div>
                    <div class="card">
                        <h5 class="card-header">Delete Account</h5>
                        <div class="card-body">
                            <div class="mb-3 col-12 mb-0">
                                <div class="alert alert-warning">
                                    <h6 class="alert-heading fw-bold mb-1">Are you sure you want to delete your account?</h6>
                                    <p class="mb-0">Once you delete your account, there is no going back. Please be certain.</p>
                                </div>
                            </div>
                            <form id="formAccountDeactivation" >
                                <div class="form-check mb-3">
                                    <input
                                        class="form-check-input"
                                        type="checkbox"
                                        name="accountActivation"
                                        id="accountActivation" />
                                    <label class="form-check-label" for="accountActivation">
                                        I confirm my account deactivation</label>
                                </div>
                                <button type="submit" class="btn btn-danger deactivate-account">Deactivate Account</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / Layout page -->
    </div>
            </div>
            <div class="layout-overlay layout-menu-toggle"></div>
    </div>
</asp:Content>
