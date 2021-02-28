
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.IO
Public Class WebForm7
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        LoadImages()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Unload
        If FileUpload1.HasFile Then
            Dim fileName As String = FileUpload1.FileName
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data/") & fileName)

        End If


    End Sub

    Private Sub LoadImages()
        For Each strfile As String In Directory.GetFiles(Server.MapPath("~/Data/"))
            Dim imageButton As ImageButton = New ImageButton()
            Dim fi As FileInfo = New FileInfo(strfile)
            imageButton.ImageUrl = "~/Data/" & fi.Name
            imageButton.Height = Unit.Pixel(100)
            imageButton.Style.Add("padding", "5px")
            imageButton.Width = Unit.Pixel(100)
            AddHandler imageButton.Click, New ImageClickEventHandler(AddressOf imageButton_Click)
            Panel1.Controls.Add(imageButton)
        Next

    End Sub

    Protected Sub imageButton_Click(ByVal sender As Object, ByVal e As ImageClickEventArgs)
        Response.Redirect("WebForm8.aspx?ImageURL=" & (CType(sender, ImageButton)).ImageUrl)
    End Sub

End Class