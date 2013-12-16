Imports System.Data.SqlClient

Partial Class librarians_ReturnMaterial
    Inherits System.Web.UI.Page

    Protected Sub btnReturn_Click(sender As Object, e As EventArgs) Handles btnReturn.Click
        Try
            Dim materialid As String = tbMaterialID.Text

            Dim connection As New SqlConnection(ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString)

            Dim sqlAdp As New SqlDataAdapter
            Dim cmd As New SqlCommand

            cmd.Connection = connection
            cmd.CommandText = "ReturnMaterial"
            cmd.CommandType = Data.CommandType.StoredProcedure

            cmd.Parameters.Add(New SqlParameter("@MaterialID", materialid))

            connection.Open()
            cmd.ExecuteNonQuery()
            connection.Close()
            errorlabel.Text = "Successfully returned"
            tbMaterialID.Text = String.Empty
        Catch Ex As SqlException
            Dim myError As SqlError
            For Each myError In Ex.Errors
                errorlabel.Text = Ex.Message
            Next
        End Try

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If IsPostBack = False Then
            tbMaterialID.Text = Request.QueryString("MaterialID")
        Else

        End If
    End Sub
End Class
