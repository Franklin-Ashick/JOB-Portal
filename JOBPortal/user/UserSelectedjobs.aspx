<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserHompage.Master" AutoEventWireup="true" CodeBehind="UserSelectedjobs.aspx.cs" Inherits="JOBPortal.user.UserSelectedjobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4">
                <span class="text-muted fw-light">Account / </span> Selected Jobs
              </h4>

              <div class="row">
                  <div class="col-md-12">
              
                  <div class="row text-align ">
              
                      <div class="card">
                 <%--       <h4 class="card-header"></h4><asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>--%>
                        <div class="card-body">
                           
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="1102px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
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


                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [jobname], [recruiterName], [Cname], [Salary] FROM [Selected] WHERE ([jobseeker] = @jobseeker)">
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
