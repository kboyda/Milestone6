﻿
Partial Class Customers_NewCustomer
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("~/Customers/tCustomers.aspx")
    End Sub

End Class
