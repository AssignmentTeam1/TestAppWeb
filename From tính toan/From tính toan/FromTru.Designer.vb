<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FromTru
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Txbcong1 = New System.Windows.Forms.TextBox()
        Me.Txbcong2 = New System.Windows.Forms.TextBox()
        Me.Txbcong3 = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Bttcong = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(23, 55)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(51, 13)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Giá Trị A:"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(26, 112)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(51, 13)
        Me.Label2.TabIndex = 1
        Me.Label2.Text = "Giá Trị B:"
        '
        'Txbcong1
        '
        Me.Txbcong1.Location = New System.Drawing.Point(95, 55)
        Me.Txbcong1.Name = "Txbcong1"
        Me.Txbcong1.Size = New System.Drawing.Size(100, 20)
        Me.Txbcong1.TabIndex = 2
        '
        'Txbcong2
        '
        Me.Txbcong2.Location = New System.Drawing.Point(95, 112)
        Me.Txbcong2.Name = "Txbcong2"
        Me.Txbcong2.Size = New System.Drawing.Size(100, 20)
        Me.Txbcong2.TabIndex = 3
        '
        'Txbcong3
        '
        Me.Txbcong3.Location = New System.Drawing.Point(295, 55)
        Me.Txbcong3.Name = "Txbcong3"
        Me.Txbcong3.Size = New System.Drawing.Size(100, 20)
        Me.Txbcong3.TabIndex = 4
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(237, 61)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(34, 13)
        Me.Label3.TabIndex = 5
        Me.Label3.Text = "Total:"
        '
        'Bttcong
        '
        Me.Bttcong.Location = New System.Drawing.Point(295, 108)
        Me.Bttcong.Name = "Bttcong"
        Me.Bttcong.Size = New System.Drawing.Size(75, 23)
        Me.Bttcong.TabIndex = 6
        Me.Bttcong.Text = "Calculate"
        Me.Bttcong.UseVisualStyleBackColor = True
        '
        'FromCong
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(417, 169)
        Me.Controls.Add(Me.Bttcong)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Txbcong3)
        Me.Controls.Add(Me.Txbcong2)
        Me.Controls.Add(Me.Txbcong1)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Name = "FromCong"
        Me.Text = "Form Trừ"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Txbcong1 As System.Windows.Forms.TextBox
    Friend WithEvents Txbcong2 As System.Windows.Forms.TextBox
    Friend WithEvents Txbcong3 As System.Windows.Forms.TextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Bttcong As System.Windows.Forms.Button

End Class
