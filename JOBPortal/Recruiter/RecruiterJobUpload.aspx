<%@ Page Title="" Language="C#" MasterPageFile="~/Recruiter/RecruiterHomepage.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="RecruiterJobUpload.aspx.cs" Inherits="JOBPortal.Recruiter.RecruiterJobUpload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="main-panel">        
        <div class="content-wrapper">
            
            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4">
                <span class="text-muted fw-light">Account / </span>Upload Job </h4> 

    <div class="row">
         
        <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
           <div class="col-12 grid-margin">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Your Job Details</h4>
                                <p class="card-description">
                      Enter The Details
                    </p>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Job Name</label>
                          <div class="col-sm-9">
                              <asp:TextBox ID="jobname" runat="server"   CssClass="form-control"></asp:TextBox>
                                                    </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Salary</label>
                          <div class="col-sm-9">
                             <asp:TextBox class="form-control" ID="salary"   runat="server"></asp:TextBox>
                          </div>
                        </div>
                      </div>
                    </div>

                     <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Company Name</label>
                          <div class="col-sm-9">
                              <asp:TextBox ID="comname" runat="server"   CssClass="form-control"></asp:TextBox>
                                                    </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Job Location</label>
                          <div class="col-sm-9">
                              <asp:DropDownList class="form-control" ID="joblocation" runat="server" DataSourceID="SqlDataSource1" DataTextField="CountryName" DataValueField="CountryName"></asp:DropDownList>
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [CountryName] FROM [Country]"></asp:SqlDataSource>
                           <%--  <asp:TextBox class="form-control" ID="joblocation"   runat="server"></asp:TextBox>--%>
                          </div>
                        </div>
                      </div>
                    </div>
                    
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Experience</label>
                          <div class="col-sm-9">
                          <asp:DropDownList ID="Experience" class="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="ExperNo" DataValueField="ExperNo">
                                            <asp:ListItem Value="0">Select Experience</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Experience" ErrorMessage="Select Experience" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small" InitialValue="0"></asp:RequiredFieldValidator>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [ExperNo] FROM [Experience]"></asp:SqlDataSource>

                          </div>
                        </div>
                           </div>
                          <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Vacancy</label>
                          <div class="col-sm-9">
                             <asp:TextBox class="form-control" ID="vacancy"   runat="server"></asp:TextBox>
                          </div>
                        </div>
                      </div>
                     
                     
                    </div>
                    
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label"> Select Degree</label>
                          <div class="col-sm-9">
                              <asp:DropDownList ID="Degree" class="form-control" runat="server" DataSourceID="SqlDataSource3" DataTextField="grandCo" DataValueField="grandCo"></asp:DropDownList>
                              <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [grandCo] FROM [Grad]"></asp:SqlDataSource>
                          </div>
                        </div>
                           </div>
                                               
                    </div>
                      <div class="card-body">
                                                  <asp:Button ID="Submit" runat="server" Text="Upload" class="btn btn-primary mr-2" tabindex="0" OnClick="Submit_Click1" />
                      <asp:Button ID="cancel" runat="server" Text="Cancel" class="btn btn-light" tabindex="0" OnClick="cancel_Click" />    
                      </div>
                   
                   
                </div>
              </div>
            </div>
    
     
  

     
       </div>
       </div>
       </div>
</asp:Content>
