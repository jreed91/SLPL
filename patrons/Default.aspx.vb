
Partial Class patrons_Default
    Inherits System.Web.UI.Page

    Protected Sub SqlDataSource1_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting
        Dim currentUser As MembershipUser = Membership.GetUser()

        Dim currentUserId As Guid = currentUser.ProviderUserKey

        e.Command.Parameters("@PatronID").Value = currentUserId

    End Sub


    Protected Sub SqlDataSource2_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource2.Selecting
        Dim currentUser As MembershipUser = Membership.GetUser()

        Dim currentUserId As Guid = currentUser.ProviderUserKey

        e.Command.Parameters("@PatronID").Value = currentUserId
    End Sub

End Class
