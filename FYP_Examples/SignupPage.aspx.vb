Imports System.Data
Imports System.Data.SqlClient

Public Class WebForm4
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub CreateUserWizard1_CreatingUser(sender As Object, e As EventArgs) Handles CreateUserWizard1.CreatingUser

        Dim connce As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString4ProjectDatabase").ToString())
        connce.Open()

        Dim username, password, email As String

        username = CreateUserWizard1.UserName
        password = CreateUserWizard1.Password
        email = CreateUserWizard1.Email

        Dim sqlCommand As String = "INSERT INTO tbUsers (Username, Password, Email) VALUES ('" + username + "', '" + password + "', '" + email + "')"
        Dim cmd As SqlCommand = New SqlCommand(sqlCommand, connce)
        Dim cmdResults As Integer
        cmdResults = cmd.ExecuteNonQuery()

        If cmdResults = 1 Then
            Dim sqlCommand3 As String = "SELECT MAX(UserID) FROM tbUsers"
            Dim cmd3 As SqlCommand = New SqlCommand(sqlCommand3, connce)
            Dim lastID As Integer = CInt(cmd3.ExecuteScalar())

            connce.Close()

            Session("SessionUserID") = lastID
            Session("SessionUserName") = username

            Response.Redirect("LoginPage.aspx")

        Else
            connce.Close()
            Exit Sub

        End If

    End Sub
End Class