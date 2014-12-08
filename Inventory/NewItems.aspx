<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="NewItems.aspx.vb" Inherits="Inventory_NewItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone6 %>" DeleteCommand="Select * from INVENTORY" InsertCommand="Select * from INVENTORY" ProviderName="<%$ ConnectionStrings:Milestone6.ProviderName %>" SelectCommand="Select * from INVENTORY" UpdateCommand="Select * from INVENTORY"></asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ITEMID" DataSourceID="SqlDataSource1" DefaultMode="Insert" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <EditRowStyle BackColor="#03774a" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="ITEMID" HeaderText="ID" ReadOnly="True" SortExpression="ITEMID">
            <HeaderStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="DESCRIPTION" HeaderText="Description" SortExpression="DESCRIPTION">
            <HeaderStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="QTYONHAND" HeaderText="Quantity On Hand" SortExpression="QTYONHAND">
            <HeaderStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="MATERIALCOST" HeaderText="Material Cost" SortExpression="MATERIALCOST">
            <HeaderStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:CommandField ShowInsertButton="True">
            <ItemStyle HorizontalAlign="Center" />
            </asp:CommandField>
        </Fields>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:DetailsView>
</asp:Content>

