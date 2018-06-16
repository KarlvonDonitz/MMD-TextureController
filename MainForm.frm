VERSION 5.00
Begin VB.Form MainForm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "MMD——fx控制器"
   ClientHeight    =   10635
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   16275
   Icon            =   "MainForm.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10635
   ScaleWidth      =   16275
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton Command6 
      Caption         =   "导出"
      Height          =   375
      Left            =   9120
      TabIndex        =   101
      Top             =   240
      Width           =   1095
   End
   Begin VB.TextBox Outputpath 
      Height          =   270
      Left            =   13320
      OLEDropMode     =   1  'Manual
      TabIndex        =   100
      Top             =   360
      Width           =   2895
   End
   Begin VB.TextBox AlbedoB 
      BackColor       =   &H8000000F&
      Enabled         =   0   'False
      Height          =   270
      Left            =   3120
      TabIndex        =   19
      Text            =   "0"
      Top             =   1920
      Width           =   495
   End
   Begin VB.TextBox AlbedoG 
      BackColor       =   &H8000000F&
      Enabled         =   0   'False
      Height          =   270
      Left            =   2040
      TabIndex        =   18
      Text            =   "0"
      Top             =   1920
      Width           =   495
   End
   Begin VB.Frame Frame11 
      Caption         =   "自发光"
      Height          =   3000
      Left            =   5640
      TabIndex        =   13
      Top             =   4200
      Width           =   5000
      Begin VB.CommandButton Command10 
         Caption         =   "显示图片"
         Height          =   375
         Left            =   3120
         TabIndex        =   105
         Top             =   1200
         Width           =   975
      End
      Begin VB.TextBox EMint 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   1080
         TabIndex        =   98
         Text            =   "0"
         Top             =   1200
         Width           =   855
      End
      Begin VB.TextBox EMcolorB 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   3480
         TabIndex        =   64
         Text            =   "0"
         Top             =   2160
         Width           =   615
      End
      Begin VB.TextBox EMcolorG 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   2160
         TabIndex        =   63
         Text            =   "0"
         Top             =   2160
         Width           =   615
      End
      Begin VB.TextBox EMcolorR 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   720
         TabIndex        =   62
         Text            =   "0"
         Top             =   2160
         Width           =   735
      End
      Begin VB.CheckBox EMnocheck 
         Caption         =   "不发光"
         Enabled         =   0   'False
         Height          =   225
         Left            =   240
         TabIndex        =   50
         Top             =   2640
         Value           =   1  'Checked
         Width           =   1695
      End
      Begin VB.CheckBox EMcolcheck 
         Caption         =   "固定颜色"
         Height          =   180
         Left            =   240
         TabIndex        =   49
         Top             =   1800
         Width           =   1095
      End
      Begin VB.TextBox EMtex 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   960
         OLEDropMode     =   1  'Manual
         TabIndex        =   48
         Top             =   840
         Width           =   3135
      End
      Begin VB.CheckBox EMtexcheck 
         Caption         =   "启用自发光贴图"
         Height          =   375
         Left            =   240
         TabIndex        =   30
         Top             =   360
         Width           =   1695
      End
      Begin VB.Label Label34 
         Caption         =   "强度："
         Height          =   255
         Left            =   600
         TabIndex        =   97
         Top             =   1200
         Width           =   855
      End
      Begin VB.Label EMcolor 
         Height          =   255
         Left            =   1440
         TabIndex        =   65
         Top             =   1800
         Visible         =   0   'False
         Width           =   3135
      End
      Begin VB.Label Label19 
         Caption         =   "蓝色"
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
         Left            =   3000
         TabIndex        =   61
         Top             =   2160
         Width           =   735
      End
      Begin VB.Label Label18 
         Caption         =   "绿色"
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
         Left            =   1680
         TabIndex        =   60
         Top             =   2160
         Width           =   735
      End
      Begin VB.Label Label17 
         Caption         =   "红色"
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
         Left            =   240
         TabIndex        =   59
         Top             =   2160
         Width           =   615
      End
      Begin VB.Label Label12 
         Caption         =   "路径："
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
         Left            =   360
         TabIndex        =   47
         Top             =   840
         Width           =   735
      End
   End
   Begin VB.Frame Frame10 
      Caption         =   "视差"
      Height          =   3000
      Left            =   240
      TabIndex        =   12
      Top             =   4200
      Width           =   5000
      Begin VB.CommandButton Command11 
         Caption         =   "显示图片"
         Height          =   375
         Left            =   3120
         TabIndex        =   106
         Top             =   1200
         Width           =   975
      End
      Begin VB.TextBox PLscale 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   840
         TabIndex        =   58
         Text            =   "0"
         Top             =   1680
         Width           =   1695
      End
      Begin VB.TextBox PLloop 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   840
         TabIndex        =   57
         Text            =   "0"
         Top             =   1200
         Width           =   1695
      End
      Begin VB.TextBox PLtex 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   840
         OLEDropMode     =   1  'Manual
         TabIndex        =   45
         Top             =   720
         Width           =   3375
      End
      Begin VB.CheckBox PLcheck 
         Caption         =   "启用视差贴图"
         Height          =   255
         Left            =   240
         TabIndex        =   29
         Top             =   360
         Width           =   1455
      End
      Begin VB.Label Label16 
         Caption         =   "强度："
         Height          =   255
         Left            =   240
         TabIndex        =   56
         Top             =   1680
         Width           =   975
      End
      Begin VB.Label Label15 
         Caption         =   "大小："
         Height          =   375
         Left            =   240
         TabIndex        =   55
         Top             =   1200
         Width           =   975
      End
      Begin VB.Label Label11 
         Caption         =   "路径："
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
         Left            =   240
         TabIndex        =   46
         Top             =   720
         Width           =   855
      End
   End
   Begin VB.Frame Frame9 
      Caption         =   "闭塞"
      Height          =   3000
      Left            =   11040
      TabIndex        =   11
      Top             =   7320
      Width           =   5000
      Begin VB.CommandButton Command14 
         Caption         =   "显示图片"
         Height          =   375
         Left            =   3120
         TabIndex        =   109
         Top             =   1200
         Width           =   975
      End
      Begin VB.TextBox OCCscale 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   1200
         TabIndex        =   92
         Text            =   "0"
         Top             =   1560
         Width           =   1575
      End
      Begin VB.TextBox OCCloop 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   1200
         TabIndex        =   91
         Text            =   "0"
         Top             =   1200
         Width           =   1575
      End
      Begin VB.TextBox OCCtex 
         BackColor       =   &H8000000F&
         Height          =   270
         Left            =   1080
         OLEDropMode     =   1  'Manual
         TabIndex        =   88
         Top             =   720
         Width           =   3015
      End
      Begin VB.CheckBox OCCcheck 
         Caption         =   "启用闭塞贴图"
         Height          =   375
         Left            =   240
         TabIndex        =   33
         Top             =   240
         Width           =   1695
      End
      Begin VB.Label Label31 
         Caption         =   "强度："
         Height          =   255
         Left            =   720
         TabIndex        =   90
         Top             =   1560
         Width           =   855
      End
      Begin VB.Label Label30 
         Caption         =   "大小："
         Height          =   255
         Left            =   720
         TabIndex        =   89
         Top             =   1200
         Width           =   735
      End
      Begin VB.Label Label29 
         Caption         =   "路径："
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
         TabIndex        =   87
         Top             =   720
         Width           =   855
      End
   End
   Begin VB.Frame Frame8 
      Caption         =   "高光"
      Height          =   3000
      Left            =   11040
      TabIndex        =   10
      Top             =   4200
      Width           =   5000
      Begin VB.CommandButton Command9 
         Caption         =   "显示图片"
         Height          =   375
         Left            =   3360
         TabIndex        =   104
         Top             =   1200
         Width           =   1095
      End
      Begin VB.TextBox SPCpara 
         Height          =   270
         Left            =   1200
         TabIndex        =   77
         Text            =   "0"
         Top             =   2520
         Width           =   1215
      End
      Begin VB.CheckBox SPCpacheck 
         Caption         =   "固定参数"
         Enabled         =   0   'False
         Height          =   255
         Left            =   240
         TabIndex        =   75
         Top             =   2040
         Value           =   1  'Checked
         Width           =   1215
      End
      Begin VB.TextBox SPCscale 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   1320
         TabIndex        =   74
         Text            =   "0"
         Top             =   1680
         Width           =   1695
      End
      Begin VB.TextBox SPCloop 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   1320
         TabIndex        =   73
         Text            =   "0"
         Top             =   1320
         Width           =   1695
      End
      Begin VB.TextBox SPCtex 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   1080
         OLEDropMode     =   1  'Manual
         TabIndex        =   66
         Top             =   840
         Width           =   3375
      End
      Begin VB.CheckBox SPCcheck 
         Caption         =   "启用高光贴图"
         Height          =   375
         Left            =   240
         TabIndex        =   31
         Top             =   360
         Width           =   1935
      End
      Begin VB.Label Label24 
         Caption         =   "强度："
         Height          =   255
         Left            =   720
         TabIndex        =   76
         Top             =   2520
         Width           =   735
      End
      Begin VB.Label Label23 
         Caption         =   "强度："
         Height          =   255
         Left            =   840
         TabIndex        =   72
         Top             =   1680
         Width           =   735
      End
      Begin VB.Label Label22 
         Caption         =   "大小："
         Height          =   255
         Left            =   840
         TabIndex        =   71
         Top             =   1320
         Width           =   615
      End
      Begin VB.Label Label21 
         Caption         =   "路径："
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
         TabIndex        =   70
         Top             =   840
         Width           =   735
      End
   End
   Begin VB.Frame Frame7 
      Caption         =   "金属度"
      Height          =   3000
      Left            =   11040
      TabIndex        =   9
      Top             =   1080
      Width           =   5000
      Begin VB.CommandButton Command8 
         Caption         =   "显示图片"
         Height          =   375
         Left            =   3000
         TabIndex        =   103
         Top             =   1200
         Width           =   1095
      End
      Begin VB.TextBox MEpara 
         Height          =   270
         Left            =   1080
         TabIndex        =   69
         Text            =   "0"
         Top             =   2400
         Width           =   1575
      End
      Begin VB.CheckBox MEpacheck 
         Caption         =   "固定参数"
         Enabled         =   0   'False
         Height          =   255
         Left            =   240
         TabIndex        =   67
         Top             =   2040
         Value           =   1  'Checked
         Width           =   1335
      End
      Begin VB.TextBox MEscale 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   1080
         TabIndex        =   54
         Text            =   "0"
         Top             =   1680
         Width           =   1335
      End
      Begin VB.TextBox MEloop 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   1080
         TabIndex        =   52
         Text            =   "0"
         Top             =   1320
         Width           =   1335
      End
      Begin VB.TextBox MEtex 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   840
         OLEDropMode     =   1  'Manual
         TabIndex        =   38
         Top             =   840
         Width           =   3255
      End
      Begin VB.CheckBox MEcheck 
         Caption         =   "启用金属度贴图"
         Height          =   375
         Left            =   240
         TabIndex        =   28
         Top             =   360
         Width           =   1695
      End
      Begin VB.Label Label20 
         Caption         =   "强度："
         Height          =   255
         Left            =   600
         TabIndex        =   68
         Top             =   2400
         Width           =   735
      End
      Begin VB.Label Label14 
         Caption         =   "强度："
         Height          =   255
         Left            =   600
         TabIndex        =   53
         Top             =   1680
         Width           =   1215
      End
      Begin VB.Label Label13 
         Caption         =   "大小："
         Height          =   255
         Left            =   600
         TabIndex        =   51
         Top             =   1320
         Width           =   735
      End
      Begin VB.Label Label7 
         Caption         =   "路径："
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
         Left            =   240
         TabIndex        =   37
         Top             =   840
         Width           =   1095
      End
   End
   Begin VB.Frame Frame6 
      Caption         =   "平滑度"
      Height          =   3000
      Left            =   5640
      TabIndex        =   8
      Top             =   7320
      Width           =   5000
      Begin VB.CommandButton Command13 
         Caption         =   "显示图片"
         Height          =   375
         Left            =   3120
         TabIndex        =   108
         Top             =   1200
         Width           =   975
      End
      Begin VB.TextBox SMpara 
         Height          =   270
         Left            =   1080
         TabIndex        =   86
         Text            =   "0"
         Top             =   2520
         Width           =   1095
      End
      Begin VB.CheckBox SMpacheck 
         Caption         =   "固定参数"
         Enabled         =   0   'False
         Height          =   255
         Left            =   240
         TabIndex        =   84
         Top             =   2040
         Value           =   1  'Checked
         Width           =   1095
      End
      Begin VB.TextBox SMscale 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   1320
         TabIndex        =   83
         Text            =   "0"
         Top             =   1560
         Width           =   1095
      End
      Begin VB.TextBox SMloop 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   1320
         TabIndex        =   82
         Text            =   "0"
         Top             =   1200
         Width           =   1095
      End
      Begin VB.TextBox SMTex 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   1080
         OLEDropMode     =   1  'Manual
         TabIndex        =   79
         Top             =   720
         Width           =   3135
      End
      Begin VB.CheckBox SMcheck 
         Caption         =   "启用平滑度贴图"
         Height          =   255
         Left            =   240
         TabIndex        =   32
         Top             =   360
         Width           =   1575
      End
      Begin VB.Label Label28 
         Caption         =   "强度："
         Height          =   255
         Left            =   600
         TabIndex        =   85
         Top             =   2520
         Width           =   735
      End
      Begin VB.Label Label27 
         Caption         =   "强度："
         Height          =   255
         Left            =   840
         TabIndex        =   81
         Top             =   1560
         Width           =   735
      End
      Begin VB.Label Label26 
         Caption         =   "大小："
         Height          =   255
         Left            =   840
         TabIndex        =   80
         Top             =   1200
         Width           =   615
      End
      Begin VB.Label Label25 
         Caption         =   "路径："
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
         TabIndex        =   78
         Top             =   720
         Width           =   735
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "透明度"
      Height          =   3000
      Left            =   240
      TabIndex        =   7
      Top             =   7320
      Width           =   5000
      Begin VB.CommandButton Command12 
         Caption         =   "显示图片"
         Height          =   375
         Left            =   3240
         TabIndex        =   107
         Top             =   1200
         Width           =   975
      End
      Begin VB.TextBox alphaloop 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   1320
         TabIndex        =   96
         Text            =   "0"
         Top             =   1080
         Width           =   1335
      End
      Begin VB.TextBox alphaTex 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   1080
         OLEDropMode     =   1  'Manual
         TabIndex        =   93
         Top             =   720
         Width           =   3255
      End
      Begin VB.CheckBox ALcheck 
         Caption         =   "启用透明度"
         Height          =   255
         Left            =   240
         TabIndex        =   34
         Top             =   360
         Width           =   1575
      End
      Begin VB.Label Label33 
         Caption         =   "大小："
         Height          =   255
         Left            =   840
         TabIndex        =   95
         Top             =   1080
         Width           =   735
      End
      Begin VB.Label Label32 
         Caption         =   "路径："
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
         TabIndex        =   94
         Top             =   720
         Width           =   975
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "法线"
      Height          =   3000
      Left            =   5640
      TabIndex        =   6
      Top             =   1080
      Width           =   5000
      Begin VB.CommandButton Command7 
         Caption         =   "显示图片"
         Height          =   375
         Left            =   3240
         TabIndex        =   102
         Top             =   1680
         Width           =   1095
      End
      Begin VB.TextBox NMScale 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   3240
         TabIndex        =   42
         Text            =   "0"
         Top             =   1320
         Width           =   975
      End
      Begin VB.TextBox NMLoop 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   1200
         TabIndex        =   41
         Text            =   "0"
         Top             =   1320
         Width           =   1095
      End
      Begin VB.TextBox NMtex 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   1200
         OLEDropMode     =   1  'Manual
         TabIndex        =   35
         Top             =   840
         Width           =   3015
      End
      Begin VB.CheckBox NMcheck 
         Caption         =   "启用法线贴图"
         Height          =   375
         Left            =   240
         TabIndex        =   27
         Top             =   360
         Width           =   1575
      End
      Begin VB.Label Label10 
         Caption         =   "强度："
         Height          =   255
         Left            =   2760
         TabIndex        =   44
         Top             =   1320
         Width           =   855
      End
      Begin VB.Label Label9 
         Caption         =   "大小："
         Height          =   255
         Left            =   720
         TabIndex        =   43
         Top             =   1320
         Width           =   735
      End
      Begin VB.Label Label6 
         Caption         =   "路径："
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
         Left            =   600
         TabIndex        =   36
         Top             =   840
         Width           =   855
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "基础颜色"
      Height          =   3000
      Left            =   240
      TabIndex        =   5
      Top             =   1080
      Width           =   5000
      Begin VB.TextBox AlbedoScale 
         Height          =   270
         Left            =   2880
         TabIndex        =   39
         Text            =   "0"
         Top             =   2520
         Width           =   1335
      End
      Begin VB.CommandButton Command4 
         Caption         =   "显示图片"
         Height          =   375
         Left            =   3600
         TabIndex        =   26
         Top             =   1800
         Width           =   1095
      End
      Begin VB.TextBox AlbedoTex 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   840
         OLEDropMode     =   1  'Manual
         TabIndex        =   24
         Top             =   1920
         Width           =   2655
      End
      Begin VB.TextBox AlbedoR 
         BackColor       =   &H8000000F&
         Enabled         =   0   'False
         Height          =   270
         Left            =   720
         TabIndex        =   17
         Text            =   "0"
         Top             =   840
         Width           =   495
      End
      Begin VB.CheckBox Albedo_OM 
         Caption         =   "启用原贴图"
         Enabled         =   0   'False
         Height          =   255
         Left            =   240
         TabIndex        =   16
         Top             =   2520
         Value           =   1  'Checked
         Width           =   1335
      End
      Begin VB.CheckBox Albedo_TM 
         Caption         =   "启用第二贴图"
         Height          =   375
         Left            =   240
         TabIndex        =   15
         Top             =   1320
         Width           =   1455
      End
      Begin VB.CheckBox Albedo_FC 
         Caption         =   "启用纯色"
         Height          =   375
         Left            =   240
         TabIndex        =   14
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label Label8 
         Caption         =   "大小："
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
         Left            =   2280
         TabIndex        =   40
         Top             =   2520
         Width           =   975
      End
      Begin VB.Label Label5 
         Caption         =   "路径："
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
         Left            =   240
         TabIndex        =   25
         Top             =   1920
         Width           =   855
      End
      Begin VB.Label AlbedoColor 
         BackColor       =   &H80000001&
         Height          =   735
         Left            =   3720
         TabIndex        =   23
         Top             =   360
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label Label4 
         Caption         =   "蓝色"
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
         Left            =   2400
         TabIndex        =   22
         Top             =   840
         Width           =   1695
      End
      Begin VB.Label Label3 
         Caption         =   "绿色"
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
         Left            =   1320
         TabIndex        =   21
         Top             =   840
         Width           =   735
      End
      Begin VB.Label Label2 
         Caption         =   "红色"
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
         Left            =   240
         TabIndex        =   20
         Top             =   840
         Width           =   615
      End
   End
   Begin VB.CommandButton Command3 
      Caption         =   "导入"
      Height          =   375
      Left            =   7920
      TabIndex        =   4
      Top             =   240
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "新建"
      Height          =   375
      Left            =   6720
      TabIndex        =   3
      Top             =   240
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "保存"
      Height          =   375
      Left            =   5640
      TabIndex        =   2
      Top             =   240
      Width           =   975
   End
   Begin VB.ComboBox fxCombo 
      Height          =   300
      Left            =   2520
      Style           =   2  'Dropdown List
      TabIndex        =   0
      Top             =   360
      Width           =   2775
   End
   Begin VB.Label Label36 
      Caption         =   "版本号:0.0.2         byKarlvonDonitz"
      Height          =   255
      Left            =   12720
      TabIndex        =   110
      Top             =   10320
      Width           =   3375
   End
   Begin VB.Label Label35 
      Caption         =   "导出路径："
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
      Left            =   12240
      TabIndex        =   99
      Top             =   360
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "当前正在编辑的材质是："
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
      Left            =   240
      TabIndex        =   1
      Top             =   360
      Width           =   2775
   End
