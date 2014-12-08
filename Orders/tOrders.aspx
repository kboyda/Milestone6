<%@ Page Title="LP: Orders" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="tOrders.aspx.vb" Inherits="tOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone6 %>" DeleteCommand="Select * from ORDERS" InsertCommand="Select * from ORDERS" ProviderName="<%$ ConnectionStrings:Milestone6.ProviderName %>" SelectCommand="Select * from ORDERS, ORDERDETAILS" UpdateCommand="Select * from ORDERS"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="ORDERID" HeaderText="Order ID" SortExpression="ORDERID" />
            <asp:BoundField DataField="ORDERDATE" HeaderText="Order Date" SortExpression="ORDERDATE" />
            <asp:BoundField DataField="PRODUCTID" HeaderText="Product ID" SortExpression="PRODUCTID" />
            <asp:BoundField DataField="QTY" HeaderText="Quantity" SortExpression="QTY" />
            <asp:BoundField DataField="PAYMENTTYPE" HeaderText="Payment Type" SortExpression="PAYMENTTYPE" />
            <asp:BoundField DataField="DELIVERYDATE" HeaderText="Delivery Date" SortExpression="DELIVERYDATE" />
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
    <center><asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="White" NavigateUrl="~/Orders/NewOrder.aspx">Add A New Order</asp:HyperLink></center>
</asp:Content>

