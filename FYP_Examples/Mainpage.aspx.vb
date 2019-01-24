Imports System.Data
Imports System.Data.SqlClient
Public Class WebForm2
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("~/AdContent.aspx")
    End Sub

    Protected Sub DataList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DataList1.SelectedIndexChanged


    End Sub



    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Response.Redirect("~/Loginpage.aspx")
    End Sub
End Class