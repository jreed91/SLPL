
Partial Class librarians_CurrentRented
    Inherits System.Web.UI.Page

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        Dim search As String = "SELECT CheckOut.CheckoutID, CheckOut.DateCheckedOut, CheckOut.DueDate, CheckOut.MaterialID, CheckOut.PatronID, Patron.FirstName, Patron.LastName, Material.Title, Material.Author FROM CheckOut INNER JOIN Patron ON CheckOut.PatronID = Patron.PatronID INNER JOIN Material ON CheckOut.MaterialID = Material.MaterialID WHERE Patron.FirstName Like '%" + tbSearch.Text + "%' OR Patron.LastName Like '%" + tbSearch.Text + "%'"
        SqlDataSource1.SelectCommand = search
    End Sub


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        tbSearch.Focus()
    End Sub

    Protected Sub btnOverdue_Click(sender As Object, e As EventArgs) Handles btnOverdue.Click
        Dim overdue As String = "SELECT CheckOut.CheckoutID, CheckOut.DateCheckedOut, CheckOut.DueDate, CheckOut.MaterialID, CheckOut.PatronID, Patron.FirstName, Patron.LastName, Material.Title, Material.Author FROM CheckOut INNER JOIN Patron ON CheckOut.PatronID = Patron.PatronID INNER JOIN Material ON CheckOut.MaterialID = Material.MaterialID WHERE CheckOut.DueDate < GETDATE()"
        SqlDataSource1.SelectCommand = overdue
    End Sub
End Class