End
Attribute VB_Name = "MainForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Function pathchange(path As String)
Dim a() As String
Dim done As String
If path <> "" Then
a() = Split(path, "\")
ub = UBound(a())
For i = 0 To ub - 1 Step 1
done = done & a(i) & "\\"
Next
done = done & a(ub)
pathchange = done
Else
pathchange = "albedo.png"
End If
End Function
Private Sub Albedo_FC_Click()
If Albedo_FC.Value = 1 Then
Albedo_TM.Value = 0
Albedo_OM.Value = 0
AlbedoColor.Visible = True
AlbedoColor.BackColor = RGB(Val(AlbedoR), Val(AlbedoG), Val(AlbedoB))
AlbedoTex.BackColor = &H8000000F
AlbedoTex.Enabled = False
AlbedoR.BackColor = RGB(255, 255, 255)
AlbedoR.Enabled = True
AlbedoG.BackColor = RGB(255, 255, 255)
AlbedoG.Enabled = True
AlbedoB.BackColor = RGB(255, 255, 255)
AlbedoB.Enabled = True
Albedo_FC.Enabled = False
Albedo_TM.Enabled = True
Albedo_OM.Enabled = True
AlbedoScale.Enabled = False
AlbedoScale.BackColor = &H8000000F
End If
End Sub

Private Sub Albedo_OM_Click()
If Albedo_OM.Value = 1 Then
AlbedoColor.Visible = False
Albedo_FC = 0
Albedo_TM = 0
AlbedoColor.BackColor = &H8000000F
Albedo_OM.Enabled = False
Albedo_FC.Enabled = True
Albedo_TM.Enabled = True
AlbedoR.Enabled = False
AlbedoG.Enabled = False
AlbedoB.Enabled = False
AlbedoR.BackColor = &H8000000F
AlbedoG.BackColor = &H8000000F
AlbedoB.BackColor = &H8000000F
AlbedoTex.BackColor = &H8000000F
AlbedoTex.Enabled = False
AlbedoScale.Enabled = True
AlbedoScale.BackColor = RGB(255, 255, 255)
End If
End Sub

Private Sub Albedo_TM_Click()
If Albedo_TM = 1 Then
AlbedoColor.Visible = False
Albedo_OM = 0
Albedo_FC = 0
AlbedoColor.BackColor = &H8000000F
AlbedoR.Enabled = False
AlbedoG.Enabled = False
AlbedoB.Enabled = False
AlbedoR.BackColor = &H8000000F
AlbedoG.BackColor = &H8000000F
AlbedoB.BackColor = &H8000000F
Albedo_OM.Enabled = True
Albedo_FC.Enabled = True
Albedo_TM.Enabled = False
AlbedoTex.Enabled = True
AlbedoTex.BackColor = RGB(255, 255, 255)
AlbedoScale.Enabled = True
AlbedoScale.BackColor = RGB(255, 255, 255)
End If
End Sub

Private Sub AlbedoB_Change()
AlbedoB.Text = Val(AlbedoB.Text)
If AlbedoB > 255 Then
AlbedoB = 255
End If
If AlbedoB < 0 Then
AlbedoB = 0
End If
AlbedoColor.BackColor = RGB(Val(AlbedoR), Val(AlbedoG), Val(AlbedoB))
End Sub

Private Sub AlbedoG_Change()
AlbedoG.Text = Val(AlbedoG.Text)
If AlbedoG > 255 Then
AlbedoG = 255
End If
If AlbedoG < 0 Then
AlbedoG = 0
End If
AlbedoColor.BackColor = RGB(Val(AlbedoR), Val(AlbedoG), Val(AlbedoB))
End Sub

Private Sub AlbedoR_Change()
AlbedoR.Text = Val(AlbedoR.Text)
If AlbedoR > 255 Then
AlbedoR = 255
End If
If AlbedoR < 0 Then
AlbedoR = 0
End If
AlbedoColor.BackColor = RGB(Val(AlbedoR), Val(AlbedoG), Val(AlbedoB))
End Sub

Private Sub AlbedoScale_Change()
AlbedoScale.Text = Val(AlbedoScale.Text)
End Sub

Private Sub AlbedoTex_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, X As Single, Y As Single)
AlbedoTex.Text = Data.Files(1)
End Sub

