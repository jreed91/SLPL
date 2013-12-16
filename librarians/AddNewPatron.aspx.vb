Imports System.Data.SqlClient

Partial Class librarians_AddNewPatron
    Inherits System.Web.UI.Page



    Protected Sub ContinueButton_Click(sender As Object, e As EventArgs)
        Response.Redirect("ViewAllPatrons.aspx")
    End Sub

    Protected Sub CreateUserWizard1_ActiveStepChanged(sender As Object, e As EventArgs) Handles CreateUserWizard1.ActiveStepChanged

        If CreateUserWizard1.ActiveStep.Title = "Complete" Then

            Dim NewPatron As WizardStep = CType(CreateUserWizard1.FindControl("PatronID"), WizardStep)

            Dim FirstName As String = txtFirstName.Text.ToString()
            Dim LastName As String = txtLastName.Text.ToString()
            Dim BirthDate As String = txtBirthDate.Text.ToString()
            Dim Address1 As String = txtAddress1.Text.ToString()
            Dim Address2 As String = txtAddress2.Text.ToString()
            Dim City As String = txtCity.Text.ToString()
            Dim State As String = dropdownState.SelectedItem.Text
            Dim Zip As String = txtZip.Text.ToString()
            Dim PhoneNumber As String = txtPhoneNumber.Text.ToString()
            Dim Email As String = txtEmail.Text.ToString()

            Dim newPatronName As MembershipUser = Membership.GetUser(CreateUserWizard1.UserName)
            Dim newPatronID As Guid = CType(newPatronName.ProviderUserKey, Guid)

            Roles.AddUserToRole(newPatronName.UserName, "Patron")

            Dim connectionString As String = ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString
            Dim cmd As String = "Insert INTO [Patron] ([PatronID], [FirstName], [LastName], [BirthDate], [Address1], [Address2], [City], [State], [Zip], [PhoneNumber], [Email]) VALUES (@patronid, @firstname, @lastname, @birthdate, @address1, @address2, @city, @state, @zip, @phonenumber, @email)"

            Using myConnection As New SqlConnection(connectionString)
                myConnection.Open()
                Dim myCommand As New SqlCommand(cmd, myConnection)
                myCommand.Parameters.AddWithValue("@patronid", newPatronID)
                myCommand.Parameters.AddWithValue("@firstname", FirstName)
                myCommand.Parameters.AddWithValue("@lastname", LastName)
                myCommand.Parameters.AddWithValue("@birthdate", BirthDate)
                myCommand.Parameters.AddWithValue("@address1", Address1)
                myCommand.Parameters.AddWithValue("@address2", Address2)
                myCommand.Parameters.AddWithValue("@city", City)
                myCommand.Parameters.AddWithValue("@state", State)
                myCommand.Parameters.AddWithValue("@zip", Zip)
                myCommand.Parameters.AddWithValue("@phonenumber", PhoneNumber)
                myCommand.Parameters.AddWithValue("@email", Email)
                myCommand.ExecuteNonQuery()
                myConnection.Close()
            End Using
        End If
    End Sub
End Class
