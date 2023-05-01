<%@ Page Title="" Language="C#" MasterPageFile="~/Recruiter/RecruiterHomepage.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Recruiterjobs.aspx.cs" Inherits="JOBPortal.Recruiter.Recruiterjobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <div class="content-wrapper">

            <div class="container-xxl flex-grow-1 container-p-y">
                <h4 class="fw-bold py-3 mb-4">
                    <span class="text-muted fw-light">Account / </span>Your JObs </h4>

                <div class="row">

                    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                    <div class="row">
                        <div class="col-md-12 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <p class="card-title">Posted Jobs</p>
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="table-responsive">
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Job_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1387px">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                                        <asp:BoundField DataField="Job_id" HeaderText="Job_id" InsertVisible="False" ReadOnly="True" SortExpression="Job_id" Visible="False" />
                                                        <asp:BoundField DataField="recruiterName" HeaderText="recruiterName" SortExpression="recruiterName" Visible="False" />
                                                        <asp:BoundField DataField="JobName" HeaderText="JobName" SortExpression="JobName" />
                                                        <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                                                        <asp:BoundField DataField="JobLocation" HeaderText="JobLocation" SortExpression="JobLocation" />
                                                        <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                                                        <asp:BoundField DataField="vacancy" HeaderText="vacancy" SortExpression="vacancy" />
                                                        <asp:BoundField DataField="Companyname" HeaderText="Companyname" SortExpression="Companyname" />
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



                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" DeleteCommand="DELETE FROM [Post_job] WHERE [Job_id] = @Job_id" InsertCommand="INSERT INTO [Post_job] ([recruiterName], [JobName], [Salary], [JobLocation], [Experience], [vacancy], [Companyname], [Degree]) VALUES (@recruiterName, @JobName, @Salary, @JobLocation, @Experience, @vacancy, @Companyname, @Degree)" SelectCommand="SELECT * FROM [Post_job] WHERE ([recruiterName] = @recruiterName)" UpdateCommand="UPDATE [Post_job] SET [JobName] = @JobName, [Salary] = @Salary, [JobLocation] = @JobLocation, [Experience] = @Experience, [vacancy] = @vacancy, [Companyname] = @Companyname, [Degree] = @Degree WHERE [Job_id] = @Job_id">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="Job_id" Type="Int32" />
                                                    </DeleteParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="recruiterName" Type="String" />
                                                        <asp:Parameter Name="JobName" Type="String" />
                                                        <asp:Parameter Name="Salary" Type="String" />
                                                        <asp:Parameter Name="JobLocation" Type="String" />
                                                        <asp:Parameter Name="Experience" Type="String" />
                                                        <asp:Parameter Name="vacancy" Type="String" />
                                                        <asp:Parameter Name="Companyname" Type="String" />
                                                        <asp:Parameter Name="Degree" Type="String" />
                                                    </InsertParameters>
                                                    <SelectParameters>
                                                        <asp:SessionParameter Name="recruiterName" SessionField="User" Type="String" />
                                                    </SelectParameters>
                                                    <UpdateParameters>
                                                        <asp:Parameter Name="recruiterName" Type="String" />
                                                        <asp:Parameter Name="JobName" Type="String" />
                                                        <asp:Parameter Name="Salary" Type="String" />
                                                        <asp:Parameter Name="JobLocation" Type="String" />
                                                        <asp:Parameter Name="Experience" Type="String" />
                                                        <asp:Parameter Name="vacancy" Type="String" />
                                                        <asp:Parameter Name="Companyname" Type="String" />
                                                        <asp:Parameter Name="Degree" Type="String" />
                                                        <asp:Parameter Name="Job_id" Type="Int32" />
                                                    </UpdateParameters>
                                                </asp:SqlDataSource>
                                          
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