Private Sub ALcheck_Click()
If ALcheck.Value = 1 Then
alphaTex.BackColor = &H80000005
alphaloop.BackColor = &H80000005
alphaTex.Enabled = True
alphaloop.Enabled = True
Else
alphaTex.BackColor = &H8000000F
alphaloop.BackColor = &H8000000F
alphaTex.Enabled = False
alphaloop.Enabled = False
End If
End Sub

Private Sub alphaloop_Change()
alphaloop = Val(alphaloop)
End Sub

Private Sub alphaTex_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, X As Single, Y As Single)
alphaTex.Text = Data.Files(1)
End Sub

Private Sub Command1_Click()
Dim flag As Integer
Dim k As Integer
flag = -1
For i = 1 To 100 Step 1
If TexP(i, 1) = fxCombo.Text Then flag = i
Next i
If flag = -1 Then
TexP(TexNumber, 1) = fxCombo.Text
If Albedo_FC.Value = 1 Then k = 1
If Albedo_TM.Value = 1 Then k = 2
If Albedo_OM.Value = 1 Then k = 3
TexP(TexNumber, 2) = k
TexP(TexNumber, 3) = AlbedoR
TexP(TexNumber, 4) = AlbedoG
TexP(TexNumber, 5) = AlbedoB
TexP(TexNumber, 6) = AlbedoTex
TexP(TexNumber, 7) = AlbedoScale
TexP(TexNumber, 8) = NMcheck.Value
TexP(TexNumber, 9) = NMtex.Text
TexP(TexNumber, 10) = NMLoop
TexP(TexNumber, 11) = NMScale
If MEcheck.Value = 1 Then TexP(TexNumber, 12) = 1
If MEpacheck.Value = 1 Then TexP(TexNumber, 12) = 2
TexP(TexNumber, 13) = MEtex.Text
TexP(TexNumber, 14) = MEloop.Text
TexP(TexNumber, 15) = MEscale.Text
TexP(TexNumber, 16) = MEpara.Text
TexP(TexNumber, 17) = PLcheck.Value
TexP(TexNumber, 18) = PLtex.Text
TexP(TexNumber, 19) = PLloop.Text
TexP(TexNumber, 20) = PLscale.Text
If EMtexcheck.Value = 1 Then TexP(TexNumber, 21) = 1
If EMcolcheck.Value = 1 Then TexP(TexNumber, 21) = 2
If EMnocheck.Value = 1 Then TexP(TexNumber, 21) = 3
TexP(TexNumber, 22) = EMtex.Text
TexP(TexNumber, 23) = EMint.Text
TexP(TexNumber, 24) = EMcolorR
TexP(TexNumber, 25) = EMcolorG
TexP(TexNumber, 26) = EMcolorB
If SPCcheck.Value = 1 Then TexP(TexNumber, 27) = 1
If SPCpacheck.Value = 1 Then TexP(TexNumber, 27) = 2
TexP(TexNumber, 28) = SPCtex.Text
TexP(TexNumber, 29) = SPCloop.Text
TexP(TexNumber, 30) = SPCscale.Text
TexP(TexNumber, 31) = SPCpara.Text
TexP(TexNumber, 32) = ALcheck.Value
TexP(TexNumber, 33) = alphaTex.Text
TexP(TexNumber, 34) = alphaloop.Text
If SMcheck.Value = 1 Then TexP(TexNumber, 35) = 1
If SMpacheck.Value = 1 Then TexP(TexNumber, 35) = 2
TexP(TexNumber, 36) = SMTex.Text
TexP(TexNumber, 37) = SMloop.Text
TexP(TexNumber, 38) = SMscale.Text
TexP(TexNumber, 39) = SMpara.Text
TexP(TexNumber, 40) = OCCcheck.Value
TexP(TexNumber, 41) = OCCtex.Text
TexP(TexNumber, 42) = OCCloop.Text
TexP(TexNumber, 43) = OCCscale.Text
TexNumber = TexNumber + 1
Else
If Albedo_FC.Value = 1 Then k = 1
If Albedo_TM.Value = 1 Then k = 2
If Albedo_OM.Value = 1 Then k = 3
TexP(flag, 2) = k
TexP(flag, 3) = AlbedoR
TexP(flag, 4) = AlbedoG
TexP(flag, 5) = AlbedoB
TexP(flag, 6) = AlbedoTex
TexP(flag, 7) = AlbedoScale
TexP(flag, 8) = NMcheck.Value
TexP(flag, 9) = NMtex.Text
TexP(flag, 10) = NMLoop
TexP(flag, 11) = NMScale
If MEcheck.Value = 1 Then TexP(flag, 12) = 1
If MEpacheck.Value = 1 Then TexP(flag, 12) = 2
TexP(flag, 13) = MEtex.Text
TexP(flag, 14) = MEloop.Text
TexP(flag, 15) = MEscale.Text
TexP(flag, 16) = MEpara.Text
TexP(flag, 17) = PLcheck.Value
TexP(flag, 18) = PLtex.Text
TexP(flag, 19) = PLloop.Text
TexP(flag, 20) = PLscale.Text
If EMtexcheck.Value = 1 Then TexP(flag, 21) = 1
If EMcolcheck.Value = 1 Then TexP(flag, 21) = 2
If EMnocheck.Value = 1 Then TexP(flag, 21) = 3
TexP(flag, 22) = EMtex.Text
TexP(flag, 23) = EMint.Text
TexP(flag, 24) = EMcolorR
TexP(flag, 25) = EMcolorG
TexP(flag, 26) = EMcolorB
If SPCcheck.Value = 1 Then TexP(flag, 27) = 1
If SPCpacheck.Value = 1 Then TexP(flag, 27) = 2
TexP(flag, 28) = SPCtex.Text
TexP(flag, 29) = SPCloop.Text
TexP(flag, 30) = SPCscale.Text
TexP(flag, 31) = SPCpara.Text
TexP(flag, 32) = ALcheck.Value
TexP(flag, 33) = alphaTex.Text
TexP(flag, 34) = alphaloop.Text
If SMcheck.Value = 1 Then TexP(flag, 35) = 1
If SMpacheck.Value = 1 Then TexP(flag, 35) = 2
TexP(flag, 36) = SMTex.Text
TexP(flag, 37) = SMloop.Text
TexP(flag, 38) = SMscale.Text
TexP(flag, 39) = SMpara.Text
TexP(flag, 40) = OCCcheck.Value
TexP(flag, 41) = OCCtex.Text
TexP(flag, 42) = OCCloop.Text
TexP(flag, 43) = OCCscale.Text
End If
End Sub

