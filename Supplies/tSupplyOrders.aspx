<%@ Page Title="LP: Supply Orders" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="tSupplyOrders.aspx.vb" Inherits="tSupplyOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone6 %>" DeleteCommand="Select * from SUPPLYORDERS, SUPPLYORDERDETAILS" InsertCommand="Select * from SUPPLYORDERS, SUPPLYORDERDETAILS" ProviderName="<%$ ConnectionStrings:Milestone6.ProviderName %>" SelectCommand="Select * from SUPPLYORDERS, SUPPLYORDERDETAILS" UpdateCommand="Select * from SUPPLYORDERS, SUPPLYORDERDETAILS"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="SUPPLYORDERID" HeaderText="Supply Order ID" SortExpression="SUPPLYORDERID" />
            <asp:BoundField DataField="SUPPLYORDERDESCRIPTION" HeaderText="Description" SortExpression="SUPPLYORDERDESCRIPTION" />
            <asp:BoundField DataField="VENDORID" HeaderText="Vendor ID" SortExpression="VENDORID" />
            <asp:BoundField DataField="EMPID" HeaderText="Employee ID" SortExpression="EMPID" />
            <asp:BoundField DataField="QTY" HeaderText="Quantity" SortExpression="QTY" />
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
    <center><asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="White" NavigateUrl="~/Supplies/NewSupplyOrder.aspx">Add New Supply Order</asp:HyperLink></center>
</asp:Content>

