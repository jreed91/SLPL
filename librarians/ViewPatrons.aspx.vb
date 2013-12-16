
Partial Class librarians_ViewPatrons
    Inherits System.Web.UI.Page

    Protected Sub tbSearch_TextChanged(sender As Object, e As EventArgs) Handles tbSearch.TextChanged
        Dim search As String = "SELECT PatronID, FirstName, LastName FROM Patron Where (FirstName Like '%" + tbSearch.Text.ToString() + "%') OR (LastName Like '%" + tbSearch.Text.ToString() + "%') OR (PhoneNumber Like '%" + tbSearch.Text.ToString() + "%') OR (Email Like '%" + tbSearch.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = search
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Response.Redirect("~/librarians/AddNewPatron.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        tbSearch.Focus()
    End Sub
End Class
