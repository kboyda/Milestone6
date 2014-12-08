<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false" %>

<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub
</script>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="contents location">
        <h2>Contact us today</h2>
        <p>
            <span>Address</span></p>
        <address>
            5412 Center Point Rd. N.E.
            <br />
            Cedar Rapids,&nbsp; IA&nbsp;&nbsp; 52402</address>
        <p>
            <span>Phone</span></p>
        <p class="phone">
            319-373-1717
            <br />
            800-383-1717</p>
        <p>
            <span>Fax</span></p>
        <p class="phone">
            319-373-2776</p>
        <p>
            <span>Business Hours</span></p>
        <ul class="opening">
            <li>Monday - Friday : 8:00 AM - 4:30 PM </li>
        </ul>
        <div class="clear">
            &nbsp;</div>
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>