VERSION 5.00
Begin VB.Form AboutForm 
   Caption         =   "����"
   ClientHeight    =   1860
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6405
   Icon            =   "AboutForm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   1860
   ScaleWidth      =   6405
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command1 
      Caption         =   "�ر�"
      Height          =   375
      Left            =   360
      TabIndex        =   3
      Top             =   1320
      Width           =   1575
   End
   Begin VB.Label Label4 
      Caption         =   "�汾�ţ�0.0.1"
      Height          =   255
      Left            =   2520
      TabIndex        =   4
      Top             =   1440
      Width           =   1575
   End
   Begin VB.Label Label3 
      Caption         =   "��KarlvonDonitz����"
      Height          =   255
      Left            =   4320
      TabIndex        =   2
      Top             =   1440
      Width           =   1935
   End
   Begin VB.Label Label2 
      Caption         =   "��������Զ����ɶ�Ӧfx�����ֶ����ص���Ӧģ�Ͳ����ϡ�"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   480
      TabIndex        =   1
      Top             =   600
      Width           =   5535
   End
   Begin VB.Label Label1 
      Caption         =   "��������������ϣ����fx���ƣ����ȷ�����ɡ�"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   480
      TabIndex        =   0
      Top             =   120
      Width           =   5535
   End
End
Attribute VB_Name = "AboutForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload AboutForm
End Sub

