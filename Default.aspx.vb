
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        tbSearch.Focus()
    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click

        If Roles.IsUserInRole(User.Identity.Name, "Librarian") Then
            Response.Redirect("~/librarians/ViewMaterials.aspx?Search=" + tbSearch.Text)
        Else
            Response.Redirect("ViewMaterials.aspx?Search=" + tbSearch.Text)
        End If

    End Sub
End Class
