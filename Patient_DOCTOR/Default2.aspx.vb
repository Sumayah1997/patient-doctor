Imports System.Data.SqlClient
Imports System.IO
Imports System.Data
Partial Class Default2
    Inherits System.Web.UI.Page
    Public x As Integer = 0
    Dim constr As String = ConfigurationManager.ConnectionStrings("con").ConnectionString
    Dim con As New SqlConnection(constr)
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        If txtId.Text = "" Or txtpw.Text = "" Then
            Response.Write("<script>alert(' الرجاء التأكد من اكمال جميع الحقول   ');window.location.href='default2.aspx';</script>")
            Exit Sub
        End If
        If con.State = 1 Then con.Close()
        cmd.CommandText = "select * from doctor where doctor_id='" & txtId.Text & "'  "
        cmd.Connection = con
        con.Open()
        dr = cmd.ExecuteReader
        If dr.HasRows = True Then
            dr.Read()
             
            Session("name") = dr("name")


        Else
            Response.Write("<script>alert(' خطأ في الايميل او كلمة المرور  ');window.location.href='default2.aspx';</script>")
            Exit Sub

        End If

        Response.Redirect("default.aspx")
    End Sub
End Class
