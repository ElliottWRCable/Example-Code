Imports System.Data
Imports System.Data.SqlClient
Public Class WebForm3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Login1_Authenticate(sender As Object, e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles Login1.Authenticate

        Dim LoginCheckResults As Integer = LoginCheck(Login1.UserName, Login1.Password)
        If LoginCheckResults > 0 Then
            e.Authenticated = True
            Session("SessionUserName") = Login1.UserName
            Session("SessionUserID") = LoginCheckResults
        Else
            e.Authenticated = False
        End If

    End Sub

    Private Function LoginCheck(ByVal username As String, ByVal password As String) As Integer

        Dim connce As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString4ProjectDatabase").ToString())

        connce.Open()

        Dim sqlCommand As String = "SELECT UserID FROM tbUsers WHERE ((Username = '" + username + "') AND (Password = '" + password + "'))"
        Dim cmd As SqlCommand = New SqlCommand(sqlCommand, connce)
        Dim queryResults = Convert.ToString(cmd.ExecuteScalar())
        connce.Close()

        If String.IsNullOrEmpty(queryResults) Then
            Return -1
        Else
            Return queryResults
        End If

    End Function

    Protected Sub SignupButton_Click(sender As Object, e As EventArgs) Handles SignupButton.Click
        Response.Redirect("~/SignupPage.aspx")
    End Sub
End Class