Imports System.IO
Imports System.Data.SqlClient

Partial Class librarians_AddMaterials
    Inherits System.Web.UI.Page


    Protected Sub InsertButton_Click(sender As Object, e As EventArgs) Handles InsertButton.Click
        Try
            Dim callnumber As String = tbCallNumber.Text.ToString()
            Dim title As String = tbTitle.Text.ToString()
            Dim Author As String = tbAuthor.Text.ToString()
            Dim publisher As String = tbPublisher.Text.ToString()
            Dim copyright As String = tbCopyright.Text.ToString()
            Dim isbn As Decimal = tbISBN.Text.ToString()
            Dim description As String = tbDescription.Text.ToString()
            Dim category As String = listCategory.SelectedValue.ToString()
            Dim available As Boolean = AvailableCheckBox.Checked()


            'fileupload
            Dim filename As String = Path.GetFileName(FileUpload1.PostedFile.FileName)
            FileUpload1.SaveAs(Server.MapPath("~/images/" + filename))


            Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("cs_SLPL").ToString())
            con.Open()
            Dim cmd As New SqlCommand("Insert INTO Material(CallNumber, Title, Author, Publisher, Copyright, ISBN, Description, Category, Available, ImageName, ImagePath) values(@callnumber, @title, @author, @publisher, @copyright, @isbn, @description, @category, @available, @ImageName, @ImagePath)", con)
            cmd.Parameters.AddWithValue("@ImageName", filename)
            cmd.Parameters.AddWithValue("@ImagePath", "~/images/" + filename)
            cmd.Parameters.AddWithValue("@callnumber", callnumber)
            cmd.Parameters.AddWithValue("@title", title)
            cmd.Parameters.AddWithValue("@author", Author)
            cmd.Parameters.AddWithValue("@publisher", publisher)
            cmd.Parameters.AddWithValue("@copyright", copyright)
            cmd.Parameters.AddWithValue("@isbn", isbn)
            cmd.Parameters.AddWithValue("@description", description)
            cmd.Parameters.AddWithValue("@category", category)
            cmd.Parameters.AddWithValue("@available", available)
            cmd.ExecuteNonQuery()
            con.Close()
            errorLabel.Text = "Your material was inserted successfully."
            ClearFields()
        Catch ex As Exception
            errorLabel.Text = "Sorry your material could not be uploaded"
        End Try


    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        Response.Redirect("~/librarians/ViewMaterials.aspx")
    End Sub

    Protected Sub ClearFields()
        tbAuthor.Text = String.Empty
        tbCallNumber.Text = String.Empty
        tbCopyright.Text = String.Empty
        tbDescription.Text = String.Empty
        tbISBN.Text = String.Empty
        tbPublisher.Text = String.Empty
        tbTitle.Text = String.Empty
        listCategory.SelectedIndex = -1
        AvailableCheckBox.Checked = False
    End Sub

End Class
