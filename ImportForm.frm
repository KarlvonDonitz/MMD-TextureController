VERSION 5.00
Begin VB.Form ImportForm 
   Caption         =   "导入"
   ClientHeight    =   1800
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   5730
   Icon            =   "ImportForm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   1800
   ScaleWidth      =   5730
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton Command1 
      Caption         =   "确定"
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
      Left            =   3840
      TabIndex        =   2
      Top             =   960
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Left            =   1080
      OLEDropMode     =   1  'Manual
      TabIndex        =   1
      Top             =   480
      Width           =   4215
   End
   Begin VB.Label Label1 
      Caption         =   "路径："
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
      Left            =   480
      TabIndex        =   0
      Top             =   480
      Width           =   735
   End
End
Attribute VB_Name = "ImportForm"
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
FileName = Right(Text1.Text, Len(Text1.Text) - InStrRev(Text1.Text, "\"))
filepath = Left(Text1.Text, Len(Text1.Text) - (Len(Text1.Text) - InStrRev(Text1.Text, "\")))
MainForm.Outputpath.Text = Left(filepath, Len(filepath) - 1)
MainForm.fxCombo.AddItem (Left(FileName, Len(FileName) - 3))
MainForm.fxCombo.Text = Left(FileName, Len(FileName) - 3)
Open Text1.Text For Input As #1
While Not EOF(1)
   Line Input #1, tempstr
If tempstr <> "" Then
If linenum = 1 Then
   If Right(tempstr, 1) = 3 Then
   MainForm.Albedo_OM.Value = 1
   Else
    If Right(tempstr, 1) = 1 Then
    MainForm.Albedo_TM.Value = 1
    Else
    If Right(tempstr, 1) = 0 Then
    MainForm.Albedo_FC.Value = 1
    End If
    End If
   End If
End If
If linenum = 6 Then
If MainForm.Albedo_TM.Value = 1 Then
  a() = Split(tempstr, """")
  MainForm.AlbedoTex.Text = filepath & pathchangeback(a(1))
End If
End If
If linenum = 7 Then
   If MainForm.Albedo_FC.Value = 1 Then
   a() = Split(tempstr, "float3")
   If UBound(a) = 2 Then
   tempstr = a(2)
   tempstr = Replace(tempstr, ";", "")
   tempstr = Replace(tempstr, ")", "")
   tempstr = Replace(tempstr, "(", "")
   b() = Split(tempstr, ",")
   MainForm.AlbedoR.Text = b(0) * 255
   MainForm.AlbedoG.Text = b(1) * 255
   MainForm.AlbedoB.Text = b(2) * 255
   Else
   a() = Split(tempstr, "=")
   tempstr = Replace(a(1), ";", "")
   MainForm.AlbedoR.Text = tempstr * 255
   MainForm.AlbedoG.Text = tempstr * 255
   MainForm.AlbedoB.Text = tempstr * 255
   End If
   End If
End If
If linenum = 8 Then
a() = Split(tempstr, "=")
tempstr = Replace(a(1), ";", "")
MainForm.AlbedoScale.Text = tempstr
End If
If linenum = 16 Then
   If Right(tempstr, 1) = 0 Then
   MainForm.ALcheck.Value = 0
   End If
   If Right(tempstr, 1) = 1 Then
   MainForm.ALcheck.Value = 1
   End If
End If
If linenum = 19 Then
  If MainForm.ALcheck.Value = 1 Then
  a() = Split(tempstr, """")
  MainForm.alphaTex.Text = filepath & pathchangeback(a(1))
  End If
End If
If linenum = 21 Then
 If MainForm.ALcheck.Value = 1 Then
 a() = Split(tempstr, "=")
tempstr = a(1)
tempstr = Replace(tempstr, " ", "")
tempstr = Replace(tempstr, ";", "")
MainForm.alphaloop.Text = tempstr
 End If
End If
If linenum = 22 Then
If Right(tempstr, 1) = 0 Then
MainForm.NMcheck.Value = 0
Else
If Right(tempstr, 1) = 1 Then
 MainForm.NMcheck.Value = 1
End If
End If
End If
If linenum = 25 Then
  a() = Split(tempstr, """")
  MainForm.NMtex.Text = filepath & pathchangeback(a(1))
End If
If linenum = 26 Then
If MainForm.NMcheck.Value = 1 Then
a() = Split(tempstr, "=")
tempstr = a(1)
tempstr = Replace(tempstr, " ", "")
tempstr = Replace(tempstr, ";", "")
MainForm.NMScale.Text = tempstr
End If
End If
If linenum = 27 Then
If MainForm.NMcheck.Value = 1 Then
a() = Split(tempstr, "=")
tempstr = a(1)
tempstr = Replace(tempstr, " ", "")
tempstr = Replace(tempstr, ";", "")
MainForm.NMLoop.Text = tempstr
End If
End If
If linenum = 34 Then
 If Right(tempstr, 1) = 0 Then
 MainForm.SMpacheck.Value = 1
 End If
 If Right(tempstr, 1) = 1 Then
 MainForm.SMcheck.Value = 1
 End If
End If
If linenum = 39 Then
   If MainForm.SMcheck.Value = 1 Then
   a() = Split(tempstr, """")
   tempstr = a(1)
   MainForm.SMTex.Text = filepath & pathchangeback(tempstr)
   End If
End If
If linenum = 40 Then
   If MainForm.SMpacheck.Value = 1 Then
   a() = Split(tempstr, "=")
   tempstr = a(1)
   tempstr = Replace(tempstr, " ", "")
   tempstr = Replace(tempstr, ";", "")
   MainForm.SMpara.Text = tempstr
   End If
   If MainForm.SMcheck.Value = 1 Then
   a() = Split(tempstr, "=")
   tempstr = a(1)
   tempstr = Replace(tempstr, " ", "")
   tempstr = Replace(tempstr, ";", "")
   MainForm.SMscale.Text = tempstr
   End If
End If
If linenum = 41 Then
   If MainForm.SMcheck.Value = 1 Then
   a() = Split(tempstr, "=")
   tempstr = a(1)
   tempstr = Replace(tempstr, " ", "")
   tempstr = Replace(tempstr, ";", "")
   MainForm.SMloop.Text = tempstr
   End If
End If
If linenum = 42 Then
 If Right(tempstr, 1) = 0 Then
 MainForm.MEpacheck.Value = 1
 End If
 If Right(tempstr, 1) = 1 Then
 MainForm.MEcheck.Value = 1
 End If
End If
If linenum = 46 Then
If MainForm.MEcheck.Value = 1 Then
   a() = Split(tempstr, """")
   tempstr = a(1)
   MainForm.MEtex.Text = filepath & pathchangeback(tempstr)
End If
End If
If linenum = 47 Then
If MainForm.MEpacheck.Value = 1 Then
   a() = Split(tempstr, "=")
   tempstr = a(1)
   tempstr = Replace(tempstr, " ", "")
   tempstr = Replace(tempstr, ";", "")
   MainForm.MEpara.Text = tempstr
End If
If MainForm.MEcheck.Value = 1 Then
   a() = Split(tempstr, "=")
   tempstr = a(1)
   tempstr = Replace(tempstr, " ", "")
   tempstr = Replace(tempstr, ";", "")
   MainForm.MEscale.Text = tempstr
End If
End If
If linenum = 48 Then
 If MainForm.MEcheck.Value = 1 Then
 a() = Split(tempstr, "=")
 tempstr = a(1)
 tempstr = Replace(tempstr, " ", "")
 tempstr = Replace(tempstr, ";", "")
 MainForm.MEloop.Text = tempstr
 End If
End If
If linenum = 49 Then
  If Right(tempstr, 1) = 0 Then
 MainForm.SPCpacheck.Value = 1
 End If
 If Right(tempstr, 1) = 1 Then
 MainForm.SPCcheck.Value = 1
 End If
End If
If linenum = 54 Then
   If MainForm.SPCcheck.Value = 1 Then
   a() = Split(tempstr, """")
   tempstr = a(1)
   MainForm.SPCtex.Text = filepath & pathchangeback(tempstr)
   End If
End If
If linenum = 55 Then
   a() = Split(tempstr, "=")
   tempstr = a(1)
   tempstr = Replace(tempstr, " ", "")
   tempstr = Replace(tempstr, ";", "")
   If MainForm.SPCcheck.Value = 1 Then
   MainForm.SPCscale.Text = tempstr
   End If
   If MainForm.SPCpacheck.Value = 1 Then
   MainForm.SPCpara.Text = tempstr
   End If
End If
If linenum = 56 Then
   a() = Split(tempstr, "=")
   tempstr = a(1)
   tempstr = Replace(tempstr, " ", "")
   tempstr = Replace(tempstr, ";", "")
   If MainForm.SPCcheck.Value = 1 Then
   MainForm.SPCloop.Text = tempstr
   End If
End If
If linenum = 57 Then
   If Right(tempstr, 1) = 0 Then
 MainForm.OCCcheck.Value = 0
 End If
 If Right(tempstr, 1) = 1 Then
 MainForm.OCCcheck.Value = 1
 End If
End If
If linenum = 62 Then
If MainForm.OCCcheck.Value = 1 Then
   a() = Split(tempstr, """")
   tempstr = a(1)
   MainForm.OCCtex.Text = filepath & pathchangeback(tempstr)
   End If
End If
If linenum = 63 Then
   If MainForm.OCCcheck.Value = 1 Then
   a() = Split(tempstr, "=")
   tempstr = a(1)
   tempstr = Replace(tempstr, " ", "")
   tempstr = Replace(tempstr, ";", "")
   MainForm.OCCscale.Text = tempstr
   End If
End If
If linenum = 64 Then
   If MainForm.OCCcheck.Value = 1 Then
   a() = Split(tempstr, "=")
   tempstr = a(1)
   tempstr = Replace(tempstr, " ", "")
   tempstr = Replace(tempstr, ";", "")
   MainForm.OCCloop.Text = tempstr
   End If
End If
If linenum = 65 Then
 If Right(tempstr, 1) = 0 Then
 MainForm.PLcheck.Value = 0
 End If
 If Right(tempstr, 1) = 1 Then
 MainForm.PLcheck.Value = 1
 End If
End If
If linenum = 69 Then
If MainForm.OCCcheck.Value = 1 Then
   a() = Split(tempstr, """")
   tempstr = a(1)
   MainForm.PLtex.Text = filepath & pathchangeback(tempstr)
   End If
End If
If linenum = 70 Then
If MainForm.PLcheck.Value = 1 Then
   a() = Split(tempstr, "=")
   tempstr = a(1)
   tempstr = Replace(tempstr, " ", "")
   tempstr = Replace(tempstr, ";", "")
   MainForm.PLscale.Text = tempstr
   End If
End If
If linenum = 71 Then
If MainForm.PLcheck.Value = 1 Then
   a() = Split(tempstr, "=")
   tempstr = a(1)
   tempstr = Replace(tempstr, " ", "")
   tempstr = Replace(tempstr, ";", "")
   MainForm.PLloop.Text = tempstr
   End If
End If
If linenum = 72 Then
  If tempstr = "#define EMISSIVE_ENABLE 0" Then
  MainForm.EMnocheck.Value = 1
  Else
  MainForm.EMnocheck.Value = 0
  End If
End If
If linenum = 73 Then
  If MainForm.EMnocheck.Value = 0 Then
  If Right(tempstr, 1) = 0 Then
  MainForm.EMcolcheck.Value = 1
  End If
  If Right(tempstr, 1) = 1 Then
  MainForm.EMtexcheck.Value = 1
  End If
  End If
End If
If linenum = 79 Then
   If MainForm.EMtexcheck.Value = 1 Then
   a() = Split(tempstr, """")
   tempstr = a(1)
   MainForm.EMtex.Text = filepath & pathchangeback(tempstr)
   End If
End If
If linenum = 80 Then
   If MainForm.EMcolcheck.Value = 1 Then
   a() = Split(tempstr, "float3")
   If UBound(a) = 2 Then
   tempstr = a(2)
   tempstr = Replace(tempstr, ";", "")
   tempstr = Replace(tempstr, ")", "")
   tempstr = Replace(tempstr, "(", "")
   b() = Split(tempstr, ",")
   MainForm.EMcolorR.Text = b(0) * 255
   MainForm.EMcolorG.Text = b(1) * 255
   MainForm.EMcolorB.Text = b(2) * 255
   Else
   a() = Split(tempstr, "=")
   tempstr = Replace(a(1), ";", "")
   MainForm.EMcolorR.Text = tempstr * 255
   MainForm.EMcolorG.Text = tempstr * 255
   MainForm.EMcolorB.Text = tempstr * 255
   End If
   End If
End If
If linenum = 81 Then
   If MainForm.EMtexcheck.Value = 1 Then
   a() = Split(tempstr, "=")
   tempstr = a(1)
   tempstr = Replace(tempstr, " ", "")
   tempstr = Replace(tempstr, ";", "")
   MainForm.EMint.Text = tempstr
   End If
End If
linenum = linenum + 1
End If
Wend
Close #1
Dim flag As Integer
Dim k As Integer
flag = -1
For i = 1 To 100 Step 1
If TexP(i, 1) = MainForm.fxCombo.Text Then flag = i
Next i
If flag = -1 Then
TexP(TexNumber, 1) = MainForm.fxCombo.Text
If MainForm.Albedo_FC.Value = 1 Then k = 1
If MainForm.Albedo_TM.Value = 1 Then k = 2
If MainForm.Albedo_OM.Value = 1 Then k = 3
TexP(TexNumber, 2) = k
TexP(TexNumber, 3) = MainForm.AlbedoR
TexP(TexNumber, 4) = MainForm.AlbedoG
TexP(TexNumber, 5) = MainForm.AlbedoB
TexP(TexNumber, 6) = MainForm.AlbedoTex
TexP(TexNumber, 7) = MainForm.AlbedoScale
TexP(TexNumber, 8) = MainForm.NMcheck.Value
TexP(TexNumber, 9) = MainForm.NMtex.Text
TexP(TexNumber, 10) = MainForm.NMLoop
TexP(TexNumber, 11) = MainForm.NMScale
If MainForm.MEcheck.Value = 1 Then TexP(TexNumber, 12) = 1
If MainForm.MEpacheck.Value = 1 Then TexP(TexNumber, 12) = 2
TexP(TexNumber, 13) = MainForm.MEtex.Text
TexP(TexNumber, 14) = MainForm.MEloop.Text
TexP(TexNumber, 15) = MainForm.MEscale.Text
TexP(TexNumber, 16) = MainForm.MEpara.Text
TexP(TexNumber, 17) = MainForm.PLcheck.Value
TexP(TexNumber, 18) = MainForm.PLtex.Text
TexP(TexNumber, 19) = MainForm.PLloop.Text
TexP(TexNumber, 20) = MainForm.PLscale.Text
If MainForm.EMtexcheck.Value = 1 Then TexP(TexNumber, 21) = 1
If MainForm.EMcolcheck.Value = 1 Then TexP(TexNumber, 21) = 2
If MainForm.EMnocheck.Value = 1 Then TexP(TexNumber, 21) = 3
TexP(TexNumber, 22) = MainForm.EMtex.Text
TexP(TexNumber, 23) = MainForm.EMint.Text
TexP(TexNumber, 24) = MainForm.EMcolorR
TexP(TexNumber, 25) = MainForm.EMcolorG
TexP(TexNumber, 26) = MainForm.EMcolorB
If MainForm.SPCcheck.Value = 1 Then TexP(TexNumber, 27) = 1
If MainForm.SPCpacheck.Value = 1 Then TexP(TexNumber, 27) = 2
TexP(TexNumber, 28) = MainForm.SPCtex.Text
TexP(TexNumber, 29) = MainForm.SPCloop.Text
TexP(TexNumber, 30) = MainForm.SPCscale.Text
TexP(TexNumber, 31) = MainForm.SPCpara.Text
TexP(TexNumber, 32) = MainForm.ALcheck.Value
TexP(TexNumber, 33) = MainForm.alphaTex.Text
TexP(TexNumber, 34) = MainForm.alphaloop.Text
If MainForm.SMcheck.Value = 1 Then TexP(TexNumber, 35) = 1
If MainForm.SMpacheck.Value = 1 Then TexP(TexNumber, 35) = 2
TexP(TexNumber, 36) = MainForm.SMTex.Text
TexP(TexNumber, 37) = MainForm.SMloop.Text
TexP(TexNumber, 38) = MainForm.SMscale.Text
TexP(TexNumber, 39) = MainForm.SMpara.Text
TexP(TexNumber, 40) = MainForm.OCCcheck.Value
TexP(TexNumber, 41) = MainForm.OCCtex.Text
TexP(TexNumber, 42) = MainForm.OCCloop.Text
TexP(TexNumber, 43) = MainForm.OCCscale.Text
TexNumber = TexNumber + 1
Else
If MainForm.Albedo_FC.Value = 1 Then k = 1
If MainForm.Albedo_TM.Value = 1 Then k = 2
If MainForm.Albedo_OM.Value = 1 Then k = 3
TexP(flag, 2) = k
TexP(flag, 3) = MainForm.AlbedoR
TexP(flag, 4) = MainForm.AlbedoG
TexP(flag, 5) = MainForm.AlbedoB
TexP(flag, 6) = MainForm.AlbedoTex
TexP(flag, 7) = MainForm.AlbedoScale
TexP(flag, 8) = MainForm.NMcheck.Value
TexP(flag, 9) = MainForm.NMtex.Text
TexP(flag, 10) = MainForm.NMLoop
TexP(flag, 11) = MainForm.NMScale
If MainForm.MEcheck.Value = 1 Then TexP(flag, 12) = 1
If MainForm.MEpacheck.Value = 1 Then TexP(flag, 12) = 2
TexP(flag, 13) = MainForm.MEtex.Text
TexP(flag, 14) = MainForm.MEloop.Text
TexP(flag, 15) = MainForm.MEscale.Text
TexP(flag, 16) = MainForm.MEpara.Text
TexP(flag, 17) = MainForm.PLcheck.Value
TexP(flag, 18) = MainForm.PLtex.Text
TexP(flag, 19) = MainForm.PLloop.Text
TexP(flag, 20) = MainForm.PLscale.Text
If MainForm.EMtexcheck.Value = 1 Then TexP(flag, 21) = 1
If MainForm.EMcolcheck.Value = 1 Then TexP(flag, 21) = 2
If MainForm.EMnocheck.Value = 1 Then TexP(flag, 21) = 3
TexP(flag, 22) = MainForm.EMtex.Text
TexP(flag, 23) = MainForm.EMint.Text
TexP(flag, 24) = MainForm.EMcolorR
TexP(flag, 25) = MainForm.EMcolorG
TexP(flag, 26) = MainForm.EMcolorB
If MainForm.SPCcheck.Value = 1 Then TexP(flag, 27) = 1
If MainForm.SPCpacheck.Value = 1 Then TexP(flag, 27) = 2
TexP(flag, 28) = MainForm.SPCtex.Text
TexP(flag, 29) = MainForm.SPCloop.Text
TexP(flag, 30) = MainForm.SPCscale.Text
TexP(flag, 31) = MainForm.SPCpara.Text
TexP(flag, 32) = MainForm.ALcheck.Value
TexP(flag, 33) = MainForm.alphaTex.Text
TexP(flag, 34) = MainForm.alphaloop.Text
If MainForm.SMcheck.Value = 1 Then TexP(flag, 35) = 1
If MainForm.SMpacheck.Value = 1 Then TexP(flag, 35) = 2
TexP(flag, 36) = MainForm.SMTex.Text
TexP(flag, 37) = MainForm.SMloop.Text
TexP(flag, 38) = MainForm.SMscale.Text
TexP(flag, 39) = MainForm.SMpara.Text
TexP(flag, 40) = MainForm.OCCcheck.Value
TexP(flag, 41) = MainForm.OCCtex.Text
TexP(flag, 42) = MainForm.OCCloop.Text
End If
Unload ImportForm
End If
End Sub

Private Sub Text1_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, X As Single, Y As Single)
Text1.Text = Data.Files(1)
End Sub