Private Sub Command10_Click()
Dim file As String
file = EMtex.Text
ShellExecute Me.hwnd, "open", file, file, vbNull, 3
End Sub

Private Sub Command11_Click()
Dim file As String
file = PLtex.Text
ShellExecute Me.hwnd, "open", file, file, vbNull, 3
End Sub

Private Sub Command12_Click()
Dim file As String
file = alphaTex.Text
ShellExecute Me.hwnd, "open", file, file, vbNull, 3
End Sub

Private Sub Command13_Click()
Dim file As String
file = SMTex.Text
ShellExecute Me.hwnd, "open", file, file, vbNull, 3
End Sub

Private Sub Command14_Click()
Dim file As String
file = OCCtex.Text
ShellExecute Me.hwnd, "open", file, file, vbNull, 3
End Sub

Private Sub Command2_Click()
NewForm.Show
End Sub

Private Sub Command3_Click()
ImportForm.Show
End Sub

Private Sub Command4_Click()
Dim file As String
file = AlbedoTex.Text
ShellExecute Me.hwnd, "open", file, file, vbNull, 3
End Sub

Private Sub Command5_Click()
Dim file
file = "E:\1.jpg"
ShellExecute Me.hwnd, "open", file, file, vbNull, 3
End Sub

Private Sub Command6_Click()
If Outputpath.Text <> "" And fxCombo <> "" Then
Open Outputpath & "\" & fxCombo.Text & ".fx" For Output As #1
If Albedo_FC.Value = 1 Then Print #1, " #define ALBEDO_MAP_FROM 0 "
If Albedo_TM.Value = 1 Then Print #1, " #define ALBEDO_MAP_FROM 1 "
If Albedo_OM.Value = 1 Then Print #1, " #define ALBEDO_MAP_FROM 3 "
Print #1, "#define ALBEDO_MAP_UV_FLIP 0"
Print #1, " #define ALBEDO_MAP_APPLY_SCALE 0"
Print #1, " #define ALBEDO_MAP_APPLY_DIFFUSE 1"
Print #1, " #define ALBEDO_MAP_APPLY_MORPH_COLOR 0"
Print #1, " #define ALBEDO_MAP_FILE """ & pathchange(AlbedoTex.Text) & """"
Print #1, " const float3 albedo = float3(" & AlbedoR.Text / 255 & "," & AlbedoG.Text / 255 & "," & AlbedoB.Text / 255 & ");"
Print #1, "const float albedoMapLoopNum = " & AlbedoScale.Text & ";"
Print #1, " #define ALBEDO_SUB_ENABLE 0"
Print #1, " #define ALBEDO_SUB_MAP_FROM 0"
Print #1, " #define ALBEDO_SUB_MAP_UV_FLIP 0"
Print #1, " #define ALBEDO_SUB_MAP_APPLY_SCALE 0"
Print #1, " #define ALBEDO_SUB_MAP_FILE ""albedo.png"""
Print #1, " const float3 albedoSub = 1.0;"
Print #1, " const float2 albedoSubMapLoopNum = 1.0;"
If ALcheck.Value = 0 Then Print #1, " #define ALPHA_MAP_FROM 3"
If ALcheck.Value = 1 Then Print #1, " #define ALPHA_MAP_FROM 1"
Print #1, " #define ALPHA_MAP_UV_FLIP 0"
Print #1, " #define ALPHA_MAP_SWIZZLE 3"
Print #1, " #define ALPHA_MAP_FILE """ & pathchange(alphaTex.Text) & """"
Print #1, " const float alpha = 1.0;"
Print #1, " const float alphaMapLoopNum = " & alphaloop.Text & ";"
If NMcheck.Value = 0 Then Print #1, " #define NORMAL_MAP_FROM 0"
If NMcheck.Value = 1 Then Print #1, " #define NORMAL_MAP_FROM 1"
Print #1, " #define NORMAL_MAP_TYPE 0"
Print #1, " #define NORMAL_MAP_UV_FLIP 0"
Print #1, " #define NORMAL_MAP_FILE """ & pathchange(NMtex.Text) & """"
Print #1, " const float normalMapScale = " & NMScale.Text & ";"
Print #1, " const float normalMapLoopNum = " & NMLoop.Text & ";"
Print #1, " #define NORMAL_SUB_MAP_FROM 0"
Print #1, " #define NORMAL_SUB_MAP_TYPE 0"
Print #1, " #define NORMAL_SUB_MAP_UV_FLIP 0"
Print #1, " #define NORMAL_SUB_MAP_FILE ""normal.png"""
Print #1, " const float normalSubMapScale = 1.0;"
Print #1, " const float normalSubMapLoopNum = 1.0;"
If SMpacheck.Value = 1 Then Print #1, " #define SMOOTHNESS_MAP_FROM 0"
If SMcheck.Value = 1 Then Print #1, " #define SMOOTHNESS_MAP_FROM 1"
Print #1, " #define SMOOTHNESS_MAP_TYPE 0"
Print #1, " #define SMOOTHNESS_MAP_UV_FLIP 0"
Print #1, " #define SMOOTHNESS_MAP_SWIZZLE 0"
Print #1, " #define SMOOTHNESS_MAP_APPLY_SCALE 0"
Print #1, " #define SMOOTHNESS_MAP_FILE """ & pathchange(SMTex.Text) & """"
If SMpacheck.Value = 1 Then Print #1, " const float smoothness = " & SMpara.Text & ";"
If SMcheck.Value = 1 Then Print #1, " const float smoothness = " & SMscale.Text & ";"
Print #1, " const float smoothnessMapLoopNum = " & SMloop.Text & ";"
If MEpacheck.Value = 1 Then Print #1, " #define METALNESS_MAP_FROM 0"
If MEcheck.Value = 1 Then Print #1, " #define METALNESS_MAP_FROM 1"
Print #1, " #define METALNESS_MAP_UV_FLIP 0"
Print #1, " #define METALNESS_MAP_SWIZZLE 0"
Print #1, " #define METALNESS_MAP_APPLY_SCALE 0"
Print #1, " #define METALNESS_MAP_FILE """ & pathchange(MEtex.Text) & """"
If MEpacheck.Value = 1 Then Print #1, " const float metalness = " & MEpara.Text & ";"
If MEcheck.Value = 1 Then Print #1, " const float metalness = " & MEscale.Text & ";"
Print #1, " const float metalnessMapLoopNum = " & MEloop.Text & ";"
If SPCpacheck.Value = 1 Then Print #1, " #define SPECULAR_MAP_FROM 0"
If SPCcheck.Value = 1 Then Print #1, " #define SPECULAR_MAP_FROM 1"
Print #1, " #define SPECULAR_MAP_TYPE 0"
Print #1, " #define SPECULAR_MAP_UV_FLIP 0"
Print #1, " #define SPECULAR_MAP_SWIZZLE 0"
Print #1, " #define SPECULAR_MAP_APPLY_SCALE 0"
Print #1, " #define SPECULAR_MAP_FILE """ & pathchange(SPCtex.Text) & """"
If SPCpacheck.Value = 1 Then Print #1, " const float3 specular = " & SPCpara.Text & ";"
If SPCcheck.Value = 1 Then Print #1, " const float3 specular = " & SPCscale.Text & ";"
Print #1, " const float2 specularMapLoopNum = " & SPCloop.Text & "1.0;"
If OCCcheck.Value = 0 Then Print #1, " #define OCCLUSION_MAP_FROM 0"
If OCCcheck.Value = 1 Then Print #1, " #define OCCLUSION_MAP_FROM 1"
Print #1, " #define OCCLUSION_MAP_TYPE 0"
Print #1, " #define OCCLUSION_MAP_UV_FLIP 0"
Print #1, " #define OCCLUSION_MAP_SWIZZLE 0"
Print #1, " #define OCCLUSION_MAP_APPLY_SCALE 0 "
Print #1, " #define OCCLUSION_MAP_FILE """ & pathchange(OCCtex.Text) & """"
Print #1, " const float occlusion = " & OCCscale.Text & ";"
Print #1, " const float occlusionMapLoopNum = " & OCCloop.Text & ";"
If PLcheck.Value = 0 Then Print #1, " #define PARALLAX_MAP_FROM 0"
If PLcheck.Value = 1 Then Print #1, " #define PARALLAX_MAP_FROM 1"
Print #1, " #define PARALLAX_MAP_TYPE 0"
Print #1, " #define PARALLAX_MAP_UV_FLIP 0"
Print #1, " #define PARALLAX_MAP_SWIZZLE 0"
Print #1, " #define PARALLAX_MAP_FILE """ & pathchange(PLtex.Text) & """"
Print #1, " const float parallaxMapScale = " & PLscale.Text & ";"
Print #1, " const float parallaxMapLoopNum = " & PLloop.Text & ";"
If EMcolcheck.Value = 1 Or EMtexcheck.Value = 1 Then Print #1, " #define EMISSIVE_ENABLE 1"
If EMnocheck.Value = 1 Then Print #1, " #define EMISSIVE_ENABLE 0"
If EMcolcheck.Value = 1 Then Print #1, " #define EMISSIVE_MAP_FROM 0"
If EMtexcheck.Value = 1 Then Print #1, " #define EMISSIVE_MAP_FROM 1"
Print #1, " #define EMISSIVE_MAP_UV_FLIP 0"
Print #1, " #define EMISSIVE_MAP_APPLY_SCALE 0"
Print #1, " #define EMISSIVE_MAP_APPLY_MORPH_COLOR 0"
Print #1, " #define EMISSIVE_MAP_APPLY_MORPH_INTENSITY 0"
Print #1, " #define EMISSIVE_MAP_APPLY_BLINK 0"
Print #1, " #define EMISSIVE_MAP_FILE """ & pathchange(EMtex.Text) & """"
If EMcolcheck.Value = 1 Then Print #1, " const float3 emissive =  float3(" & EMcolorR.Text / 255 & "," & EMcolorG.Text / 255 & "," & EMcolorB.Text / 255 & ");"
Print #1, " const float3 emissiveBlink = 1.0;"
Print #1, " const float  emissiveIntensity = " & EMint.Text; ";"
Print #1, " const float2 emissiveMapLoopNum = 1.0;"
Print #1, " #define CUSTOM_ENABLE 0"
Print #1, " #define CUSTOM_A_MAP_FROM 0"
Print #1, " #define CUSTOM_A_MAP_UV_FLIP 0"
Print #1, " #define CUSTOM_A_MAP_COLOR_FLIP 0"
Print #1, " #define CUSTOM_A_MAP_SWIZZLE 0"
Print #1, " #define CUSTOM_A_MAP_APPLY_SCALE 0"
Print #1, " #define CUSTOM_A_MAP_FILE ""custom.png"""
Print #1, " const float customA = 0.0;"
Print #1, " const float customAMapLoopNum = 1.0;"
Print #1, " #define CUSTOM_B_MAP_FROM 0"
Print #1, " #define CUSTOM_B_MAP_UV_FLIP 0"
Print #1, " #define CUSTOM_B_MAP_COLOR_FLIP 0"
Print #1, " #define CUSTOM_B_MAP_APPLY_SCALE 0"
Print #1, " #define CUSTOM_B_MAP_FILE ""custom.png"""
Print #1, " const float3 customB = 0.0;"
Print #1, " const float2 customBMapLoopNum = 1.0;"
Print #1, " #include ""material_common_2.0.fxsub"""
Close #1
Else
k = MsgBox("输出位置有误", , "错误")
End If
End Sub

