<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminpage.Master" AutoEventWireup="true" CodeBehind="Admindefault.aspx.cs" Inherits="JOBPortal.Admin.Admin_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container-fluid pt-4 px-4">
        <div class="row g-4">


             <div class="col-12">
                <div class="bg-secondary rounded h-100 p-4">
                    <h6 class="mb-4">Approve Jobs <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label></h6> New Jobs are Uploded 
                    <div class="table-responsive">
                        <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Job_id" DataSourceID="SqlDataSource8" ForeColor="Black" GridLines="Vertical" Width="1570px" OnSelectedIndexChanged="GridView8_SelectedIndexChanged1">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                 <asp:CommandField SelectText="Approve" ShowSelectButton="True" />
                                <asp:CommandField ShowDeleteButton="True" DeleteText="Reject" />
                                <asp:BoundField DataField="Job_id" HeaderText="Job_id" InsertVisible="False" ReadOnly="True" SortExpression="Job_id" Visible="False" />
                                <asp:BoundField DataField="recruiterName" HeaderText="recruiterName" SortExpression="recruiterName" />
                                <asp:BoundField DataField="JobName" HeaderText="JobName" SortExpression="JobName" />
                                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                                <asp:BoundField DataField="JobLocation" HeaderText="JobLocation" SortExpression="JobLocation" />
                                <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                                <asp:BoundField DataField="vacancy" HeaderText="vacancy" SortExpression="vacancy" />
                                <asp:BoundField DataField="Companyname" HeaderText="Companyname" SortExpression="Companyname" />
                                <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" DeleteCommand="DELETE FROM [Post_job] WHERE [Job_id] = @Job_id" SelectCommand="SELECT * FROM [Post_job]" >
                            <DeleteParameters>
                                <asp:Parameter Name="Job_id" Type="Int32" />
                               
                            </DeleteParameters>
                           
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
           
            <div class="col-12">
                <div class="bg-secondary rounded h-100 p-4">
                    <h6 class="mb-4">Interview Questions</h6>
                    <div class="table-responsive">
                        <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="TestID" DataSourceID="SqlDataSource9" ForeColor="Black" GridLines="Vertical" Width="1571px">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="TestID" HeaderText="TestID" InsertVisible="False" ReadOnly="True" SortExpression="TestID" />
                                <asp:BoundField DataField="Graduation" HeaderText="Graduation" SortExpression="Graduation" />
                                <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                                <asp:BoundField DataField="Option1" HeaderText="Option1" SortExpression="Option1" />
                                <asp:BoundField DataField="Option2" HeaderText="Option2" SortExpression="Option2" />
                                <asp:BoundField DataField="Option3" HeaderText="Option3" SortExpression="Option3" />
                                <asp:BoundField DataField="Option4" HeaderText="Option4" SortExpression="Option4" />
                                <asp:BoundField DataField="CorrectAns" HeaderText="CorrectAns" SortExpression="CorrectAns" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>

                        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" DeleteCommand="DELETE FROM [Test] WHERE [TestID] = @TestID" InsertCommand="INSERT INTO [Test] ([Graduation], [Question], [Option1], [Option2], [Option3], [Option4], [CorrectAns]) VALUES (@Graduation, @Question, @Option1, @Option2, @Option3, @Option4, @CorrectAns)" SelectCommand="SELECT * FROM [Test] ORDER BY [Graduation]" UpdateCommand="UPDATE [Test] SET [Graduation] = @Graduation, [Question] = @Question, [Option1] = @Option1, [Option2] = @Option2, [Option3] = @Option3, [Option4] = @Option4, [CorrectAns] = @CorrectAns WHERE [TestID] = @TestID">
                            <DeleteParameters>
                                <asp:Parameter Name="TestID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Graduation" Type="String" />
                                <asp:Parameter Name="Question" Type="String" />
                                <asp:Parameter Name="Option1" Type="String" />
                                <asp:Parameter Name="Option2" Type="String" />
                                <asp:Parameter Name="Option3" Type="String" />
                                <asp:Parameter Name="Option4" Type="String" />
                                <asp:Parameter Name="CorrectAns" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Graduation" Type="String" />
                                <asp:Parameter Name="Question" Type="String" />
                                <asp:Parameter Name="Option1" Type="String" />
                                <asp:Parameter Name="Option2" Type="String" />
                                <asp:Parameter Name="Option3" Type="String" />
                                <asp:Parameter Name="Option4" Type="String" />
                                <asp:Parameter Name="CorrectAns" Type="String" />
                                <asp:Parameter Name="TestID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

                    </div>
                </div>
            </div>

            <div class="col-12">
                <div class="bg-secondary rounded h-100 p-4">
                    <h6 class="mb-4">User Details</h6>
                    <div class="table-responsive">

                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="UserId" DataSourceID="SqlDataSource1" ForeColor="Black" Width="1576px" GridLines="Vertical">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
                                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [UserId], [Username], [Email], [Name], [Mobile], [Address], [Country] FROM [User]" DeleteCommand="DELETE FROM [User] WHERE([UserId]=@userid)"></asp:SqlDataSource>


                    </div>
                </div>
            </div>


            <div class="col-12">
                <div class="bg-secondary rounded h-100 p-4">
                    <h6 class="mb-4">Recruiters Details</h6>
                    <div class="table-responsive">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Recruiterid" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" Width="1576px">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="Recruiterid" HeaderText="Recruiterid" InsertVisible="False" ReadOnly="True" SortExpression="Recruiterid" />
                                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [Recruiterid], [Username], [Name], [Cname], [Email], [Mobile], [Address], [Country] FROM [Recruiter]" DeleteCommand="DELETE FROM [Recruiter] WHERE([Recruiterid]=@recruiterid)"></asp:SqlDataSource>


                    </div>
                </div>
            </div>

            <div class="col-12">
                <div class="bg-secondary rounded h-100 p-4">
                    <h6 class="mb-4">Login Details</h6>
                    <div class="table-responsive">
                        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="username" DataSourceID="SqlDataSource6" ForeColor="Black" GridLines="Vertical" Width="1576px">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" />
                                <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT * FROM [Login]" DeleteCommand="DELETE FROM [Login] WHERE [username] = @username" >
                            <DeleteParameters>
                                <asp:Parameter Name="username" Type="String" />
                            </DeleteParameters>
                           
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>

   <div class="col-12">
                <div class="bg-secondary rounded h-100 p-4">
                    <h6 class="mb-4">Posted Jobs</h6>
                    <div class="table-responsive">

                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Job_id" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Vertical" Width="1575px" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="Job_id" HeaderText="Job_id" InsertVisible="False" ReadOnly="True" SortExpression="Job_id" Visible="False" />
                                <asp:BoundField DataField="recruiterName" HeaderText="recruiterName" SortExpression="recruiterName" />
                                <asp:BoundField DataField="JobName" HeaderText="JobName" SortExpression="JobName" />
                                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                                <asp:BoundField DataField="JobLocation" HeaderText="JobLocation" SortExpression="JobLocation" />
                                <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                                <asp:BoundField DataField="vacancy" HeaderText="vacancy" SortExpression="vacancy" />
                                <asp:BoundField DataField="Companyname" HeaderText="Companyname" SortExpression="Companyname" />
                                <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>

                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT * FROM [recrtuiterjobs]" DeleteCommand="DELETE FROM [recrtuiterjobs] WHERE [Job_id] = @Job_id" InsertCommand="INSERT INTO [recrtuiterjobs] ([recruiterName], [JobName], [Salary], [JobLocation], [Experience], [vacancy], [Companyname], [Degree]) VALUES (@recruiterName, @JobName, @Salary, @JobLocation, @Experience, @vacancy, @Companyname, @Degree)" UpdateCommand="UPDATE [recrtuiterjobs] SET [recruiterName] = @recruiterName, [JobName] = @JobName, [Salary] = @Salary, [JobLocation] = @JobLocation, [Experience] = @Experience, [vacancy] = @vacancy, [Companyname] = @Companyname, [Degree] = @Degree WHERE [Job_id] = @Job_id">
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

            <div class="col-12">
                <div class="bg-secondary rounded h-100 p-4">
                    <h6 class="mb-4">Jobs Applied</h6>
                    <div class="table-responsive">
                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Job_id" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Vertical" Width="1578px">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="Job_id" HeaderText="Job_id" InsertVisible="False" ReadOnly="True" SortExpression="Job_id" />
                                <asp:BoundField DataField="jobseeker" HeaderText="jobseeker" SortExpression="jobseeker" />
                                <asp:BoundField DataField="JobName" HeaderText="JobName" SortExpression="JobName" />
                                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                                <asp:BoundField DataField="JobLocation" HeaderText="JobLocation" SortExpression="JobLocation" />
                                <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                                <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
                                <asp:BoundField DataField="recruiterName" HeaderText="recruiterName" SortExpression="recruiterName" />
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [Job_id], [jobseeker], [JobName], [Salary], [JobLocation], [Experience], [Cname], [recruiterName] FROM [Apply_job]" DeleteCommand="DELETE FROM [Apply_job] WHERE([Job_id]=@jobid)"></asp:SqlDataSource>
                    </div>
                </div>
            </div>

            <div class="col-12">
                <div class="bg-secondary rounded h-100 p-4">
                    <h6 class="mb-4">Selected Users</h6>
                    <div class="table-responsive">
                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="select_id" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Vertical" Width="1579px">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="select_id" HeaderText="select_id" InsertVisible="False" ReadOnly="True" SortExpression="select_id" />
                                <asp:BoundField DataField="jobseeker" HeaderText="jobseeker" SortExpression="jobseeker" />
                                <asp:BoundField DataField="jobname" HeaderText="jobname" SortExpression="jobname" />
                                <asp:BoundField DataField="recruiterName" HeaderText="recruiterName" SortExpression="recruiterName" />
                                <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
                                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [select_id], [jobseeker], [jobname], [recruiterName], [Cname], [Salary] FROM [Selected]" ></asp:SqlDataSource>
                    </div>
                </div>
            </div>
            
            <div class="col-12">
                <div class="bg-secondary rounded h-100 p-4">
                    <h6 class="mb-4">Reviews</h6>
                    <div class="table-responsive">
                        <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ContactId" DataSourceID="SqlDataSource7" ForeColor="Black" GridLines="Vertical" Width="1586px">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="ContactId" HeaderText="ContactId" InsertVisible="False" ReadOnly="True" SortExpression="ContactId" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                                <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [ContactId], [Name], [Email], [Subject], [Message] FROM [Contact]" DeleteCommand="DELETE FROM [Contact] WHERE([ContactId]=@ContactId)"></asp:SqlDataSource>
                    </div>
                </div>
            </div>


        </div>
    </div>

</asp:Content>
