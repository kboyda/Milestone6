<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="tProductDetails.aspx.vb" Inherits="tProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone6 %>" DeleteCommand="Select * from PRODUCTDETAILS" InsertCommand="Select * from PRODUCTDETAILS" ProviderName="<%$ ConnectionStrings:Milestone6.ProviderName %>" SelectCommand="Select * from PRODUCTDETAILS" UpdateCommand="Select * from PRODUCTDETAILS"></asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="ITEMID" HeaderText="ID" SortExpression="ITEMID">
            <HeaderStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="QTY" HeaderText="Quantity" SortExpression="QTY">
            <HeaderStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="PCOST" HeaderText="Cost" SortExpression="PCOST">
            <HeaderStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="DATEDEMANDED" HeaderText="Date Demanded" SortExpression="DATEDEMANDED">
            <HeaderStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:CommandField ShowEditButton="True">
            <ItemStyle HorizontalAlign="Center" />
            </asp:CommandField>
        </Fields>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:DetailsView>
   
</asp:Content>

