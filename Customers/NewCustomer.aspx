<%@ Page Title="LP: New Customer" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="NewCustomer.aspx.vb" Inherits="Customers_NewCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone6 %>" DeleteCommand="Select * from CUSTOMERS" InsertCommand="Select * from CUSTOMERS" ProviderName="<%$ ConnectionStrings:Milestone6.ProviderName %>" SelectCommand="Select * from CUSTOMERS" UpdateCommand="Select * from CUSTOMERS"></asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CUSTID" DataSourceID="SqlDataSource1" DefaultMode="Insert" GridLines="Vertical" Height="50px" HorizontalAlign="Center" style="margin-left: 0px" Width="176px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <EditRowStyle BackColor="#03774a" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="CUSTID" HeaderText="ID" ReadOnly="True" SortExpression="CUSTID">
            <HeaderStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="CFIRSTNAME" HeaderText="First Name" SortExpression="CFIRSTNAME">
            <HeaderStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="CLASTNAME" HeaderText="Last Name" SortExpression="CLASTNAME">
            <HeaderStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="CADDRESS" HeaderText="Address" SortExpression="CADDRESS">
            <HeaderStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="CPHONE" HeaderText="Phone" SortExpression="CPHONE">
            <HeaderStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Center" />
    </asp:DetailsView>
</asp:Content>

