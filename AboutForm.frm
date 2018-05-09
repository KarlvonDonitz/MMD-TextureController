VERSION 5.00
Begin VB.Form AboutForm 
   Caption         =   "帮助"
   ClientHeight    =   1860
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6405
   Icon            =   "AboutForm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   1860
   ScaleWidth      =   6405
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton Command1 
      Caption         =   "关闭"
      Height          =   375
      Left            =   360
      TabIndex        =   3
      Top             =   1320
      Width           =   1575
   End
   Begin VB.Label Label4 
      Caption         =   "版本号：0.0.1"
      Height          =   255
      Left            =   2520
      TabIndex        =   4
      Top             =   1440
      Width           =   1575
   End
   Begin VB.Label Label3 
      Caption         =   "由KarlvonDonitz制作"
      Height          =   255
      Left            =   4320
      TabIndex        =   2
      Top             =   1440
      Width           =   1935
   End
   Begin VB.Label Label2 
      Caption         =   "本程序会自动生成对应fx，请手动加载到对应模型材质上。"
      BeginProperty Font 
         Name            =   "宋体"
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
      Caption         =   "在输入中输入你希望的fx名称，点击确定即可。"
      BeginProperty Font 
         Name            =   "宋体"
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

