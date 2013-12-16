Imports System.Data.SqlClient
Imports System.Data

Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        'stats
        GetMaterialCount()
        GetPatronCount()
        currenttime.Text = Date.Now().ToShortDateString.ToString()
    End Sub

    Protected Sub GetMaterialCount()
        Dim conn As New SqlConnection(ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString)
        Dim cmd As New SqlCommand("select * from Material")
        Dim ap As New SqlDataAdapter(cmd.CommandText, conn)
        Dim ds As New DataSet()


        conn.Open()
        ap.Fill(ds)
        count.Text = ds.Tables(0).Rows.Count.ToString()
        conn.Close()
    End Sub

    Protected Sub GetPatronCount()
        Dim conn As New SqlConnection(ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString)
        Dim cmd As New SqlCommand("select * from Patron")
        Dim ap As New SqlDataAdapter(cmd.CommandText, conn)
        Dim ds As New DataSet()


        conn.Open()
        ap.Fill(ds)
        countMembers.Text = ds.Tables(0).Rows.Count.ToString()
        conn.Close()
    End Sub

   
End Class

