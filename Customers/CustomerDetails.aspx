<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="CustomerDetails.aspx.vb" Inherits="Customers_CustomerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone6 %>" DeleteCommand="Select * from CUSTOMERS" InsertCommand="Select * from CUSTOMERS" ProviderName="<%$ ConnectionStrings:Milestone6.ProviderName %>" SelectCommand="Select * from CUSTOMERS" UpdateCommand="Select * from CUSTOMERS"></asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CUSTID" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="50px" HorizontalAlign="Center" Width="173px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" HorizontalAlign="Right" />
        <Fields>
            <asp:BoundField DataField="CUSTID" HeaderText="ID" ReadOnly="True" SortExpression="CUSTID">
            <FooterStyle HorizontalAlign="Right" />
            <HeaderStyle HorizontalAlign="Right" />
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="CFIRSTNAME" HeaderText="First Name" SortExpression="CFIRSTNAME">
            <FooterStyle HorizontalAlign="Right" />
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
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
            <FooterStyle HorizontalAlign="Center" />
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:CommandField>
        </Fields>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" HorizontalAlign="Right" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:DetailsView>
</asp:Content>

