<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Query8.aspx.vb" Inherits="Query8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone6 %>" ProviderName="<%$ ConnectionStrings:Milestone6.ProviderName %>" SelectCommand="select VENDORS.VENDORNAME as &quot;First Vendor&quot;, VENDORS.VENDORPHONE as &quot;Vendor Phone Number&quot;,VENDORS.VENDORID as &quot;ID&quot;, To_Char(SUPPLYORDERDETAILS.ORDERDATE,'mm-dd-yyyy') as &quot;Order Date&quot;
from VENDORS, SUPPLYORDERDETAILS
where VENDORS.VENDORID = SUPPLYORDERDETAILS.VENDORID
and SUPPLYORDERDETAILS.ORDERDATE=(SELECT MIN(SUPPLYORDERDETAILS.ORDERDATE) FROM SUPPLYORDERDETAILS)"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="First Vendor" HeaderText="First Vendor" SortExpression="First Vendor" />
            <asp:BoundField DataField="Vendor Phone Number" HeaderText="Vendor Phone Number" SortExpression="Vendor Phone Number" />
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="Order Date" HeaderText="Order Date" ReadOnly="True" SortExpression="Order Date" />
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
    <center><asp:Label ID="Label1" runat="server" Text="
        This subquery returns our first vendor based on earliest order date. We used a nested subquery 
to return the minimum orderdate, while equating vendors.vendorid to supplyorderdetails.vendorid.
    " ForeColor="White"></asp:Label></center>
</asp:Content>

