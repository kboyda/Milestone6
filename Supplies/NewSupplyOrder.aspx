<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="NewSupplyOrder.aspx.vb" Inherits="Supplies_NewSupplyOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone6 %>" DeleteCommand="Select * from SUPPLYORDERS, SUPPLYORDERDETAILS" InsertCommand="Select * from SUPPLYORDERS, SUPPLYORDERDETAILS" ProviderName="<%$ ConnectionStrings:Milestone6.ProviderName %>" SelectCommand="Select * from SUPPLYORDERS, SUPPLYORDERDETAILS" UpdateCommand="Select * from SUPPLYORDERS, SUPPLYORDERDETAILS"></asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" DefaultMode="Insert" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <EditRowStyle BackColor="#03774a" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="SUPPLYORDERID" HeaderText="Order ID" SortExpression="SUPPLYORDERID">
            <HeaderStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="SUPPLYORDERDESCRIPTION" HeaderText="Description" SortExpression="SUPPLYORDERDESCRIPTION">
            <HeaderStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="VENDORID" HeaderText="Vendor ID" SortExpression="VENDORID">
            <HeaderStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="EMPID" HeaderText="Employee ID" SortExpression="EMPID">
            <HeaderStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="QTY" HeaderText="Quantity" SortExpression="QTY">
            <HeaderStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="ORDERDATE" HeaderText="Order Date" SortExpression="ORDERDATE">
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

