VERSION 5.00
Begin VB.Form NewForm 
   Caption         =   "新建fx材质"
   ClientHeight    =   1935
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6735
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   1935
   ScaleWidth      =   6735
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton Command2 
      Caption         =   "关闭"
      Height          =   495
      Left            =   960
      TabIndex        =   3
      Top             =   1200
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "确定"
      Height          =   495
      Left            =   3960
      TabIndex        =   2
      Top             =   1200
      Width           =   1935
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
      Height          =   315
      Left            =   2400
      TabIndex        =   0
      Top             =   555
      Width           =   3735
   End
   Begin VB.Label Label1 
      Caption         =   "新fx材质名称："
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
      Left            =   720
      TabIndex        =   1
      Top             =   600
      Width           =   1815
   End
End
Attribute VB_Name = "NewForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
CoForm.Combo1.AddItem (Text1.Text & ".fx")
CoForm.NMcheck = 0
CoForm.ABCcheck = 0
CoForm.BCcheck = 0
CoForm.Rcolor.Text = 0
CoForm.Gcolor.Text = 0
CoForm.Bcolor.Text = 0
CoForm.TexText.Text = ""
CoForm.Text2.Text = "1"
CoForm.NMText.Text = ""
CoForm.NML.Text = "1"
CoForm.NMS.Text = "1"
CoForm.OutText.Text = ""
CoForm.Combo1.Text = Text1.Text & ".fx"
Unload NewForm
End Sub

Private Sub Command2_Click()
Unload NewForm
End Sub
