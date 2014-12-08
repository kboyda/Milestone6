<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Query3.aspx.vb" Inherits="Query3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone6 %>" ProviderName="<%$ ConnectionStrings:Milestone6.ProviderName %>" SelectCommand="Select SUPPLYORDERDETAILS.SUPPLYORDERID, SUPPLYORDERS.SUPPLYORDERDESCRIPTION, SUPPLYORDERDETAILS.EMPID, SUPPLYORDERDETAILS.ORDERDATE
From SUPPLYORDERDETAILS, SUPPLYORDERS
WHERE SUPPLYORDERDETAILS.SUPPLYORDERID = SUPPLYORDERS.SUPPLYORDERID"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="SUPPLYORDERID" HeaderText="Supply Order ID" SortExpression="SUPPLYORDERID" />
            <asp:BoundField DataField="SUPPLYORDERDESCRIPTION" HeaderText="Order Description" SortExpression="SUPPLYORDERDESCRIPTION" />
            <asp:BoundField DataField="EMPID" HeaderText="Employee ID" SortExpression="EMPID" />
            <asp:BoundField DataField="ORDERDATE" HeaderText="Order Date" SortExpression="ORDERDATE" />
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
    <center><asp:Label ID="Label1" runat="server" Text="This query outputs the supply order ID, the order description, the employee ID who sold the items, and the order date only when the supply order ID from the order details table matches the supply order ID from the orders table." ForeColor="White"></asp:Label></center>
</asp:Content>

