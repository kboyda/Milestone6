<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="NewCustomer.aspx.vb" Inherits="Customers_NewCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone6 %>" DeleteCommand="Select * from CUSTOMERS" InsertCommand="Select * from CUSTOMERS" ProviderName="<%$ ConnectionStrings:Milestone6.ProviderName %>" SelectCommand="Select * from CUSTOMERS" UpdateCommand="Select * from CUSTOMERS"></asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CUSTID" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="50px" HorizontalAlign="Center" Width="125px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="CUSTID" HeaderText="CUSTID" ReadOnly="True" SortExpression="CUSTID" />
            <asp:BoundField DataField="CFIRSTNAME" HeaderText="CFIRSTNAME" SortExpression="CFIRSTNAME" />
            <asp:BoundField DataField="CLASTNAME" HeaderText="CLASTNAME" SortExpression="CLASTNAME" />
            <asp:BoundField DataField="CADDRESS" HeaderText="CADDRESS" SortExpression="CADDRESS" />
            <asp:BoundField DataField="CPHONE" HeaderText="CPHONE" SortExpression="CPHONE" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:DetailsView>
</asp:Content>

