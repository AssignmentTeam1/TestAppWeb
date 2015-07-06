Public Class Formchia

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim a As Integer
        Dim b As Integer
        Dim KQ As String

        a = TextBox1.Text
        b = TextBox2.Text

        KQ = a / b
        TextBox3.Text = KQ
    End Sub
End Class