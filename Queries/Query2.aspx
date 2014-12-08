<%@ Page Title="LP: Query 2" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Query2.aspx.vb" Inherits="Query2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone6 %>" ProviderName="<%$ ConnectionStrings:Milestone6.ProviderName %>" SelectCommand="Select ORDERS.ORDERID, ORDERS.ORDERDATE, ORDERDETAILS.DELIVERYDATE
From ORDERS, ORDERDETAILS
WHERE ORDERS.ORDERID = ORDERDETAILS.ORDERID
Order By ORDERDETAILS.DELIVERYDATE"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="ORDERID" HeaderText="Order ID" SortExpression="ORDERID" />
            <asp:BoundField DataField="ORDERDATE" HeaderText="Order Date" SortExpression="ORDERDATE" />
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
    <center><asp:Label ID="Label1" runat="server" Text="This query joins Orders and Order Details to see when an order was placed and when the delivery was made." ForeColor="White"></asp:Label></center>
</asp:Content>

