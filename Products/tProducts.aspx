<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="tProducts.aspx.vb" Inherits="tProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone6 %>" DeleteCommand="Select * from PRODUCTS" InsertCommand="Select * from PRODUCTS" ProviderName="<%$ ConnectionStrings:Milestone6.ProviderName %>" SelectCommand="Select * from PRODUCTS, PRODUCTDETAILS" UpdateCommand="Select * from PRODUCTS"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="PRODUCTID" HeaderText="ID" SortExpression="PRODUCTID" />
            <asp:BoundField DataField="PDESCRIPTION" HeaderText="Description" SortExpression="PDESCRIPTION" />
            <asp:BoundField DataField="LISTPRICE" HeaderText="List Price" SortExpression="LISTPRICE" />
            <asp:BoundField DataField="MFTGCOST" HeaderText="Manufacturing Cost" SortExpression="MFTGCOST" />
            <asp:BoundField DataField="QTY" HeaderText="Quantity" SortExpression="QTY" />
            <asp:BoundField DataField="PCOST" HeaderText="Cost" SortExpression="PCOST" />
            <asp:BoundField DataField="DATEDEMANDED" HeaderText="Date Demanded" SortExpression="DATEDEMANDED" />
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
    <center><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Products/NewProduct.aspx" Font-Bold="True" ForeColor="White">Add New Product</asp:HyperLink></center>
</asp:Content>