Private Sub Command7_Click()
Dim file As String
file = NMtex.Text
ShellExecute Me.hwnd, "open", file, file, vbNull, 3
End Sub

Private Sub Command8_Click()
Dim file As String
file = MEtex.Text
ShellExecute Me.hwnd, "open", file, file, vbNull, 3
End Sub

Private Sub Command9_Click()
Dim file As String
file = SPCtex.Text
ShellExecute Me.hwnd, "open", file, file, vbNull, 3
End Sub

Private Sub EMcolcheck_Click()
If EMcolcheck.Value = 1 Then
EMnocheck.Value = 0
EMtexcheck.Value = 0
EMcolcheck.Enabled = False
EMcolorR.Enabled = True
EMcolorR.BackColor = &H80000005
EMcolorG.Enabled = True
EMcolorG.BackColor = &H80000005
EMcolorB.Enabled = True
EMcolorB.BackColor = &H80000005
EMtexcheck.Enabled = True
EMtexcheck.Value = 0
EMtex.BackColor = &H8000000F
EMnocheck.Value = 0
EMnocheck.Enabled = True
EMcolor.Visible = True
EMcolor.BackColor = RGB(EMcolorR, EMcolorG, EMcolorB)
EMint.BackColor = &H8000000F
EMint.Enabled = False
End If
End Sub

