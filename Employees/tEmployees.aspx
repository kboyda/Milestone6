<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="tEmployees.aspx.vb" Inherits="tEmployees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone6 %>" DeleteCommand="Select * from EMPLOYEES" InsertCommand="Select * from EMPLOYEES" ProviderName="<%$ ConnectionStrings:Milestone6.ProviderName %>" SelectCommand="Select * from EMPLOYEES" UpdateCommand="Select * from EMPLOYEES"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="EMPID" HeaderText="ID" SortExpression="EMPID" />
            <asp:BoundField DataField="EMPLOYEEFIRSTNAME" HeaderText="First Name" SortExpression="EMPLOYEEFIRSTNAME" />
            <asp:BoundField DataField="EMPLOYEELASTNAME" HeaderText="Last Name" SortExpression="EMPLOYEELASTNAME" />
            <asp:BoundField DataField="EMPLOYEEADDRESS" HeaderText="Address" SortExpression="EMPLOYEEADDRESS" />
            <asp:BoundField DataField="EMPLOYEEPHONE" HeaderText="Phone" SortExpression="EMPLOYEEPHONE" />
            <asp:BoundField DataField="EMPTYPE" HeaderText="Type" SortExpression="EMPTYPE" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#03774a" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <br />
    <center><asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="White" NavigateUrl="~/Employees/NewEmployee.aspx">Add New Employee</asp:HyperLink></center>
</asp:Content>

