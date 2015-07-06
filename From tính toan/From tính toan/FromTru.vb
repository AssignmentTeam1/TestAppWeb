Public Class FromTru

    Private Sub Bttcong_Click(sender As Object, e As EventArgs) Handles Bttcong.Click
        Dim a As Integer
        Dim b As Integer
        Dim KQ As String

        a = Txbcong1.Text
        b = Txbcong2.Text
        KQ = a - b
        Txbcong3.Text = KQ




    End Sub
End Class
