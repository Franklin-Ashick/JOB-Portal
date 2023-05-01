<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserHompage.Master" AutoEventWireup="true" CodeBehind="UserApplyjob.aspx.cs" Inherits="JOBPortal.user.UserApplyjob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
             <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4">
                <span class="text-muted fw-light">Account / </span> Apply Jobs
              </h4>

              <div class="row">
                  <div class="col-md-12">
              
                  <div class="row text-align ">
              
                      <div class="card">
                        <h4 class="card-header">Profile</h4><asp:Label ID="lblMsg" runat="server" Text=""></asp:Label><asp:Label ID="Label1" runat="server" ></asp:Label>
                        <div class="card-body">
                           
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="958px" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="Jobid">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="Jobid" HeaderText="Jobid" SortExpression="Jobid" InsertVisible="False" ReadOnly="True" Visible="False" />
                                            <asp:BoundField DataField="recruiterName" HeaderText="recruiterName" SortExpression="recruiterName" />
                                            <asp:BoundField DataField="JobName" HeaderText="JobName" SortExpression="JobName" />
                                            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                                            <asp:BoundField DataField="JobLocation" HeaderText="JobLocation" SortExpression="JobLocation" />
                                            <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                                            <asp:BoundField DataField="vacancy" HeaderText="vacancy" SortExpression="vacancy" />
                                            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                                            <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                                        </Columns>
                                        <EditRowStyle BackColor="#2461BF" />
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT * FROM [ApprovedJobs] WHERE ([Degree] = @Degree)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="Degree" SessionField="grad" Type="String" />
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
