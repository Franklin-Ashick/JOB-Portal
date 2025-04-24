<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserHompage.Master" AutoEventWireup="true" CodeBehind="UserDefault.aspx.cs" Inherits="JOBPortal.user.UserDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
          <div class="container-xxl flex-grow-1 container-p-y">
               <div class="row">
              <div class="card">
                <div class="d-flex align-items-end row">
                    <div class="col-sm-7">
                        <div class="card-body">
                                  <h5 class="card-title text-primary">Welcome Back!</h5>
                            <h4>
                                <asp:Label ID="naame" runat="server" Text="Label"></asp:Label>! 🎉</h4>
                            <p class="mb-4">New Jobs Are <span class="fw-bold">AVAILABLE </span>Apply Soon. To Get Selected
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-5 text-center text-sm-left">
                        <div class="card-body pb-0 px-0 px-md-4">
                            <img
                                src="assets/img/illustrations/man-with-laptop-light.png"
                                height="140"
                                alt="View Badge User"
                                data-app-dark-img="illustrations/man-with-laptop-dark.png"
                                data-app-light-img="illustrations/man-with-laptop-light.png" />
                        </div>
                    </div>
                                    </div>
            </div>

    
     
            <div class="card">
                         <div class="d-flex align-items-end row">
                      <div class="col-sm-7">
                            <div class="card-body">

                                <h5 class="card-title text-primary">Your Applied Jobs</h5>
                                                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" Width="1100px">
                                    <Columns>
                                        <asp:BoundField DataField="jobname" HeaderText="Job name" SortExpression="jobname" />
                                        <asp:BoundField DataField="recruiterName" HeaderText="Recruiter Name" SortExpression="recruiterName" />
                                        <asp:BoundField DataField="Cname" HeaderText="Company Name" SortExpression="Cname" />
                                        <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                                    </Columns>
                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                    <RowStyle ForeColor="#000066" />
                                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [jobname], [recruiterName], [Cname], [Salary] FROM [Selected] WHERE ([jobseeker] = @jobseeker)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="jobseeker" SessionField="User" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>












                    </div>
                </div>
    </div>
                    </div>
    </div>
    


</asp:Content>
