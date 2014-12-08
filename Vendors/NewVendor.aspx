<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="NewVendor.aspx.vb" Inherits="Vendors_NewVendor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone6 %>" DeleteCommand="Select * from VENDORS" InsertCommand="Select * from VENDORS" ProviderName="<%$ ConnectionStrings:Milestone6.ProviderName %>" SelectCommand="Select * from VENDORS" UpdateCommand="Select * from VENDORS"></asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="VENDORID" DataSourceID="SqlDataSource1" DefaultMode="Insert" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <EditRowStyle BackColor="#03774a" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="VENDORID" HeaderText="ID" ReadOnly="True" SortExpression="VENDORID">
            <HeaderStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="VENDORNAME" HeaderText="Name" SortExpression="VENDORNAME">
            <HeaderStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="VENDORPHONE" HeaderText="Phone" SortExpression="VENDORPHONE">
            <HeaderStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="VENDORADDRESS" HeaderText="Address" SortExpression="VENDORADDRESS">
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

