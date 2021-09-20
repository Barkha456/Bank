Imports System.Data.SqlClient

Public Class Transiction
    Inherits System.Web.UI.Page
    Dim DT As New DataTable


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If ViewState("TRANSFERED") = Nothing Then
                DT.Columns.Add("SENDER")
                DT.Columns.Add("RECIEVER")
                DT.Columns.Add("AMOUNT")
                ViewState("TRANSFERED") = DT


            End If
        End If

    End Sub



    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button1.Click

        DT = ViewState("TRANSFERED")
        DT.Rows.Add(TextBox1.Text, TextBox2.Text, TextBox3.Text)
        GridView1.DataSource = DT
        GridView1.DataBind()
        MsgBox("TRANSFERED")
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""

    End Sub
End Class
