VERSION 5.00
Begin VB.Form NewForm 
   Caption         =   "�½�����"
   ClientHeight    =   1620
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   5160
   Icon            =   "NewForm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   1620
   ScaleWidth      =   5160
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command1 
      Caption         =   "ȷ��"
      Height          =   495
      Left            =   3240
      TabIndex        =   2
      Top             =   960
      Width           =   1575
   End
   Begin VB.TextBox NewName 
      BeginProperty Font 
         Name            =   "����"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   1200
      TabIndex        =   1
      Top             =   450
      Width           =   3015
   End
   Begin VB.Label Label1 
      Caption         =   "���ƣ�"
      BeginProperty Font 
         Name            =   "����"
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
Attribute VB_Name = "NewForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
MainForm.fxCombo.AddItem (NewName.Text)
MainForm.fxCombo.Text = NewName.Text
Unload NewForm
End Sub

