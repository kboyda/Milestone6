<%@ Page Title="LP: Query 6" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Query6.aspx.vb" Inherits="Query6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone6 %>" ProviderName="<%$ ConnectionStrings:Milestone6.ProviderName %>" SelectCommand="select e.EMPLOYEEFIRSTNAME, e.EMPLOYEELASTNAME,e.EMPID, e.EMPTYPE, b.ORDERID
from BUILDEVENT b, EMPLOYEES e
where e.EMPID = b.EMPID
and b.MATERIALSNEEDED = (select x.MATERIALSNEEDED
from BUILDEVENT x where x.MATERIALSNEEDED = 'Plastic, Glue')"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="EMPLOYEEFIRSTNAME" HeaderText="First Name" SortExpression="EMPLOYEEFIRSTNAME" />
            <asp:BoundField DataField="EMPLOYEELASTNAME" HeaderText="Last Name" SortExpression="EMPLOYEELASTNAME" />
            <asp:BoundField DataField="EMPID" HeaderText="Employee ID" SortExpression="EMPID" />
            <asp:BoundField DataField="EMPTYPE" HeaderText="Employee Type" SortExpression="EMPTYPE" />
            <asp:BoundField DataField="ORDERID" HeaderText="Order ID" SortExpression="ORDERID" />
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
    <center><asp:Label ID="Label1" runat="server" Text="This subquery selects the employee first and last name, the employee ID, the employee type, and the order ID from the build event table and the employees table. The output is the employee which worked with both the materials plastic and glue, which is employee Adrian Peterson. " ForeColor="White"></asp:Label></center>
</asp:Content>