Private Sub EMcolorB_Change()
EMcolorB = Val(EMcolorB)
If EMcolorB > 255 Then
EMcolorB = 255
End If
If EMcolorB < 0 Then
EMcolorB = 0
End If
EMcolor.BackColor = RGB(EMcolorR, EMcolorG, EMcolorB)
End Sub

Private Sub EMcolorG_Change()
EMcolorG = Val(EMcolorG)
If EMcolorG > 255 Then
EMcolorG = 255
End If
If EMcolorG < 0 Then
EMcolorG = 0
End If
EMcolor.BackColor = RGB(EMcolorR, EMcolorG, EMcolorB)
End Sub

Private Sub EMcolorR_Change()
EMcolorR = Val(EMcolorR)
If EMcolorR > 255 Then
EMcolorR = 255
End If
If EMcolorR < 0 Then
EMcolorR = 0
End If
EMcolor.BackColor = RGB(EMcolorR, EMcolorG, EMcolorB)
End Sub

Private Sub EMint_Change()
EMint = Val(EMint)
End Sub

Private Sub EMnocheck_Click()
If EMnocheck.Value = 1 Then
EMnocheck.Enabled = False
EMcolcheck.Value = 0
EMtexcheck.Value = 0
EMcolcheck.Enabled = True
EMtexcheck.Enabled = True
EMtex.Enabled = False
EMtex.BackColor = &H8000000F
EMcolorR.BackColor = &H8000000F
EMcolorR.Enabled = False
EMcolorG.BackColor = &H8000000F
EMcolorG.Enabled = False
EMcolorB.BackColor = &H8000000F
EMcolorB.Enabled = False
EMcolor.Visible = False
EMint.BackColor = &H8000000F
EMint.Enabled = False
End If
End Sub

