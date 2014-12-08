
Partial Class Supplies_NewSupplyOrder
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("~/Supplies/tSupplyOrders.aspx")
    End Sub

End Class
