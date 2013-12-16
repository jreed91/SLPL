Imports System.Data.SqlClient
Imports System.Data
Partial Class librarians_RentMaterial
    Inherits System.Web.UI.Page

    Protected Sub btnRent_Click(sender As Object, e As EventArgs) Handles btnRent.Click
        Dim connection As New SqlConnection(ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString)

        Try
            Dim materialid As String = tbMaterialID.Text
            Dim username As String = tbUserName.Text
            Dim datecheckedout As DateTime = DateTime.Now
            Dim duedate As DateTime = DateAdd("d", 30, Today)



            Dim sqlAdp As New SqlDataAdapter
            Dim cmd As New SqlCommand

            cmd.Connection = connection
            cmd.CommandText = "RentMaterial"
            cmd.CommandType = Data.CommandType.StoredProcedure

            cmd.Parameters.Add(New SqlParameter("@UserName", username))
            cmd.Parameters.Add(New SqlParameter("@MaterialID", materialid))
            cmd.Parameters.Add(New SqlParameter("@DateCheckedOut", datecheckedout))
            cmd.Parameters.Add(New SqlParameter("@DueDate", duedate))

            connection.Open()
            cmd.ExecuteNonQuery()
            connection.Close()
            errorlabel.Text = "Item was successfully rented"
            tbMaterialID.Text = String.Empty
            tbUserName.Text = String.Empty
        Catch SQLex As SqlException
            Dim myError As SqlError
            For Each myError In SQLex.Errors
                errorlabel.Text = SQLex.Message
            Next
        End Try
    End Sub

End Class
