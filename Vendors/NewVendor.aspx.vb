
Partial Class Vendors_NewVendor
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("~/Vendors/tVendors.aspx")
    End Sub

End Class
