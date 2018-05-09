VERSION 5.00
Begin VB.Form MainForm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "自动化控制器"
   ClientHeight    =   2220
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   6480
   Icon            =   "MainForm.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2220
   ScaleWidth      =   6480
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton Command3 
      Caption         =   "确定"
      Height          =   495
      Left            =   240
      TabIndex        =   4
      Top             =   1560
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "关闭"
      Height          =   495
      Left            =   2520
      TabIndex        =   3
      Top             =   1560
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "帮助"
      Height          =   495
      Left            =   4560
      TabIndex        =   2
      Top             =   1560
      Width           =   1575
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
      Height          =   390
      Left            =   2400
      OLEDropMode     =   1  'Manual
      TabIndex        =   0
      Top             =   480
      Width           =   3375
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "请输入fx名称："
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   360
      TabIndex        =   1
      Top             =   600
      Width           =   1680
   End
End
Attribute VB_Name = "MainForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
AboutForm.Show
End Sub

Private Sub Command2_Click()
Unload MainForm
End Sub

Private Sub Command3_Click()
If Text1.Text <> "" Then
FilesName = Text1.Text
Unload MainForm
CoForm.Show
Else
k = MsgBox("请输入fx名称", vbOKOnly, "错误")
End If
End Sub


Private Sub Text1_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, X As Single, Y As Single)
Text1.Text = Data.Files(1)
End Sub
