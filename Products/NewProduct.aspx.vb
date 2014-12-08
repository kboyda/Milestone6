
Partial Class Products_NewProduct
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("~/Products/tProducts.aspx")
    End Sub

End Class