Private Sub EMtex_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, X As Single, Y As Single)
EMtex.Text = Data.Files(1)
End Sub

Private Sub EMtexcheck_Click()
If EMtexcheck.Value = 1 Then
EMnocheck.Value = 0
EMcolcheck.Value = 0
EMtexcheck.Enabled = False
EMnocheck.Enabled = True
EMcolcheck.Enabled = True
EMtex.BackColor = &H80000005
EMtex.Enabled = True
EMcolorR.BackColor = &H8000000F
EMcolorR.Enabled = False
EMcolorG.BackColor = &H8000000F
EMcolorG.Enabled = False
EMcolorB.BackColor = &H8000000F
EMcolorB.Enabled = False
EMcolor.Visible = False
EMint.BackColor = &H80000005
EMint.Enabled = True
End If
End Sub



Private Sub Form_Load()
num = 0
End Sub

Private Sub fxCombo_Click()
For k = 0 To 100 Step 1
 If TexP(k, 1) = fxCombo.Text Then
 If TexP(k, 2) = 1 Then Albedo_FC.Value = 1
 If TexP(k, 2) = 2 Then Albedo_TM.Value = 1
 If TexP(k, 2) = 3 Then Albedo_OM.Value = 1
 AlbedoR = TexP(k, 3)
 AlbedoG = TexP(k, 4)
 AlbedoB = TexP(k, 5)
 AlbedoTex = TexP(k, 6)
 AlbedoScale = TexP(k, 7)
 NMcheck.Value = TexP(k, 8)
 NMtex.Text = TexP(k, 9)
 NMLoop = TexP(k, 10)
 NMScale = TexP(k, 11)
If TexP(k, 12) = 1 Then MEcheck.Value = 1
If TexP(k, 12) = 2 Then MEpacheck.Value = 1
MEtex.Text = TexP(k, 13)
 MEloop.Text = TexP(k, 14)
 MEscale.Text = TexP(k, 15)
 MEpara.Text = TexP(k, 16)
 PLcheck.Value = TexP(k, 17)
 PLtex.Text = TexP(k, 18)
PLloop.Text = TexP(k, 19)
PLscale.Text = TexP(k, 20)
If TexP(k, 21) = 1 Then EMtexcheck.Value = 1
If TexP(k, 21) = 2 Then EMcolcheck.Value = 1
If TexP(k, 21) = 3 Then EMnocheck.Value = 1
 EMtex.Text = TexP(k, 22)
EMint.Text = TexP(k, 23)
EMcolorR = TexP(k, 24)
EMcolorG = TexP(k, 25)
EMcolorB = TexP(k, 26)
If TexP(k, 27) = 1 Then SPCcheck.Value = 1
If TexP(k, 27) = 2 Then SPCpacheck.Value = 1
 SPCtex.Text = TexP(k, 28)
 SPCloop.Text = TexP(k, 29)
SPCscale.Text = TexP(k, 30)
 SPCpara.Text = TexP(k, 31)
ALcheck.Value = TexP(k, 32)
alphaTex.Text = TexP(k, 33)
 alphaloop.Text = TexP(k, 34)
If TexP(k, 35) = 1 Then SMcheck.Value = 1
If TexP(k, 35) = 2 Then SMpacheck.Value = 1
SMTex.Text = TexP(k, 36)
SMloop.Text = TexP(k, 37)
SMscale.Text = TexP(k, 38)
SMpara.Text = TexP(k, 39)
 OCCcheck.Value = TexP(k, 40)
