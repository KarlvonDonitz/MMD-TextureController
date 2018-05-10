VERSION 5.00
Begin VB.Form InputForm 
   Caption         =   "导入fx文件"
   ClientHeight    =   1755
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   7185
   Icon            =   "InputForm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   1755
   ScaleWidth      =   7185
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton Command2 
      Caption         =   "取消"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   600
      TabIndex        =   3
      Top             =   1080
      Width           =   2175
   End
   Begin VB.CommandButton Command1 
      Caption         =   "导入"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4440
      TabIndex        =   2
      Top             =   1080
      Width           =   2175
   End
   Begin VB.TextBox Text1 
      Height          =   270
      Left            =   2640
      OLEDropMode     =   1  'Manual
      TabIndex        =   1
      Top             =   360
      Width           =   4215
   End
   Begin VB.Label Label1 
      Caption         =   "请输入要导入的fx文件："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   360
      Width           =   2775
   End
End
Attribute VB_Name = "InputForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Function pathchangeback(path As String)
Dim a() As String
Dim done As String
a() = Split(path, "\\")
ub = UBound(a())
For i = 0 To ub - 1 Step 1
done = done & a(i) & "\"
Next
done = done & a(ub)
pathchangeback = done
End Function
Private Sub Command1_Click()
If Text1.Text <> "" Then
Dim tempstr As String
Dim linenum As Integer
Dim a() As String
Dim b() As String
linenum = 1
filename = Right(Text1.Text, Len(Text1.Text) - InStrRev(Text1.Text, "\"))
CoForm.Combo1.AddItem (filename)
CoForm.Combo1.Text = filename
Open Text1.Text For Input As #1
While Not EOF(1)
   Line Input #1, tempstr
If tempstr <> "" Then
If linenum = 1 Then
   If Right(tempstr, 1) = 3 Then
   CoForm.BCcheck.Value = 1
   Else
    If Right(tempstr, 1) = 1 Then
    CoForm.BCcheck.Value = 1
    CoForm.ABCcheck.Value = 1
    Else
    If Right(tempstr, 1) = 0 Then
    CoForm.BCcheck.Value = 0
    End If
    End If
   End If
End If
If linenum = 6 Then
  a() = Split(tempstr, """")
  CoForm.TexText.Text = pathchangeback(a(1))
End If
If linenum = 7 Then
   If CoForm.BCcheck.Value = 0 Then
   a() = Split(tempstr, "float3")
   tempstr = a(2)
   tempstr = Replace(tempstr, ";", "")
   tempstr = Replace(tempstr, ")", "")
   tempstr = Replace(tempstr, "(", "")
   b() = Split(tempstr, ",")
   CoForm.Rcolor.Text = b(0) * 255
   CoForm.Gcolor.Text = b(1) * 255
   CoForm.Bcolor.Text = b(2) * 255
   End If
End If
If linenum = 8 Then
a() = Split(tempstr, "=")
tempstr = Replace(a(1), ";", "")
CoForm.Text2.Text = tempstr
End If
If linenum = 22 Then
If Right(tempstr, 1) = 0 Then
CoForm.NMcheck.Value = 0
Else
If Right(tempstr, 1) = 1 Then
 CoForm.NMcheck.Value = 1
End If
End If
End If
If linenum = 25 Then
  a() = Split(tempstr, """")
  CoForm.NMText.Text = pathchangeback(a(1))
End If
If linenum = 26 Then
tempstr = Right(tempstr, 2)
tempstr = Replace(tempstr, ";", "")
CoForm.NMS.Text = tempstr
End If
If linenum = 27 Then
tempstr = Right(tempstr, 2)
tempstr = Replace(tempstr, ";", "")
CoForm.NML.Text = tempstr
End If
linenum = linenum + 1
End If
Wend
Close #1
Unload InputForm
End If
End Sub

Private Sub Command2_Click()
Unload InputForm
End Sub

Private Sub Text1_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, X As Single, Y As Single)
Text1.Text = Data.Files(1)
End Sub
