<%@ Page Title="" Language="C#" MasterPageFile="~/Recruiter/RecruiterHomepage.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="RecruiterApplications.aspx.cs" Inherits="JOBPortal.Recruiter.RecruiterApplications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">        
        <div class="content-wrapper">
            
            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4">
                <span class="text-muted fw-light">Account / </span>Applications </h4> 

    <div class="row">
         
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
           <div class="col-12 grid-margin">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Your Details</h4>
                  
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-condensed  table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="Job_id" Width="1339px">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Job_id" HeaderText="Job_id" SortExpression="Job_id" InsertVisible="False" ReadOnly="True" Visible="False" />
                            <asp:BoundField DataField="jobseeker" HeaderText="jobseeker" SortExpression="jobseeker" />
                            <asp:BoundField DataField="JobName" HeaderText="JobName" SortExpression="JobName" />
                            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                            <asp:BoundField DataField="JobLocation" HeaderText="JobLocation" SortExpression="JobLocation" />
                            <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                            <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
                            <asp:BoundField DataField="recruiterName" HeaderText="recruiterName" SortExpression="recruiterName" Visible="False" />
                            <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>  
                                     
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT * FROM [Apply_job] WHERE ([recruiterName] = @recruiterName)">
                        <SelectParameters>
                            <asp:SessionParameter Name="recruiterName" SessionField="User" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>


                   
                    
                  </div>
        
 
          
   

  </div>

    </div>

    </div>
    </div>
    </div>
</asp:Content>
