<%@ Page Title="LP: Query 1" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Query1.aspx.vb" Inherits="Query1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone6 %>" ProviderName="<%$ ConnectionStrings:Milestone6.ProviderName %>" SelectCommand="Select ITEMID, DESCRIPTION, QTYONHAND,MATERIALCOST
From INVENTORY
Where QTYONHAND&gt;= 2000"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ITEMID" DataSourceID="SqlDataSource1" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="ITEMID" HeaderText="Item ID" ReadOnly="True" SortExpression="ITEMID" />
            <asp:BoundField DataField="DESCRIPTION" HeaderText="Description" SortExpression="DESCRIPTION" />
            <asp:BoundField DataField="QTYONHAND" HeaderText="Quantity On Hand" SortExpression="QTYONHAND" />
            <asp:BoundField DataField="MATERIALCOST" HeaderText="Material Cost" SortExpression="MATERIALCOST" />
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
    <center><asp:Label ID="Label1" runat="server" Text="This query outputs the item ID, description, quantity on hand, and material costs from the inventory table only when the quantity on hand of an item is greater than or equal to 2,000. " ForeColor="White"></asp:Label></center>
</asp:Content>

