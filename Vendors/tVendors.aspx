<%@ Page Title="LP: Vendors" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="tVendors.aspx.vb" Inherits="tVendors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone6 %>" DeleteCommand="Select * from VENDORS" InsertCommand="Select * from VENDORS" ProviderName="<%$ ConnectionStrings:Milestone6.ProviderName %>" SelectCommand="Select * from VENDORS" UpdateCommand="Select * from VENDORS"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="VENDORID" DataSourceID="SqlDataSource1" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="Gainsboro" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="VENDORID" HeaderText="ID" ReadOnly="True" SortExpression="VENDORID" />
            <asp:BoundField DataField="VENDORNAME" HeaderText="Name" SortExpression="VENDORNAME" />
            <asp:BoundField DataField="VENDORPHONE" HeaderText="Phone" SortExpression="VENDORPHONE" />
            <asp:BoundField DataField="VENDORADDRESS" HeaderText="Address" SortExpression="VENDORADDRESS" />
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
    <center><asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" Font-Bold="True" NavigateUrl="~/Vendors/NewVendor.aspx">Add New Vendor</asp:HyperLink></center>
</asp:Content>