OCCtex.Text = TexP(k, 41)
OCCloop.Text = TexP(k, 42)
OCCscale.Text = TexP(k, 43)
End If
Next k
End Sub

Private Sub MEcheck_Click()
If MEcheck.Value = 1 Then
MEpacheck.Value = 0
MEtex.Enabled = True
MEloop.Enabled = True
MEscale.Enabled = True
MEtex.BackColor = &H80000005
MEloop.BackColor = &H80000005
MEscale.BackColor = &H80000005
MEpacheck.Value = 0
MEcheck.Enabled = False
MEpacheck.Enabled = True
MEpara.BackColor = &H8000000F
MEpara.Enabled = False
End If
End Sub

Private Sub MEloop_Change()
MEloop = Val(MEloop)
End Sub

Private Sub MEpacheck_Click()
If MEpacheck.Value = 1 Then
MEpacheck.Enabled = False
MEcheck.Value = 0
MEcheck.Enabled = True
MEpara.Enabled = True
MEpara.BackColor = &H80000005
MEtex.Enabled = False
MEloop.Enabled = False
MEscale.Enabled = False
MEtex.BackColor = &H8000000F
MEloop.BackColor = &H8000000F
MEscale.BackColor = &H8000000F
End If
End Sub

Private Sub MEpara_Change()
MEpara = Val(MEpara)
End Sub

Private Sub MEscale_Change()
SMscale = Val(MEscale)
End Sub

Private Sub MEtex_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, X As Single, Y As Single)
MEtex.Text = Data.Files(1)
End Sub

Private Sub NMcheck_Click()
If NMcheck.Value = 1 Then
NMtex.Enabled = True
NMLoop.Enabled = True
NMScale.Enabled = True
NMtex.BackColor = &H80000005
NMLoop.BackColor = &H80000005
NMScale.BackColor = &H80000005
Else
NMtex.Enabled = False
NMLoop.Enabled = False
NMScale.Enabled = False
NMtex.BackColor = &H8000000F
NMLoop.BackColor = &H8000000F
NMScale.BackColor = &H8000000F
End If
End Sub

Private Sub NMLoop_Change()
NMLoop = Val(NMLoop)
End Sub

Private Sub NMScale_Change()
NMScale = Val(NMScale)
End Sub

Private Sub NMtex_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, X As Single, Y As Single)
NMtex.Text = Data.Files(1)
End Sub

Private Sub OCCcheck_Click()
If OCCcheck.Value = 1 Then
OCCtex.BackColor = &H80000005
OCCloop.BackColor = &H80000005
OCCscale.BackColor = &H80000005
OCCtex.Enabled = True
OCCloop.Enabled = True
OCCscale.Enabled = True
Else
OCCtex.BackColor = &H8000000F
OCCloop.BackColor = &H8000000F
OCCscale.BackColor = &H8000000F
OCCtex.Enabled = False
OCCloop.Enabled = False
OCCscale.Enabled = False
End If
End Sub

Private Sub OCCloop_Change()
OCCloop = Val(OCCloop)
End Sub

Private Sub OCCscale_Change()
OCCscale = Val(OCCscale)
End Sub

Private Sub OCCtex_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, X As Single, Y As Single)
OCCtex.Text = Data.Files(1)
End Sub

Private Sub Outputpath_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, X As Single, Y As Single)
Outputpath.Text = Data.Files(1)
Outputpath.Text = Left(Outputpath.Text, InStrRev(Outputpath.Text, "\") - 1)
End Sub

Private Sub PLcheck_Click()
If PLcheck.Value = 1 Then
PLtex.Enabled = True
PLloop.Enabled = True
PLscale.Enabled = True
PLtex.BackColor = &H80000005
PLloop.BackColor = &H80000005
PLscale.BackColor = &H80000005
Else
PLtex.Enabled = False
PLloop.Enabled = False
PLscale.Enabled = False
PLtex.BackColor = &H8000000F
PLloop.BackColor = &H8000000F
PLscale.BackColor = &H8000000F
End If
End Sub

Private Sub PLloop_Change()
PLloop = Val(PLloop)
End Sub

Private Sub PLscale_Change()
PLscale = Val(PLscale)
End Sub

Private Sub PLtex_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, X As Single, Y As Single)
PLtex.Text = Data.Files(1)
End Sub

Private Sub SMcheck_Click()
If SMcheck.Value = 1 Then
SMpara.BackColor = &H8000000F
SMpara.Enabled = False
SMTex.Enabled = True
SMloop.Enabled = True
SMscale.Enabled = True
SMTex.BackColor = &H80000005
SMloop.BackColor = &H80000005
SMscale.BackColor = &H80000005
SMpacheck.Value = 0
SMcheck.Enabled = False
SMpacheck.Enabled = True
End If
End Sub

Private Sub SMloop_Change()
SMloop = Val(SMloop)
End Sub

Private Sub SMpacheck_Click()
If SMpacheck.Value = 1 Then
SMTex.BackColor = &H8000000F
SMloop.BackColor = &H8000000F
SMscale.BackColor = &H8000000F
SMTex.Enabled = False
SMloop.Enabled = False
SMscale.Enabled = False
SMpara.BackColor = &H80000005
SMpara.Enabled = True
SMpacheck.Enabled = False
SMcheck.Value = 0
SMcheck.Enabled = True
End If
End Sub

Private Sub SMpara_Change()
SMpara = Val(SMpara)
End Sub

Private Sub SMscale_Change()
SMscale = Val(SMscale)
End Sub

Private Sub SMTex_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, X As Single, Y As Single)
SMTex.Text = Data.Files(1)
End Sub

Private Sub SPCcheck_Click()
If SPCcheck.Value = 1 Then
SPCcheck.Enabled = False
SPCpacheck.Enabled = True
SPCpacheck.Value = 0
SPCtex.BackColor = &H80000005
SPCloop.BackColor = &H80000005
SPCscale.BackColor = &H80000005
SPCtex.Enabled = True
SPCloop.Enabled = True
SPCscale.Enabled = True
SPCpara.Enabled = False
SPCpara.BackColor = &H8000000F
End If
End Sub

Private Sub SPCloop_Change()
SPCloop = Val(SPCloop)
End Sub

Private Sub SPCpacheck_Click()
If SPCpacheck.Value = 1 Then
SPCpacheck.Enabled = False
SPCcheck.Value = 0
SPCcheck.Enabled = True
SPCtex.BackColor = &H8000000F
SPCloop.BackColor = &H8000000F
SPCscale.BackColor = &H8000000F
SPCtex.Enabled = False
SPCloop.Enabled = False
SPCscale.Enabled = False
SPCpara.Enabled = True
SPCpara.BackColor = &H80000005
End If
End Sub

Private Sub SPCpara_Change()
SPCpara = Val(SPCpara)
End Sub

Private Sub SPCscale_Change()
SPCscale = Val(SPCscale)
End Sub

Private Sub SPCtex_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, X As Single, Y As Single)
SPCtex.Text = Data.Files(1)
End Sub
