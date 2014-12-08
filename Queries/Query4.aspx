<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Query4.aspx.vb" Inherits="Query4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone6 %>" ProviderName="<%$ ConnectionStrings:Milestone6.ProviderName %>" SelectCommand="Select EMPLOYEES.EMPID, EMPLOYEES.EMPLOYEEFIRSTNAME, EMPLOYEES.EMPLOYEELASTNAME, BUILDEVENT.BUILDDATE, BUILDEVENT.STARTTIME, BUILDEVENT.ENDTIME
From EMPLOYEES, BUILDEVENT
WHERE EMPLOYEES.EMPID = BUILDEVENT.EMPID
group by BUILDEVENT.BUILDDATE,BUILDEVENT.STARTTIME,BUILDEVENT.ENDTIME,EMPLOYEES.EMPLOYEELASTNAME,EMPLOYEES.EMPLOYEEFIRSTNAME,EMPLOYEES.EMPID"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="EMPID" HeaderText="Employee ID" SortExpression="EMPID" />
            <asp:BoundField DataField="EMPLOYEEFIRSTNAME" HeaderText="First Name" SortExpression="EMPLOYEEFIRSTNAME" />
            <asp:BoundField DataField="EMPLOYEELASTNAME" HeaderText="Last Name" SortExpression="EMPLOYEELASTNAME" />
            <asp:BoundField DataField="BUILDDATE" HeaderText="Build Date" SortExpression="BUILDDATE" />
            <asp:BoundField DataField="STARTTIME" HeaderText="Start Time" SortExpression="STARTTIME" />
            <asp:BoundField DataField="ENDTIME" HeaderText="End Time" SortExpression="ENDTIME" />
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
    <center><asp:Label ID="Label1" runat="server" Text="This query outputs the employee ID, the employee’s first and last name, the build date, and the start and end times of the project from the employees table and the build event table. It will only output the entries where the employee ID from the employees table matches the employee ID from the build event table. 
" ForeColor="White"></asp:Label></center>
</asp:Content>

