﻿
Partial Class ViewMaterials
    Inherits System.Web.UI.Page



    Protected Sub tbSearch_TextChanged(sender As Object, e As EventArgs) Handles tbSearch.TextChanged
        Dim search As String = "SELECT DISTINCT MaterialID, Title, Author, ImageName, ImagePath, Category, Available FROM Material Where (Title Like '%" + tbSearch.Text.ToString() + "%') OR (Author Like '%" + tbSearch.Text.ToString() + "%') AND Available = 1"
        SqlDataSource1.SelectCommand = search
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If IsPostBack = False Then
            tbSearch.Text = Request.QueryString("Search")
            Dim search As String = "SELECT DISTINCT MaterialID, Title, Author, ImageName, ImagePath, Category, Available FROM Material Where (Title Like '%" + tbSearch.Text.ToString() + "%') OR (Author Like '%" + tbSearch.Text.ToString() + "%') AND Available = 1"
            SqlDataSource1.SelectCommand = search
        Else

        End If
        tbSearch.Focus()
    End Sub
End Class
