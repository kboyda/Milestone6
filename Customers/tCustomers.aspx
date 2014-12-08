<%@ Page Title="LP: Customers" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="tCustomers.aspx.vb" Inherits="tCustomers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone6 %>" DeleteCommand="Select * from CUSTOMERS" InsertCommand="Select * from CUSTOMERS" ProviderName="<%$ ConnectionStrings:Milestone6.ProviderName %>" SelectCommand="Select * from CUSTOMERS" UpdateCommand="Select * from CUSTOMERS"></asp:SqlDataSource>
      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Customers/NewCustomer.aspx">Add New Customer</asp:HyperLink>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CUSTID" DataSourceID="SqlDataSource2" GridLines="Vertical" HorizontalAlign="Center">
          <AlternatingRowStyle BackColor="#DCDCDC" />
          <Columns>
              <asp:CommandField ShowEditButton="True" />
              <asp:BoundField DataField="CUSTID" HeaderText="ID" ReadOnly="True" SortExpression="CUSTID" />
              <asp:BoundField DataField="CFIRSTNAME" HeaderText="First Name" SortExpression="CFIRSTNAME" />
              <asp:BoundField DataField="CLASTNAME" HeaderText="Last Name" SortExpression="CLASTNAME" />
              <asp:BoundField DataField="CADDRESS" HeaderText="Address" SortExpression="CADDRESS" />
              <asp:BoundField DataField="CPHONE" HeaderText="Phone" SortExpression="CPHONE" />
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
    <center><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Customers/NewCustomer.aspx" Font-Bold="True" ForeColor="White" >Add New Customer</asp:HyperLink></center>
</asp:Content>

