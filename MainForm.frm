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
   Begin VB.CommandButton Command5 
      Caption         =   "输出fxsub文件"
      Height          =   375
      Left            =   10320
      TabIndex        =   111
      Top             =   240
      Width           =   1815
   End
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
      Caption         =   "版本号:0.1.2     byKarlvonDonitz"
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
AlbedoColor.BackColor = RGB(Val(AlbedoR), Val(AlbedoG), Val(AlbedoB))
End Sub

Private Sub AlbedoG_Change()
AlbedoColor.BackColor = RGB(Val(AlbedoR), Val(AlbedoG), Val(AlbedoB))
End Sub

Private Sub AlbedoR_Change()
AlbedoColor.BackColor = RGB(Val(AlbedoR), Val(AlbedoG), Val(AlbedoB))
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
If Outputpath.Text <> "" Then
Open Outputpath & "\" & "material_common_2.0.fxsub" For Output As #1
Print #1, " float4x4 matView : VIEW;"
Print #1, " float4x4 matWorld : WORLD;"
Print #1, " float4x4 matWorldView : WORLDVIEW;"
Print #1, " float4x4 matWorldViewProject : WORLDVIEWPROJECTION;"
Print #1, " float4 MaterialDiffuse : DIFFUSE<string Object = ""Geometry"";>;"
Print #1, " float4 MaterialAmbient : EMISSIVE<string Object = ""Geometry"";>;"
Print #1, " float4 MaterialSpecular : SPECULAR<string Object = ""Geometry"";>;"
Print #1, " float  MaterialPower : SPECULARPOWER<string Object = ""Geometry"";>;"
Print #1, " float time : TIME;"
Print #1, " bool use_texture;"
Print #1, " bool use_subtexture;"
Print #1, " bool use_spheremap;"
Print #1, " bool use_toon;"
Print #1, " #if EMISSIVE_MAP_APPLY_MORPH_COLOR || ALBEDO_MAP_APPLY_MORPH_COLOR"
Print #1, " float MorphRed   : CONTROLOBJECT<string name=""(self)""; string item = ""R+"";>;"
Print #1, " float MorphGreen : CONTROLOBJECT<string name=""(self)""; string item = ""G+"";>;"
Print #1, " float MorphBlue  : CONTROLOBJECT<string name=""(self)""; string item = ""B+"";>;"
Print #1, " static float3 MorphColor = float3(MorphRed, MorphGreen, MorphBlue);"
Print #1, " #endif"
Print #1, " #if EMISSIVE_MAP_APPLY_BLINK"
Print #1, " float3 SmoothCurve(float3 x)"
Print #1, " {"
Print #1, "     return x * x * (3.0 - 2.0 * x);"
Print #1, " }"
Print #1, " float3 TriangleWave(float3 x)"
Print #1, " {"
Print #1, "     return abs(frac(x + 0.5) * 2.0 - 1.0);"
Print #1, " }"
Print #1, " float3 SmoothTriangleWave(float3 x)"
Print #1, " {"
Print #1, "     return SmoothCurve(TriangleWave(x));"
Print #1, " }"
Print #1, " #if EMISSIVE_MAP_APPLY_BLINK == 2"
Print #1, "     float mBlink : CONTROLOBJECT<string name=""(self)""; string item = ""Blink"";>;"
Print #1, "     static float3 LightBlink = saturate(1 - SmoothTriangleWave(time * emissiveBlink * mBlink));"
Print #1, " #else"
Print #1, "     static float3 LightBlink = saturate(1 - SmoothTriangleWave(time * emissiveBlink));"
Print #1, " #endif"
Print #1, " #endif"
Print #1, " #if EMISSIVE_MAP_APPLY_MORPH_INTENSITY"
Print #1, " float mIntensityP : CONTROLOBJECT<string name=""(self)""; string item = ""Intensity+"";>;"
Print #1, " float mIntensityM : CONTROLOBJECT<string name=""(self)""; string item = ""Intensity-"";>;"
Print #1, " static float emissiveIntensityMin = log(50);"
Print #1, " static float emissiveIntensityMax = log(2100);"
Print #1, " static float LightIntensity = lerp(emissiveIntensityMin, emissiveIntensityMax, mIntensityP - mIntensityM);"
Print #1, " #endif"
Print #1, " #define TEXTURE_FILTER ANISOTROPIC"
Print #1, " #define TEXTURE_MIP_FILTER ANISOTROPIC"
Print #1, " #define TEXTURE_ANISOTROPY_LEVEL 16"
Print #1, " #define SHADINGMODELID_DEFAULT    0"
Print #1, " #define SHADINGMODELID_SKIN       1"
Print #1, " #define SHADINGMODELID_EMISSIVE   2"
Print #1, " #define SHADINGMODELID_ANISOTROPY 3"
Print #1, " #define SHADINGMODELID_GLASS      4"
Print #1, " #define SHADINGMODELID_CLOTH      5"
Print #1, " #define SHADINGMODELID_CLEAR_COAT 6"
Print #1, " #define SHADINGMODELID_SUBSURFACE 7"
Print #1, " #define SHADINGMODELID_CEL        8"
Print #1, " #define SHADINGMODELID_TONEBASED  9"
Print #1, " #define SHADINGMODELID_MASK       10"
Print #1, " #define MIDPOINT_8_BIT (127.0f / 255.0f)"
Print #1, " #define MAX_FRACTIONAL_8_BIT (255.0f / 256.0f)"
Print #1, " #define TWO_BITS_EXTRACTION_FACTOR (3.0f + MAX_FRACTIONAL_8_BIT)"
Print #1, " #define EMISSIVE_EPSILON (2.0f / 255.0f)"
Print #1, " #define ALPHA_THRESHOLD 0.999"
Print #1, " shared texture Gbuffer2RT: RENDERCOLORTARGET;"
Print #1, " shared texture Gbuffer3RT: RENDERCOLORTARGET;"
Print #1, " shared texture Gbuffer4RT: RENDERCOLORTARGET;"
Print #1, " shared texture Gbuffer5RT: RENDERCOLORTARGET;"
Print #1, " shared texture Gbuffer6RT: RENDERCOLORTARGET;"
Print #1, " shared texture Gbuffer7RT: RENDERCOLORTARGET;"
Print #1, " shared texture Gbuffer8RT: RENDERCOLORTARGET;"
Print #1, " #if ALBEDO_MAP_FROM == 3 || ALBEDO_SUB_MAP_FROM == 3 || ALPHA_MAP_FROM == 3 ||\"
Print #1, "     NORMAL_MAP_FROM == 3|| NORMAL_SUB_MAP_FROM == 3||\"
Print #1, "     SMOOTHNESS_MAP_FROM == 3 || METALNESS_MAP_FROM == 3 || SPECULAR_MAP_FROM == 3||\"
Print #1, "     EMISSIVE_MAP_FROM == 3 || OCCLUSION_MAP_FROM == 3 ||\"
Print #1, "     PARALLAX_MAP_FROM == 3|| CUSTOM_A_MAP_FROM == 3|| CUSTOM_B_MAP_FROM == 3"
Print #1, "     texture DiffuseMap: MATERIALTEXTURE;"
Print #1, " #endif"
Print #1, " #if ALBEDO_MAP_FROM == 4 || ALBEDO_SUB_MAP_FROM == 4  || ALPHA_MAP_FROM == 4 ||\"
Print #1, "     NORMAL_MAP_FROM == 4|| NORMAL_SUB_MAP_FROM == 4||\"
Print #1, "     SMOOTHNESS_MAP_FROM == 4 || METALNESS_MAP_FROM == 4 || SPECULAR_MAP_FROM == 4||\"
Print #1, "     EMISSIVE_MAP_FROM == 4 || OCCLUSION_MAP_FROM == 4 ||\"
Print #1, "     PARALLAX_MAP_FROM == 4|| CUSTOM_A_MAP_FROM == 4|| CUSTOM_B_MAP_FROM == 4"
Print #1, "     texture SphereMap : MATERIALSPHEREMAP;"
Print #1, " #endif"
Print #1, " #if ALBEDO_MAP_FROM == 5 || ALBEDO_SUB_MAP_FROM == 5 || ALPHA_MAP_FROM == 5 ||\"
Print #1, "     NORMAL_MAP_FROM == 5|| NORMAL_SUB_MAP_FROM == 5||\"
Print #1, "     SMOOTHNESS_MAP_FROM == 5 || METALNESS_MAP_FROM == 5 || SPECULAR_MAP_FROM == 5||\"
Print #1, "     EMISSIVE_MAP_FROM == 5 || OCCLUSION_MAP_FROM == 5 ||\"
Print #1, "     PARALLAX_MAP_FROM == 5|| CUSTOM_A_MAP_FROM == 5|| CUSTOM_B_MAP_FROM == 5"
Print #1, "     texture ToonMap : MATERIALTOONTEXTURE;"
Print #1, " #endif"
Print #1, " #if ALBEDO_MAP_FROM == 6 || ALBEDO_SUB_MAP_FROM == 6 || ALPHA_MAP_FROM == 6 ||\"
Print #1, "     NORMAL_MAP_FROM == 6|| NORMAL_SUB_MAP_FROM == 6||\"
Print #1, "     SMOOTHNESS_MAP_FROM == 6 || METALNESS_MAP_FROM == 6 || SPECULAR_MAP_FROM == 6||\"
Print #1, "     EMISSIVE_MAP_FROM == 6 || OCCLUSION_MAP_FROM == 6 ||\"
Print #1, "     PARALLAX_MAP_FROM == 6|| CUSTOM_A_MAP_FROM == 6|| CUSTOM_B_MAP_FROM == 6"
Print #1, "     shared texture2D DummyScreenTex : RENDERCOLORTARGET;"
Print #1, " #endif"
Print #1, " #if ALBEDO_MAP_FROM >= 1 && ALBEDO_MAP_FROM <= 8"
Print #1, "     #if ALBEDO_MAP_FROM == 1"
Print #1, "         texture AlbedoMap<string ResourceName = ALBEDO_MAP_FILE;>;"
Print #1, "     #elif ALBEDO_MAP_FROM == 2"
Print #1, "         texture AlbedoMap : ANIMATEDTEXTURE<string ResourceName = ALBEDO_MAP_FILE;>;"
Print #1, "     #endif"
Print #1, "     sampler AlbedoMapSamp = sampler_state"
Print #1, "     {"
Print #1, " #if ALBEDO_MAP_FROM == 3 || ALBEDO_MAP_FROM == 7 || ALBEDO_MAP_FROM == 8"
Print #1, "         texture = DiffuseMap;"
Print #1, " #elif ALBEDO_MAP_FROM == 4"
Print #1, "         texture = SphereMap;"
Print #1, " #elif ALBEDO_MAP_FROM == 5"
Print #1, "         texture = ToonMap;"
Print #1, " #elif ALBEDO_MAP_FROM == 6"
Print #1, "         texture = DummyScreenTex;"
Print #1, " #else"
Print #1, "         texture = AlbedoMap;"
Print #1, " #endif"
Print #1, "         MAXANISOTROPY = TEXTURE_ANISOTROPY_LEVEL;"
Print #1, "         MINFILTER = TEXTURE_FILTER; MAGFILTER = TEXTURE_FILTER; MIPFILTER = TEXTURE_MIP_FILTER;"
Print #1, "         ADDRESSU = WRAP; ADDRESSV = WRAP;"
Print #1, "     };"
Print #1, " #endif"
Print #1, " #if ALBEDO_SUB_MAP_FROM >= 1 && ALBEDO_SUB_MAP_FROM <= 6"
Print #1, "     #if ALBEDO_SUB_MAP_FROM == 1"
Print #1, "         texture AlbedoSubMap<string ResourceName = ALBEDO_SUB_MAP_FILE;>;"
Print #1, "     #elif ALBEDO_SUB_MAP_FROM == 2"
Print #1, "         texture AlbedoSubMap : ANIMATEDTEXTURE<string ResourceName = ALBEDO_SUB_MAP_FILE;>;"
Print #1, "     #endif"
Print #1, "     sampler AlbedoSubMapSamp = sampler_state"
Print #1, "     {"
Print #1, " #if ALBEDO_SUB_MAP_FROM == 3"
Print #1, "         texture = DiffuseMap;"
Print #1, " #elif ALBEDO_SUB_MAP_FROM == 4"
Print #1, "         texture = SphereMap;"
Print #1, " #elif ALBEDO_SUB_MAP_FROM == 5"
Print #1, "         texture = ToonMap;"
Print #1, " #elif ALBEDO_SUB_MAP_FROM == 6"
Print #1, "         texture = DummyScreenTex;"
Print #1, " #else"
Print #1, "         texture = AlbedoSubMap;"
Print #1, " #endif"
Print #1, "         MAXANISOTROPY = TEXTURE_ANISOTROPY_LEVEL;"
Print #1, "         MINFILTER = TEXTURE_FILTER; MAGFILTER = TEXTURE_FILTER; MIPFILTER = TEXTURE_MIP_FILTER;"
Print #1, "         ADDRESSU = WRAP; ADDRESSV = WRAP;"
Print #1, "     };"
Print #1, " #endif"
Print #1, " #if ALPHA_MAP_FROM >= 1 && ALPHA_MAP_FROM <= 6"
Print #1, "     #if ALPHA_MAP_FROM == 1"
Print #1, "         texture AlphaMap<string ResourceName = ALPHA_MAP_FILE;>;"
Print #1, "     #elif ALPHA_MAP_FROM == 2"
Print #1, "         texture AlphaMap : ANIMATEDTEXTURE<string ResourceName = ALPHA_MAP_FILE;>;"
Print #1, "     #endif"
Print #1, "     sampler AlphaMapSamp = sampler_state"
Print #1, "     {"
Print #1, " #if ALPHA_MAP_FROM == 3"
Print #1, "         texture = DiffuseMap;"
Print #1, " #elif ALPHA_MAP_FROM == 4"
Print #1, "         texture = SphereMap;"
Print #1, " #elif ALPHA_MAP_FROM == 5"
Print #1, "         texture = ToonMap;"
Print #1, " #elif ALPHA_MAP_FROM == 6"
Print #1, "         texture = DummyScreenTex;"
Print #1, " #else"
Print #1, "         texture = AlphaMap;"
Print #1, " #endif"
Print #1, "         MAXANISOTROPY = TEXTURE_ANISOTROPY_LEVEL;"
Print #1, "         MINFILTER = TEXTURE_FILTER; MAGFILTER = TEXTURE_FILTER; MIPFILTER = TEXTURE_MIP_FILTER;"
Print #1, "         ADDRESSU = WRAP; ADDRESSV = WRAP;"
Print #1, "     };"
Print #1, " #endif"
Print #1, " #if NORMAL_MAP_FROM >= 1 && NORMAL_MAP_FROM <= 6"
Print #1, "     #if NORMAL_MAP_FROM == 1"
Print #1, "         texture NormalMap<string ResourceName = NORMAL_MAP_FILE;>;"
Print #1, "     #elif NORMAL_MAP_FROM == 2"
Print #1, "         texture NormalMap : ANIMATEDTEXTURE<string ResourceName = NORMAL_MAP_FILE;>;"
Print #1, "     #endif"
Print #1, "     sampler NormalMapSamp = sampler_state"
Print #1, "     {"
Print #1, " #if NORMAL_MAP_FROM == 3"
Print #1, "         texture = DiffuseMap;"
Print #1, " #elif NORMAL_MAP_FROM == 4"
Print #1, "         texture = SphereMap;"
Print #1, " #elif NORMAL_MAP_FROM == 5"
Print #1, "         texture = ToonMap;"
Print #1, " #elif NORMAL_MAP_FROM == 6"
Print #1, "         texture = DummyScreenTex;"
Print #1, " #else"
Print #1, "         texture = NormalMap;"
Print #1, " #endif"
Print #1, "         MAXANISOTROPY = TEXTURE_ANISOTROPY_LEVEL;"
Print #1, "         MINFILTER = TEXTURE_FILTER; MAGFILTER = TEXTURE_FILTER; MIPFILTER = TEXTURE_MIP_FILTER;"
Print #1, "         ADDRESSU = WRAP; ADDRESSV = WRAP;"
Print #1, "     };"
Print #1, " #endif"
Print #1, " #if NORMAL_SUB_MAP_FROM >= 1 && NORMAL_SUB_MAP_FROM <= 6"
Print #1, "     #if NORMAL_SUB_MAP_FROM == 1"
Print #1, "         texture NormalSubMap<string ResourceName = NORMAL_SUB_MAP_FILE;>;"
Print #1, "     #elif NORMAL_SUB_MAP_FROM == 2"
Print #1, "         texture NormalSubMap : ANIMATEDTEXTURE<string ResourceName = NORMAL_SUB_MAP_FILE;>;"
Print #1, "     #endif"
Print #1, "     sampler NormalSubMapSamp = sampler_state"
Print #1, "     {"
Print #1, " #if NORMAL_SUB_MAP_FROM == 3"
Print #1, "         texture = DiffuseMap;"
Print #1, " #elif NORMAL_SUB_MAP_FROM == 4"
Print #1, "         texture = SphereMap;"
Print #1, " #elif NORMAL_SUB_MAP_FROM == 5"
Print #1, "         texture = ToonMap;"
Print #1, " #elif NORMAL_SUB_MAP_FROM == 6"
Print #1, "         texture = DummyScreenTex;"
Print #1, " #else"
Print #1, "         texture = NormalSubMap;"
Print #1, " #endif"
Print #1, "         MAXANISOTROPY = TEXTURE_ANISOTROPY_LEVEL;"
Print #1, "         MINFILTER = TEXTURE_FILTER; MAGFILTER = TEXTURE_FILTER; MIPFILTER = TEXTURE_MIP_FILTER;"
Print #1, "         ADDRESSU = WRAP; ADDRESSV = WRAP;"
Print #1, "     };"
Print #1, " #endif"
Print #1, " #if SMOOTHNESS_MAP_FROM >= 1 && SMOOTHNESS_MAP_FROM <= 6"
Print #1, "     #if SMOOTHNESS_MAP_FROM == 1"
Print #1, "         texture SmoothnessMap<string ResourceName = SMOOTHNESS_MAP_FILE;>;"
Print #1, "     #elif SMOOTHNESS_MAP_FROM == 2"
Print #1, "         texture SmoothnessMap : ANIMATEDTEXTURE<string ResourceName = SMOOTHNESS_MAP_FILE;>;"
Print #1, "     #endif"
Print #1, "     sampler SmoothnessMapSamp = sampler_state"
Print #1, "     {"
Print #1, " #if SMOOTHNESS_MAP_FROM == 3"
Print #1, "         texture = DiffuseMap;"
Print #1, " #elif SMOOTHNESS_MAP_FROM == 4"
Print #1, "         texture = SphereMap;"
Print #1, " #elif SMOOTHNESS_MAP_FROM == 5"
Print #1, "         texture = ToonMap;"
Print #1, " #elif SMOOTHNESS_MAP_FROM == 6"
Print #1, "         texture = DummyScreenTex;"
Print #1, " #else"
Print #1, "         texture = SmoothnessMap;"
Print #1, " #endif"
Print #1, "         MAXANISOTROPY = TEXTURE_ANISOTROPY_LEVEL;"
Print #1, "         MINFILTER = TEXTURE_FILTER; MAGFILTER = TEXTURE_FILTER; MIPFILTER = TEXTURE_MIP_FILTER;"
Print #1, "         ADDRESSU = WRAP; ADDRESSV = WRAP;"
Print #1, "     };"
Print #1, " #endif"
Print #1, " #if METALNESS_MAP_FROM >= 1 && METALNESS_MAP_FROM <= 6"
Print #1, "     #if METALNESS_MAP_FROM == 1"
Print #1, "         texture MetalnessMap<string ResourceName = METALNESS_MAP_FILE;>;"
Print #1, "     #elif METALNESS_MAP_FROM == 2"
Print #1, "         texture MetalnessMap : ANIMATEDTEXTURE<string ResourceName = METALNESS_MAP_FILE;>;"
Print #1, "     #endif"
Print #1, "     sampler MetalnessMapSamp = sampler_state"
Print #1, "     {"
Print #1, " #if METALNESS_MAP_FROM == 3"
Print #1, "         texture = DiffuseMap;"
Print #1, " #elif METALNESS_MAP_FROM == 4"
Print #1, "         texture = SphereMap;"
Print #1, " #elif METALNESS_MAP_FROM == 5"
Print #1, "         texture = ToonMap;"
Print #1, " #elif METALNESS_MAP_FROM == 6"
Print #1, "         texture = DummyScreenTex;"
Print #1, " #else"
Print #1, "         texture = MetalnessMap;"
Print #1, " #endif"
Print #1, "         MAXANISOTROPY = TEXTURE_ANISOTROPY_LEVEL;"
Print #1, "         MINFILTER = TEXTURE_FILTER; MAGFILTER = TEXTURE_FILTER; MIPFILTER = TEXTURE_MIP_FILTER;"
Print #1, "         ADDRESSU = WRAP; ADDRESSV = WRAP;"
Print #1, "     };"
Print #1, " #endif"
Print #1, " #if SPECULAR_MAP_FROM >= 1 && SPECULAR_MAP_FROM <= 6"
Print #1, "     #if SPECULAR_MAP_FROM == 1"
Print #1, "         texture SpecularMap<string ResourceName = SPECULAR_MAP_FILE;>;"
Print #1, "     #elif SPECULAR_MAP_FROM == 2"
Print #1, "         texture SpecularMap : ANIMATEDTEXTURE<string ResourceName = SPECULAR_MAP_FILE;>;"
Print #1, "     #endif"
Print #1, "     sampler SpecularMapSamp = sampler_state"
Print #1, "     {"
Print #1, " #if SPECULAR_MAP_FROM == 3"
Print #1, "         texture = DiffuseMap;"
Print #1, " #elif SPECULAR_MAP_FROM == 4"
Print #1, "         texture = SphereMap;"
Print #1, " #elif SPECULAR_MAP_FROM == 5"
Print #1, "         texture = ToonMap;"
Print #1, " #elif SPECULAR_MAP_FROM == 6"
Print #1, "         texture = DummyScreenTex;"
Print #1, " #else"
Print #1, "         texture = SpecularMap;"
Print #1, " #endif"
Print #1, "         MAXANISOTROPY = TEXTURE_ANISOTROPY_LEVEL;"
Print #1, "         MINFILTER = TEXTURE_FILTER; MAGFILTER = TEXTURE_FILTER; MIPFILTER = TEXTURE_MIP_FILTER;"
Print #1, "         ADDRESSU = WRAP; ADDRESSV = WRAP;"
Print #1, "     };"
Print #1, " #endif"
Print #1, " #if OCCLUSION_MAP_FROM >= 1 && OCCLUSION_MAP_FROM <= 6"
Print #1, "     #if OCCLUSION_MAP_FROM == 1"
Print #1, "         texture OcclusionMap<string ResourceName = OCCLUSION_MAP_FILE;>;"
Print #1, "     #elif OCCLUSION_MAP_FROM == 2"
Print #1, "         texture OcclusionMap : ANIMATEDTEXTURE<string ResourceName = OCCLUSION_MAP_FILE;>;"
Print #1, "     #endif"
Print #1, "     sampler OcclusionMapSamp = sampler_state"
Print #1, "     {"
Print #1, " #if OCCLUSION_MAP_FROM == 3"
Print #1, "         texture = DiffuseMap;"
Print #1, " #elif OCCLUSION_MAP_FROM == 4"
Print #1, "         texture = SphereMap;"
Print #1, " #elif OCCLUSION_MAP_FROM == 5"
Print #1, "         texture = ToonMap;"
Print #1, " #elif OCCLUSION_MAP_FROM == 6"
Print #1, "         texture = DummyScreenTex;"
Print #1, " #else"
Print #1, "         texture = OcclusionMap;"
Print #1, " #endif"
Print #1, "         MAXANISOTROPY = TEXTURE_ANISOTROPY_LEVEL;"
Print #1, "         MINFILTER = TEXTURE_FILTER; MAGFILTER = TEXTURE_FILTER; MIPFILTER = TEXTURE_MIP_FILTER;"
Print #1, "         ADDRESSU = WRAP; ADDRESSV = WRAP;"
Print #1, "     };"
Print #1, " #endif"
Print #1, " #if PARALLAX_MAP_FROM >= 1 && PARALLAX_MAP_FROM <= 6"
Print #1, "     #if PARALLAX_MAP_FROM == 1"
Print #1, "         texture ParallaxMap<string ResourceName = PARALLAX_MAP_FILE;>;"
Print #1, "     #elif PARALLAX_MAP_FROM == 2"
Print #1, "         texture ParallaxMap : ANIMATEDTEXTURE<string ResourceName = PARALLAX_MAP_FILE;>;"
Print #1, "     #endif"
Print #1, "     sampler ParallaxMapSamp = sampler_state"
Print #1, "     {"
Print #1, " #if PARALLAX_MAP_FROM == 3"
Print #1, "         texture = DiffuseMap;"
Print #1, " #elif PARALLAX_MAP_FROM == 4"
Print #1, "         texture = SphereMap;"
Print #1, " #elif PARALLAX_MAP_FROM == 5"
Print #1, "         texture = ToonMap;"
Print #1, " #elif PARALLAX_MAP_FROM == 6"
Print #1, "         texture = DummyScreenTex;"
Print #1, " #else"
Print #1, "         texture = ParallaxMap;"
Print #1, " #endif"
Print #1, "         MAXANISOTROPY = TEXTURE_ANISOTROPY_LEVEL;"
Print #1, "         MINFILTER = TEXTURE_FILTER; MAGFILTER = TEXTURE_FILTER; MIPFILTER = TEXTURE_MIP_FILTER;"
Print #1, "         ADDRESSU = WRAP; ADDRESSV = WRAP;"
Print #1, "     };"
Print #1, " #endif"
Print #1, " #if EMISSIVE_MAP_FROM >= 1 && EMISSIVE_MAP_FROM <= 6"
Print #1, "     #if EMISSIVE_MAP_FROM == 1"
Print #1, "         texture EmissiveMap<string ResourceName = EMISSIVE_MAP_FILE;>;"
Print #1, "     #elif EMISSIVE_MAP_FROM == 2"
Print #1, "         texture EmissiveMap : ANIMATEDTEXTURE<string ResourceName = EMISSIVE_MAP_FILE;>;"
Print #1, "     #endif"
Print #1, "     sampler EmissiveMapSamp = sampler_state"
Print #1, "     {"
Print #1, " #if EMISSIVE_MAP_FROM == 3"
Print #1, "         texture = DiffuseMap;"
Print #1, " #elif EMISSIVE_MAP_FROM == 4"
Print #1, "         texture = SphereMap;"
Print #1, " #elif EMISSIVE_MAP_FROM == 5"
Print #1, "         texture = ToonMap;"
Print #1, " #elif EMISSIVE_MAP_FROM == 6"
Print #1, "         texture = DummyScreenTex;"
Print #1, " #else"
Print #1, "         texture = EmissiveMap;"
Print #1, " #endif"
Print #1, "         MAXANISOTROPY = TEXTURE_ANISOTROPY_LEVEL;"
Print #1, "         MINFILTER = TEXTURE_FILTER; MAGFILTER = TEXTURE_FILTER; MIPFILTER = TEXTURE_MIP_FILTER;"
Print #1, "         ADDRESSU = WRAP; ADDRESSV = WRAP;"
Print #1, "     };"
Print #1, " #endif"
Print #1, " #if CUSTOM_ENABLE && CUSTOM_A_MAP_FROM >= 1 && CUSTOM_A_MAP_FROM <= 6"
Print #1, "     #if CUSTOM_A_MAP_FROM == 1"
Print #1, "         texture CustomAMap<string ResourceName = CUSTOM_A_MAP_FILE;>;"
Print #1, "     #elif CUSTOM_A_MAP_FROM == 2"
Print #1, "         texture CustomAMap : ANIMATEDTEXTURE<string ResourceName = CUSTOM_A_MAP_FILE;>;"
Print #1, "     #endif"
Print #1, "     sampler CustomAMapSamp = sampler_state"
Print #1, "     {"
Print #1, " #if CUSTOM_A_MAP_FROM == 3"
Print #1, "         texture = DiffuseMap;"
Print #1, " #elif CUSTOM_A_MAP_FROM == 4"
Print #1, "         texture = SphereMap;"
Print #1, " #elif CUSTOM_A_MAP_FROM == 5"
Print #1, "         texture = ToonMap;"
Print #1, " #elif CUSTOM_A_MAP_FROM == 6"
Print #1, "         texture = DummyScreenTex;"
Print #1, " #else"
Print #1, "         texture = CustomAMap;"
Print #1, " #endif"
Print #1, "         MAXANISOTROPY = TEXTURE_ANISOTROPY_LEVEL;"
Print #1, "         MINFILTER = TEXTURE_FILTER; MAGFILTER = TEXTURE_FILTER; MIPFILTER = TEXTURE_MIP_FILTER;"
Print #1, "         ADDRESSU = WRAP; ADDRESSV = WRAP;"
Print #1, "     };"
Print #1, " #endif"
Print #1, " #if CUSTOM_ENABLE && CUSTOM_B_MAP_FROM >= 1 && CUSTOM_B_MAP_FROM <= 6"
Print #1, "     #if CUSTOM_B_MAP_FROM == 1"
Print #1, "         texture CustomBMap<string ResourceName = CUSTOM_B_MAP_FILE;>;"
Print #1, "     #elif CUSTOM_B_MAP_FROM == 2"
Print #1, "         texture CustomBMap : ANIMATEDTEXTURE<string ResourceName = CUSTOM_B_MAP_FILE;>;"
Print #1, "     #endif"
Print #1, "     sampler CustomBMapSamp = sampler_state"
Print #1, "     {"
Print #1, " #if CUSTOM_B_MAP_FROM == 3"
Print #1, "         texture = DiffuseMap;"
Print #1, " #elif CUSTOM_B_MAP_FROM == 4"
Print #1, "         texture = SphereMap;"
Print #1, " #elif CUSTOM_B_MAP_FROM == 5"
Print #1, "         texture = ToonMap;"
Print #1, " #elif CUSTOM_B_MAP_FROM == 6"
Print #1, "         texture = DummyScreenTex;"
Print #1, " #else"
Print #1, "         texture = CustomBMap;"
Print #1, " #endif"
Print #1, "         MAXANISOTROPY = TEXTURE_ANISOTROPY_LEVEL;"
Print #1, "         MINFILTER = TEXTURE_FILTER; MAGFILTER = TEXTURE_FILTER; MIPFILTER = TEXTURE_MIP_FILTER;"
Print #1, "         ADDRESSU = WRAP; ADDRESSV = WRAP;"
Print #1, "     };"
Print #1, " #endif"
Print #1, " struct MaterialParam"
Print #1, " {"
Print #1, "     float3 normal;"
Print #1, "     float3 albedo;"
Print #1, "     float3 specular;"
Print #1, "     float3 emissive;"
Print #1, "     float smoothness;"
Print #1, "     float metalness;"
Print #1, "     float emissiveIntensity;"
Print #1, "     float alpha;"
Print #1, "     float visibility;"
Print #1, "     float customDataA;"
Print #1, "     float3 customDataB;"
Print #1, "     int lightModel;"
Print #1, " };"
Print #1, " struct GbufferParam"
Print #1, " {"
Print #1, "     float4 buffer1 : COLOR0;"
Print #1, "     float4 buffer2 : COLOR1;"
Print #1, "     float4 buffer3 : COLOR2;"
Print #1, "     float4 buffer4 : COLOR3;"
Print #1, " };"
Print #1, " float3 EncodeNormal(float3 normal)"
Print #1, " {"
Print #1, "     float p = sqrt(-normal.z * 8 + 8);"
Print #1, "     float2 enc = normal.xy / p + 0.5f;"
Print #1, "     float2 enc255 = enc * 255;"
Print #1, "     float2 residual = floor(frac(enc255) * 16);"
Print #1, "     return float3(floor(enc255), residual.x * 16 + residual.y) / 255;"
Print #1, " }"
Print #1, " float luminance(float3 rgb)"
Print #1, " {"
Print #1, "     return dot(rgb, float3(0.299, 0.587, 0.114));"
Print #1, " }"
Print #1, " float srgb2linear(float rgb)"
Print #1, " {"
Print #1, "     return pow(max(abs(rgb), 1e-5), 2.2);"
Print #1, " }"
Print #1, " float3 srgb2linear(float3 rgb)"
Print #1, " {"
Print #1, "     return pow(max(abs(rgb), 1e-5), 2.2);"
Print #1, " }"
Print #1, " float4 srgb2linear(float4 c)"
Print #1, " {"
Print #1, "     return float4(srgb2linear(c.rgb), c.a);"
Print #1, " }"
Print #1, " float3 rgb2ycbcr(float3 col)"
Print #1, " {"
Print #1, "     col = sqrt(col);"
Print #1, "     float3 encode;"
Print #1, "     encode.x = dot(float3(0.299, 0.587, 0.114),   col.rgb);"
Print #1, "     encode.y = dot(float3(-0.1687, -0.3312, 0.5), col.rgb) * MIDPOINT_8_BIT + MIDPOINT_8_BIT;"
Print #1, "     encode.z = dot(float3(0.5, -0.4186, -0.0813), col.rgb) * MIDPOINT_8_BIT + MIDPOINT_8_BIT;"
Print #1, "     return encode;"
Print #1, " }"
Print #1, " float3 ColorSynthesis(float3 diffuse, float3 m)"
Print #1, " {"
Print #1, "     float3 melanin = diffuse * luminance(diffuse);"
Print #1, "     return diffuse * lerp(1.0, melanin, m);"
Print #1, " }"
Print #1, " #if NORMAL_MAP_FROM || NORMAL_SUB_MAP_FROM"
Print #1, " float3 ComputeTangentBinormalNormal(float3 N, float3 P, float2 coord, float3 tangentNormal)"
Print #1, " {"
Print #1, "     float3 dp1 = ddx(P);"
Print #1, "     float3 dp2 = ddy(P);"
Print #1, "     float2 duv1 = ddx(coord);"
Print #1, "     float2 duv2 = ddy(coord);"
Print #1, "     float3x3 M = float3x3(dp1, dp2, N);"
Print #1, "     float2x3 I = float2x3(cross(M[1], M[2]), cross(M[2], M[0]));"
Print #1, "     float3 T = mul(float2(duv1.x, duv2.x), I);"
Print #1, "     float3 B = mul(float2(duv1.y, duv2.y), I);"
Print #1, "     float scaleT = 1.0f / (dot(T, T) + 1e-6);"
Print #1, "     float scaleB = 1.0f / (dot(B, B) + 1e-6);"
Print #1, "     float3x3 tbnTransform;"
Print #1, "     tbnTransform[0] = normalize(T * scaleT);"
Print #1, "     tbnTransform[1] = -normalize(B * scaleB);"
Print #1, "     tbnTransform[2] = N;"
Print #1, "     return normalize(mul(tangentNormal, tbnTransform));"
Print #1, " }"
Print #1, " float3 RNMBlendUnpacked(float3 n1, float3 n2)"
Print #1, " {"
Print #1, "     n1 += float3( 0,  0, 1);"
Print #1, "     n2 *= float3(-1, -1, 1);"
Print #1, "     return normalize(n1 * dot(n1, n2) / n1.z - n2);"
Print #1, " }"
Print #1, " #if NORMAL_MAP_TYPE == 2 || NORMAL_SUB_MAP_TYPE == 2"
Print #1, " float3 PerturbNormalLQ(float3 N, float3 P, float height)"
Print #1, " {"
Print #1, "     float3 dp1 = ddx(P);"
Print #1, "     float3 dp2 = ddy(P);"
Print #1, "     float3x3 M = float3x3(dp1, dp2, N);"
Print #1, "     float2x3 I = float2x3(cross(M[1], M[2]), cross(M[2], M[0]));"
Print #1, "     float det = dot(dp1, I[0]);"
Print #1, "     float slope1 = ddx(height);"
Print #1, "     float slope2 = ddy(height);"
Print #1, "     float3 surf = sign(det) * mul(float2(slope1, slope2), I);"
Print #1, "     return normalize(abs(det) * N - surf);"
Print #1, " }"
Print #1, " #endif"
Print #1, " #if NORMAL_MAP_TYPE == 3 || NORMAL_SUB_MAP_TYPE == 3"
Print #1, " float3 PerturbNormalHQ(sampler source, float2 coord, float center)"
Print #1, " {"
Print #1, "     float2 duv1 = ddx (coord);"
Print #1, "     float2 duv2 = ddy (coord);"
Print #1, "     float2 uv1 = coord + duv1;"
Print #1, "     float2 uv2 = coord + duv2;"
Print #1, "     float right = tex2D(source, uv1).x;"
Print #1, "     float bottom = tex2D(source, uv2).x;"
Print #1, "     float slope1 = right - center;"
Print #1, "     float slope2 = center - bottom;"
Print #1, "     return normalize(float3(slope1, slope2, 10.0));"
Print #1, " }"
Print #1, " #endif"
Print #1, " #endif"
Print #1, " #if PARALLAX_MAP_FROM"
Print #1, " float GetParallaxOcclusionHeight(sampler heightMap, float2 coord)"
Print #1, " {"
Print #1, " #if PARALLAX_MAP_SWIZZLE == 1"
Print #1, "     return tex2D(heightMap, coord).g;"
Print #1, " #elif PARALLAX_MAP_SWIZZLE == 2"
Print #1, "     return tex2D(heightMap, coord).b;"
Print #1, " #elif PARALLAX_MAP_SWIZZLE == 3"
Print #1, "     return tex2D(heightMap, coord).a;"
Print #1, " #else"
Print #1, "     return tex2D(heightMap, coord).r;"
Print #1, " #endif"
Print #1, " }"
Print #1, " float3 ParallaxOcclusionDirection(float3 normal, float3 worldPos, float2 coord)"
Print #1, " {"
Print #1, "     float3 viewNormal = mul(normal, (float3x3)matWorldView);"
Print #1, "     float3 viewPosition = mul(float4(worldPos, 1), matWorldView).xyz;"
Print #1, "     float3 viewdir = normalize(-viewPosition);"
Print #1, "     float3 dp1 = ddx(viewPosition);"
Print #1, "     float3 dp2 = ddy(viewPosition);"
Print #1, "     float2 duv1 = ddx(coord);"
Print #1, "     float2 duv2 = ddy(coord);"
Print #1, "     float3x3 M = float3x3(dp1, dp2, viewNormal);"
Print #1, "     float2x3 I = float2x3(cross(M[1], M[2]), cross(M[2], M[0]));"
Print #1, "        "
Print #1, "     float2 proj = mul(I, viewdir) / dot(dp1, I[0]);"
Print #1, "     float3 direction;"
Print #1, "     direction.xy = duv1 * proj.x + duv2 * proj.y;"
Print #1, "     direction.z = dot(viewNormal, viewdir);"
Print #1, "     return direction;"
Print #1, " }"
Print #1, " float2 ParallaxOcclusionMap(sampler heightMap, float2 coord, float3 V, int numSteps, float parallaxScale)"
Print #1, " {"
Print #1, "     float step = 1.0 / numSteps;"
Print #1, "     float2 delta = parallaxScale * V.xy / (-V.z * numSteps);"
Print #1, "     float curLayerHeight = 0;"
Print #1, "     float curHeight = GetParallaxOcclusionHeight(heightMap, coord);"
Print #1, "     float2 curTexcoord = coord;"
Print #1, "     [unroll]"
Print #1, "     for (int i = 0; i < numSteps; i++)"
Print #1, "     {"
Print #1, "         if (curHeight <= curLayerHeight)"
Print #1, "             break;"
Print #1, "         curLayerHeight += step; "
Print #1, "         curTexcoord -= delta;"
Print #1, "         curHeight = GetParallaxOcclusionHeight(heightMap, curTexcoord);"
Print #1, "     }"
Print #1, "     float2 deltaTexcoord = delta * 0.5;"
Print #1, "     float deltaHeight = step * 0.5;"
Print #1, "     curTexcoord += deltaTexcoord;"
Print #1, "     curLayerHeight -= deltaHeight;"
Print #1, "     [unroll]"
Print #1, "     for (int j = 0; j < 5; j++)"
Print #1, "     {"
Print #1, "         deltaTexcoord *= 0.5;"
Print #1, "         deltaHeight *= 0.5;"
Print #1, "         curHeight = GetParallaxOcclusionHeight(heightMap, curTexcoord);"
Print #1, "         if (curHeight > curLayerHeight)"
Print #1, "         {"
Print #1, "             curTexcoord -= deltaTexcoord;"
Print #1, "             curLayerHeight += deltaHeight;"
Print #1, "         }"
Print #1, "         else"
Print #1, "         {"
Print #1, "             curTexcoord += deltaTexcoord;"
Print #1, "             curLayerHeight -= deltaHeight;"
Print #1, "         }"
Print #1, "     }"
Print #1, "     return curTexcoord;"
Print #1, " }"
Print #1, " #endif"
Print #1, " float SmoothnessToRoughness(float smoothness)"
Print #1, " {"
Print #1, "     return (1.0f - smoothness) * (1.0f - smoothness);"
Print #1, " }"
Print #1, " float RoughnessToSmoothness(float roughness)"
Print #1, " {"
Print #1, "     return 1.0f - sqrt(roughness);"
Print #1, " }"
Print #1, " float ShininessToSmoothness(float spec)"
Print #1, " {"
Print #1, "     return 1.0f - pow(max(0, 2.0 / (spec + 2)), 0.125);"
Print #1, " }"
Print #1, " GbufferParam EncodeGbuffer(MaterialParam material, float linearDepth)"
Print #1, " {"
Print #1, "     GbufferParam gbuffer;"
Print #1, "     gbuffer.buffer1.xyz = material.albedo * (1 - material.metalness);"
Print #1, "     gbuffer.buffer1.w = material.smoothness;"
Print #1, "     material.normal = mul(material.normal, (float3x3)matWorldView);"
Print #1, "     material.normal = normalize(material.normal);"
Print #1, "     gbuffer.buffer2.xyz = EncodeNormal(material.normal);"
Print #1, "     gbuffer.buffer2.w = material.customDataA;"
Print #1, "     gbuffer.buffer3.xyz = lerp(material.specular, max(0.02, material.albedo), material.metalness);"
Print #1, "     gbuffer.buffer3.w = 0;"
Print #1, " #if CUSTOM_ENABLE || EMISSIVE_ENABLE"
Print #1, "     if (material.lightModel != SHADINGMODELID_DEFAULT)"
Print #1, "     {"
Print #1, " #if EMISSIVE_ENABLE"
Print #1, "         material.customDataB = material.emissive;"
Print #1, " #elif CUSTOM_ENABLE != SHADINGMODELID_GLASS"
Print #1, "         material.customDataB *= (1 - material.metalness);"
Print #1, " #endif"
Print #1, "         gbuffer.buffer3 = float4(luminance(gbuffer.buffer3.xyz), material.customDataB);"
Print #1, "     }"
Print #1, " #endif"
Print #1, "     gbuffer.buffer4 = float4(linearDepth, material.emissiveIntensity, material.visibility, material.lightModel);"
Print #1, "     gbuffer.buffer4.w += material.alpha * MAX_FRACTIONAL_8_BIT;"
Print #1, "     return gbuffer;"
Print #1, " }"
Print #1, " float3 GetAlbedo(float2 coord)"
Print #1, " {"
Print #1, " #if ALBEDO_MAP_FROM"
Print #1, "     #if ALBEDO_MAP_UV_FLIP == 1"
Print #1, "         coord.x = 1 - coord.x;"
Print #1, "     #elif ALBEDO_MAP_UV_FLIP == 2"
Print #1, "         coord.y = 1 - coord.y;"
Print #1, "     #elif ALBEDO_MAP_UV_FLIP == 3"
Print #1, "         coord = 1 - coord;"
Print #1, "     #endif"
Print #1, "     #if ALBEDO_MAP_FROM == 3"
Print #1, "         float3 albedoColor = use_texture ? tex2D(AlbedoMapSamp, coord * albedoMapLoopNum).rgb : MaterialDiffuse.rgb;"
Print #1, "     #elif ALBEDO_MAP_FROM == 4"
Print #1, "         float3 albedoColor = use_spheremap ? tex2D(AlbedoMapSamp, coord * albedoMapLoopNum).rgb : MaterialDiffuse.rgb;"
Print #1, "     #elif ALBEDO_MAP_FROM == 5"
Print #1, "         float3 albedoColor = use_toon ? tex2D(AlbedoMapSamp, coord * albedoMapLoopNum).rgb : MaterialDiffuse.rgb;"
Print #1, "     #elif ALBEDO_MAP_FROM == 7"
Print #1, "         float3 albedoColor = use_texture ? tex2D(AlbedoMapSamp, coord * albedoMapLoopNum).rgb : MaterialAmbient.rgb;"
Print #1, "     #elif ALBEDO_MAP_FROM == 8"
Print #1, "         float3 albedoColor = use_texture ? tex2D(AlbedoMapSamp, coord * albedoMapLoopNum).rgb : MaterialSpecular.rgb;"
Print #1, "     #elif ALBEDO_MAP_FROM == 9"
Print #1, "         #error Unsupported options 9."
Print #1, "     #else"
Print #1, "         float3 albedoColor = tex2D(AlbedoMapSamp, coord * albedoMapLoopNum).rgb;"
Print #1, "     #endif"
Print #1, "     #if ALBEDO_MAP_APPLY_DIFFUSE"
Print #1, "         #if ALBEDO_MAP_FROM == 3"
Print #1, "             albedoColor *= use_texture ? MaterialDiffuse.rgb : 1.0;"
Print #1, "         #elif ALBEDO_MAP_FROM == 4"
Print #1, "             albedoColor *= use_spheremap ? MaterialDiffuse.rgb : 1.0;"
Print #1, "         #elif ALBEDO_MAP_FROM == 5"
Print #1, "             albedoColor *= use_toon ? MaterialDiffuse.rgb : 1.0;"
Print #1, "         #else"
Print #1, "             albedoColor *= MaterialDiffuse.rgb;"
Print #1, "         #endif"
Print #1, "     #endif"
Print #1, "     albedoColor = srgb2linear(albedoColor);"
Print #1, "     #if ALBEDO_MAP_APPLY_SCALE == 1"
Print #1, "         albedoColor *= albedo;"
Print #1, "     #elif ALBEDO_MAP_APPLY_SCALE == 2"
Print #1, "         albedoColor = pow(albedoColor, albedo);"
Print #1, "     #endif"
Print #1, "     #if ALBEDO_MAP_APPLY_MORPH_COLOR"
Print #1, "         albedoColor *= MorphColor;"
Print #1, "     #endif"
Print #1, "     return albedoColor;"
Print #1, " #else"
Print #1, "     float3 albedoColor = albedo;"
Print #1, "     #if ALBEDO_MAP_APPLY_DIFFUSE"
Print #1, "         albedoColor *= srgb2linear(MaterialDiffuse.rgb);"
Print #1, "     #endif"
Print #1, "     #if ALBEDO_MAP_APPLY_MORPH_COLOR"
Print #1, "         albedoColor *= MorphColor;"
Print #1, "     #endif"
Print #1, "     return albedoColor;"
Print #1, " #endif"
Print #1, " }"
Print #1, " float3 GetSubAlbedo(float3 albedo, float2 coord)"
Print #1, " {"
Print #1, " #if ALBEDO_SUB_ENABLE"
Print #1, "     #if ALBEDO_SUB_MAP_FROM"
Print #1, "         #if ALBEDO_SUB_MAP_UV_FLIP == 1"
Print #1, "             coord.x = 1 - coord.x;"
Print #1, "         #elif ALBEDO_SUB_MAP_UV_FLIP == 2"
Print #1, "             coord.y = 1 - coord.y;"
Print #1, "         #elif ALBEDO_SUB_MAP_UV_FLIP == 3"
Print #1, "             coord = 1 - coord;"
Print #1, "         #endif"
Print #1, "         #if ALBEDO_SUB_MAP_FROM == 3"
Print #1, "             float4 albedoSubColor = use_texture ? tex2D(AlbedoSubMapSamp, coord * albedoSubMapLoopNum) : MaterialDiffuse;"
Print #1, "         #elif ALBEDO_SUB_MAP_FROM == 4"
Print #1, "             float4 albedoSubColor = use_spheremap ? tex2D(AlbedoSubMapSamp, coord * albedoSubMapLoopNum) : MaterialDiffuse;"
Print #1, "         #elif ALBEDO_SUB_MAP_FROM == 5"
Print #1, "             float4 albedoSubColor = use_toon ? tex2D(AlbedoSubMapSamp, coord * albedoSubMapLoopNum) : MaterialDiffuse;"
Print #1, "         #elif ALBEDO_SUB_MAP_FROM == 7"
Print #1, "             float4 albedoSubColor = MaterialAmbient;"
Print #1, "         #elif ALBEDO_SUB_MAP_FROM == 8"
Print #1, "             float4 albedoSubColor = MaterialSpecular;"
Print #1, "         #elif ALBEDO_SUB_MAP_FROM == 9"
Print #1, "             #error Unsupported options 9."
Print #1, "         #else"
Print #1, "             float4 albedoSubColor = tex2D(AlbedoSubMapSamp, coord * albedoSubMapLoopNum);"
Print #1, "         #endif"
Print #1, "         #if ALBEDO_SUB_MAP_APPLY_SCALE == 1"
Print #1, "             albedoSubColor.rgb *= albedoSub;"
Print #1, "         #elif ALBEDO_SUB_MAP_APPLY_SCALE == 2"
Print #1, "             albedoSubColor.rgb = pow(albedoSubColor.rgb, albedoSub);"
Print #1, "         #endif"
Print #1, "     #else"
Print #1, "         float4 albedoSubColor = float4(albedoSub, 1);"
Print #1, "     #endif"
Print #1, "     #if ALBEDO_SUB_ENABLE == 1"
Print #1, "         albedo *= albedoSubColor.rgb;"
Print #1, "     #elif ALBEDO_SUB_ENABLE == 2"
Print #1, "         albedo = pow(albedo, albedoSubColor.rgb);"
Print #1, "     #elif ALBEDO_SUB_ENABLE == 3"
Print #1, "         albedo += albedoSubColor.rgb;"
Print #1, "     #elif ALBEDO_SUB_ENABLE == 4"
Print #1, "         albedo = ColorSynthesis(albedo, albedoSubColor.rgb);"
Print #1, "     #elif ALBEDO_SUB_ENABLE == 5"
Print #1, "         albedo = lerp(albedo, albedoSubColor.rgb, albedoSubColor.a);"
Print #1, "     #endif"
Print #1, "     return saturate(albedo);"
Print #1, " #else"
Print #1, "     return saturate(albedo);"
Print #1, " #endif"
Print #1, " }"
Print #1, " float GetAlpha(float2 coord)"
Print #1, " {"
Print #1, " #if ALPHA_MAP_FROM"
Print #1, "     #if ALPHA_MAP_UV_FLIP == 1"
Print #1, "         coord.x = 1 - coord.x;"
Print #1, "     #elif ALPHA_MAP_UV_FLIP == 2"
Print #1, "         coord.y = 1 - coord.y;"
Print #1, "     #elif ALPHA_MAP_UV_FLIP == 3"
Print #1, "         coord = 1 - coord;"
Print #1, "     #endif"
Print #1, "     #if ALPHA_MAP_FROM == 3"
Print #1, "         float4 alphaValues = use_texture ? tex2D(AlphaMapSamp, coord * alphaMapLoopNum) * MaterialDiffuse.a : MaterialDiffuse.a;"
Print #1, "     #elif ALPHA_MAP_FROM == 4"
Print #1, "         float4 alphaValues = use_spheremap ? tex2D(AlphaMapSamp, coord * alphaMapLoopNum) * MaterialDiffuse.a : MaterialDiffuse.a;"
Print #1, "     #elif ALPHA_MAP_FROM == 5"
Print #1, "         float4 alphaValues = use_toon ? tex2D(AlphaMapSamp, coord * alphaMapLoopNum) * MaterialDiffuse.a : MaterialDiffuse.a;"
Print #1, "     #elif ALPHA_MAP_FROM == 7"
Print #1, "         float4 alphaValues = MaterialAmbient;"
Print #1, "     #elif ALPHA_MAP_FROM == 8"
Print #1, "         float4 alphaValues = MaterialSpecular;"
Print #1, "     #elif ALPHA_MAP_FROM == 9"
Print #1, "         #error Unsupported options 9."
Print #1, "     #else"
Print #1, "         float4 alphaValues = tex2D(AlphaMapSamp, coord * alphaMapLoopNum);"
Print #1, "     #endif"
Print #1, "     #if ALPHA_MAP_SWIZZLE == 0"
Print #1, "         float alphaValue = alphaValues.r;"
Print #1, "     #elif ALPHA_MAP_SWIZZLE == 1"
Print #1, "         float alphaValue = alphaValues.g;"
Print #1, "     #elif ALPHA_MAP_SWIZZLE == 2"
Print #1, "         float alphaValue = alphaValues.b;"
Print #1, "     #else"
Print #1, "         float alphaValue = alphaValues.a;"
Print #1, "     #endif"
Print #1, "     return saturate(alphaValue);"
Print #1, " #else"
Print #1, "     return saturate(alpha * MaterialDiffuse.a);"
Print #1, " #endif"
Print #1, " }"
Print #1, " float3 GetMainNormal(float3 N, float3 P, float2 coord)"
Print #1, " {"
Print #1, " #if NORMAL_MAP_FROM"
Print #1, "     #if NORMAL_MAP_UV_FLIP == 1"
Print #1, "         coord.x = 1 - coord.x;"
Print #1, "     #elif NORMAL_MAP_UV_FLIP == 2"
Print #1, "         coord.y = 1 - coord.y;"
Print #1, "     #elif NORMAL_MAP_UV_FLIP == 3"
Print #1, "         coord = 1 - coord;"
Print #1, "     #endif"
Print #1, "     #if NORMAL_MAP_FROM == 3"
Print #1, "         float3 tangentNormal = use_texture ? tex2D(NormalMapSamp, coord * normalMapLoopNum).rgb * 2 - 1 : float3(0, 0, 1);"
Print #1, "     #elif NORMAL_MAP_FROM == 4"
Print #1, "         float3 tangentNormal = use_spheremap ? tex2D(NormalMapSamp, coord * normalMapLoopNum).rgb * 2 - 1 : float3(0, 0, 1);"
Print #1, "     #elif NORMAL_MAP_FROM == 5"
Print #1, "         float3 tangentNormal = use_toon ? tex2D(NormalMapSamp, coord * normalMapLoopNum).rgb * 2 - 1 : float3(0, 0, 1);"
Print #1, "     #elif NORMAL_MAP_FROM == 7 || NORMAL_MAP_FROM == 8 || NORMAL_MAP_FROM == 9"
Print #1, "         #error Unsupported options 7, 8, 9."
Print #1, "     #else"
Print #1, "         float3 tangentNormal = tex2D(NormalMapSamp, coord * normalMapLoopNum).rgb * 2 - 1;"
Print #1, "     #endif"
Print #1, "     #if NORMAL_MAP_TYPE == 1"
Print #1, "         tangentNormal.z = sqrt(1.0 - tangentNormal.x * tangentNormal.x - tangentNormal.y * tangentNormal.y);"
Print #1, "     #elif NORMAL_MAP_TYPE == 3"
Print #1, "         tangentNormal = PerturbNormalHQ(NormalMapSamp, coord * normalMapLoopNum, tangentNormal.x);"
Print #1, "     #elif NORMAL_MAP_TYPE == 2"
Print #1, "         tangentNormal = PerturbNormalLQ(N, P, tangentNormal.x * normalMapScale);"
Print #1, "         #if NORMAL_SUB_MAP_FROM"
Print #1, "             #error Unsupported bump map (Low Quality) with second normal map. Please set NORMAL_SUB_MAP_FROM to 0."
Print #1, "         #endif"
Print #1, "     #endif"
Print #1, "     #if NORMAL_MAP_TYPE != 2"
Print #1, "         tangentNormal.rg *= normalMapScale;"
Print #1, "         tangentNormal = normalize(tangentNormal);"
Print #1, "     #endif"
Print #1, "     return tangentNormal;"
Print #1, " #else"
Print #1, "     return float3(0, 0, 1);"
Print #1, " #endif"
Print #1, " }"
Print #1, " float3 GetSubNormal(float3 N, float3 P, float2 coord)"
Print #1, " {"
Print #1, " #if NORMAL_SUB_MAP_FROM"
Print #1, "     #if NORMAL_SUB_MAP_UV_FLIP == 1"
Print #1, "         coord.x = 1 - coord.x;"
Print #1, "     #elif NORMAL_SUB_MAP_UV_FLIP == 2"
Print #1, "         coord.y = 1 - coord.y;"
Print #1, "     #elif NORMAL_SUB_MAP_UV_FLIP == 3"
Print #1, "         coord = 1 - coord;"
Print #1, "     #endif"
Print #1, "     #if NORMAL_SUB_MAP_FROM == 3"
Print #1, "         float3 tangentNormal = use_texture ? tex2D(NormalSubMapSamp, coord * normalSubMapLoopNum).rgb : float3(0, 0, 1);"
Print #1, "     #elif NORMAL_SUB_MAP_FROM == 4"
Print #1, "         float3 tangentNormal = use_spheremap ? tex2D(NormalSubMapSamp, coord * normalSubMapLoopNum).rgb : float3(0, 0, 1);"
Print #1, "     #elif NORMAL_SUB_MAP_FROM == 5"
Print #1, "         float3 tangentNormal = use_toon ? tex2D(NormalSubMapSamp, coord * normalSubMapLoopNum).rgb : float3(0, 0, 1);"
Print #1, "     #elif NORMAL_SUB_MAP_FROM == 7 || NORMAL_SUB_MAP_FROM == 8 || NORMAL_SUB_MAP_FROM == 9"
Print #1, "         #error Unsupported options 7, 8, 9."
Print #1, "     #else"
Print #1, "         float3 tangentNormal = tex2D(NormalSubMapSamp, coord * normalSubMapLoopNum).rgb;"
Print #1, "     #endif"
Print #1, "     #if NORMAL_SUB_MAP_TYPE != 4"
Print #1, "         tangentNormal = tangentNormal * 2 - 1;"
Print #1, "     #endif"
Print #1, "     #if NORMAL_SUB_MAP_TYPE == 1"
Print #1, "         tangentNormal.z = sqrt(1.0 - tangentNormal.x * tangentNormal.x - tangentNormal.y * tangentNormal.y);"
Print #1, "     #elif NORMAL_SUB_MAP_TYPE == 3"
Print #1, "         tangentNormal = PerturbNormalHQ(NormalSubMapSamp, coord * normalSubMapLoopNum, tangentNormal.x);"
Print #1, "     #elif NORMAL_SUB_MAP_TYPE == 2"
Print #1, "         tangentNormal = PerturbNormalLQ(N, P, tangentNormal.x * normalSubMapScale);"
Print #1, "         #if NORMAL_MAP_FROM"
Print #1, "             #error Unsupported bump map (Low Quality) with second normal map. Please set NORMAL_MAP_FROM to 0."
Print #1, "         #endif"
Print #1, "     #endif"
Print #1, "     #if NORMAL_SUB_MAP_TYPE != 2"
Print #1, "         tangentNormal.rg *= normalSubMapScale;"
Print #1, "         tangentNormal = normalize(tangentNormal);"
Print #1, "     #endif"
Print #1, "     return tangentNormal;"
Print #1, " #else"
Print #1, "     return float3(0, 0, 1);"
Print #1, " #endif"
Print #1, " }"
Print #1, " float3 GetNormal(float3 N, float3 P, float2 coord)"
Print #1, " {"
Print #1, " #if NORMAL_MAP_UV_FLIP == 4"
Print #1, "     N.x *= -1;"
Print #1, " #endif"
Print #1, " #if NORMAL_MAP_FROM || NORMAL_SUB_MAP_FROM"
Print #1, "     #if NORMAL_MAP_FROM && NORMAL_SUB_MAP_FROM && (NORMAL_MAP_TYPE == 4 || NORMAL_SUB_MAP_TYPE == 4)"
Print #1, "         #error ""Unsupported option"""
Print #1, "     #endif"
Print #1, "     #if NORMAL_MAP_FROM"
Print #1, "         float3 tangentNormal1 = GetMainNormal(N, P, coord);"
Print #1, "     #endif"
Print #1, "     #if NORMAL_SUB_MAP_FROM"
Print #1, "         float3 tangentNormal2 = GetSubNormal(N, P, coord);"
Print #1, "     #endif"
Print #1, "     #if NORMAL_MAP_FROM && NORMAL_SUB_MAP_FROM"
Print #1, "         float3 tangentNormal = RNMBlendUnpacked(tangentNormal1, tangentNormal2);"
Print #1, "     #elif NORMAL_MAP_FROM"
Print #1, "         float3 tangentNormal = tangentNormal1;"
Print #1, "     #else"
Print #1, "         float3 tangentNormal = tangentNormal2;"
Print #1, "     #endif"
Print #1, "     #if (NORMAL_MAP_FROM && (NORMAL_MAP_TYPE == 2 || NORMAL_MAP_TYPE == 4)) || (NORMAL_SUB_MAP_FROM && (NORMAL_SUB_MAP_TYPE == 2 || NORMAL_SUB_MAP_TYPE == 4))"
Print #1, "         return tangentNormal;"
Print #1, "     #else"
Print #1, "         #if NORMAL_MAP_UV_FLIP == 1"
Print #1, "             coord.x = 1 - coord.x;"
Print #1, "         #elif NORMAL_MAP_UV_FLIP == 2"
Print #1, "             coord.y = 1 - coord.y;"
Print #1, "         #elif NORMAL_MAP_UV_FLIP == 3"
Print #1, "             coord = 1 - coord;"
Print #1, "         #endif"
Print #1, "         return ComputeTangentBinormalNormal(N, P, coord, tangentNormal);"
Print #1, "     #endif"
Print #1, " #else"
Print #1, "     return N;"
Print #1, " #endif"
Print #1, " }"
Print #1, " float GetSmoothness(float2 coord)"
Print #1, " {"
Print #1, " #if SMOOTHNESS_MAP_FROM"
Print #1, "     #if SMOOTHNESS_MAP_UV_FLIP == 1"
Print #1, "         coord.x = 1 - coord.x;"
Print #1, "     #elif SMOOTHNESS_MAP_UV_FLIP == 2"
Print #1, "         coord.y = 1 - coord.y;"
Print #1, "     #elif SMOOTHNESS_MAP_UV_FLIP == 3"
Print #1, "         coord = 1 - coord;"
Print #1, "     #endif"
Print #1, "     #if SMOOTHNESS_MAP_FROM == 3"
Print #1, "         float4 smoothnessValues = use_texture ? tex2D(SmoothnessMapSamp, coord * smoothnessMapLoopNum) : 0;"
Print #1, "     #elif SMOOTHNESS_MAP_FROM == 4"
Print #1, "         float4 smoothnessValues = use_spheremap ? tex2D(SmoothnessMapSamp, coord * smoothnessMapLoopNum) : 0;"
Print #1, "     #elif SMOOTHNESS_MAP_FROM == 5"
Print #1, "         float4 smoothnessValues = use_toon ? tex2D(SmoothnessMapSamp, coord * smoothnessMapLoopNum) : 0;"
Print #1, "     #elif SMOOTHNESS_MAP_FROM == 7"
Print #1, "         float4 smoothnessValues = MaterialAmbient;"
Print #1, "     #elif SMOOTHNESS_MAP_FROM == 8"
Print #1, "         float4 smoothnessValues = MaterialSpecular;"
Print #1, "     #elif SMOOTHNESS_MAP_FROM == 9"
Print #1, "         float4 smoothnessValues = ShininessToSmoothness(MaterialPower);"
Print #1, "     #else"
Print #1, "         float4 smoothnessValues = tex2D(SmoothnessMapSamp, coord * smoothnessMapLoopNum);"
Print #1, "     #endif"
Print #1, "     #if SMOOTHNESS_MAP_SWIZZLE == 1"
Print #1, "         float smoothnessValue = smoothnessValues.g;"
Print #1, "     #elif SMOOTHNESS_MAP_SWIZZLE == 2"
Print #1, "         float smoothnessValue = smoothnessValues.b;"
Print #1, "     #elif SMOOTHNESS_MAP_SWIZZLE == 3"
Print #1, "         float smoothnessValue = smoothnessValues.a;"
Print #1, "     #else"
Print #1, "         float smoothnessValue = smoothnessValues.r;"
Print #1, "     #endif"
Print #1, "     #if SMOOTHNESS_MAP_TYPE == 1"
Print #1, "         smoothnessValue = RoughnessToSmoothness(smoothnessValue);"
Print #1, "     #elif SMOOTHNESS_MAP_TYPE == 2"
Print #1, "         smoothnessValue = 1 - smoothnessValue;"
Print #1, "     #endif"
Print #1, "     #if SMOOTHNESS_MAP_APPLY_SCALE == 1"
Print #1, "         smoothnessValue *= smoothness;"
Print #1, "     #elif SMOOTHNESS_MAP_APPLY_SCALE == 2"
Print #1, "         smoothnessValue = pow(smoothnessValue, smoothness);"
Print #1, "     #endif"
Print #1, "     return saturate(smoothnessValue);"
Print #1, " #else"
Print #1, "     return smoothness;"
Print #1, " #endif"
Print #1, " }"
Print #1, " float GetMetalness(float2 coord)"
Print #1, " {"
Print #1, " #if METALNESS_MAP_FROM"
Print #1, "     #if METALNESS_MAP_UV_FLIP == 1"
Print #1, "         coord.x = 1 - coord.x;"
Print #1, "     #elif METALNESS_MAP_UV_FLIP == 2"
Print #1, "         coord.y = 1 - coord.y;"
Print #1, "     #elif METALNESS_MAP_UV_FLIP == 3"
Print #1, "         coord = 1 - coord;"
Print #1, "     #endif"
Print #1, "     #if METALNESS_MAP_FROM == 3"
Print #1, "         float4 metalnessValues = use_texture ? tex2D(MetalnessMapSamp, coord * metalnessMapLoopNum) : 0;"
Print #1, "     #elif METALNESS_MAP_FROM == 4"
Print #1, "         float4 metalnessValues = use_spheremap ? tex2D(MetalnessMapSamp, coord * metalnessMapLoopNum) : 0;"
Print #1, "     #elif METALNESS_MAP_FROM == 5"
Print #1, "         float4 metalnessValues = use_toon ? tex2D(MetalnessMapSamp, coord * metalnessMapLoopNum) : 0;"
Print #1, "     #elif METALNESS_MAP_FROM == 7"
Print #1, "         float4 metalnessValues = MaterialAmbient;"
Print #1, "     #elif METALNESS_MAP_FROM == 8"
Print #1, "         float4 metalnessValues = MaterialSpecular;"
Print #1, "     #elif METALNESS_MAP_FROM == 9"
Print #1, "         float4 metalnessValues = ShininessToSmoothness(MaterialPower);"
Print #1, "     #else"
Print #1, "         float4 metalnessValues = tex2D(MetalnessMapSamp, coord * metalnessMapLoopNum);"
Print #1, "     #endif"
Print #1, "     #if METALNESS_MAP_SWIZZLE == 1"
Print #1, "         float metalnessValue = metalnessValues.g;"
Print #1, "     #elif METALNESS_MAP_SWIZZLE == 2"
Print #1, "         float metalnessValue = metalnessValues.b;"
Print #1, "     #elif METALNESS_MAP_SWIZZLE == 3"
Print #1, "         float metalnessValue = metalnessValues.a;"
Print #1, "     #else"
Print #1, "         float metalnessValue = metalnessValues.r;"
Print #1, "     #endif"
Print #1, "     #if METALNESS_MAP_APPLY_SCALE == 1"
Print #1, "         metalnessValue *= metalness;"
Print #1, "     #elif METALNESS_MAP_APPLY_SCALE == 2"
Print #1, "         metalnessValue = pow(metalnessValue, metalness);"
Print #1, "     #endif"
Print #1, "     return saturate(metalnessValue);"
Print #1, " #else"
Print #1, "     return metalness;"
Print #1, " #endif"
Print #1, " }"
Print #1, " float3 GetSpecular(float2 coord)"
Print #1, " {"
Print #1, " #if SPECULAR_MAP_FROM"
Print #1, "     #if CUSTOM_ENABLE && SPECULAR_MAP_TYPE <= 1"
Print #1, "         #error Unsupported material, When CUSTOM_ENABLE > 0 and specular map has multiple channels (RGB), Please set CUSTOM_ENABLE to 0"
Print #1, "     #endif"
Print #1, "     #if SPECULAR_MAP_UV_FLIP == 1"
Print #1, "         coord.x = 1 - coord.x;"
Print #1, "     #elif SPECULAR_MAP_UV_FLIP == 2"
Print #1, "         coord.y = 1 - coord.y;"
Print #1, "     #elif SPECULAR_MAP_UV_FLIP == 3"
Print #1, "         coord = 1 - coord;"
Print #1, "     #endif"
Print #1, "     #if SPECULAR_MAP_FROM == 3"
Print #1, "         float4 specularColor = use_texture ? tex2D(SpecularMapSamp, coord * specularMapLoopNum) : 0.5;"
Print #1, "     #elif SPECULAR_MAP_FROM == 4"
Print #1, "         float4 specularColor = use_spheremap ? tex2D(SpecularMapSamp, coord * specularMapLoopNum) : 0.5;"
Print #1, "     #elif SPECULAR_MAP_FROM == 5"
Print #1, "         float4 specularColor = use_toon ? tex2D(SpecularMapSamp, coord * specularMapLoopNum) : 0.5;"
Print #1, "     #elif SPECULAR_MAP_FROM == 7"
Print #1, "         float4 specularColor = MaterialAmbient;"
Print #1, "     #elif SPECULAR_MAP_FROM == 8"
Print #1, "         float4 specularColor = MaterialSpecular;"
Print #1, "     #elif SPECULAR_MAP_FROM == 9"
Print #1, "         #error Unsupported options 9."
Print #1, "     #else"
Print #1, "         float4 specularColor = tex2D(SpecularMapSamp, coord * specularMapLoopNum);"
Print #1, "     #endif"
Print #1, "     #if SPECULAR_MAP_TYPE == 2 || SPECULAR_MAP_TYPE == 3"
Print #1, "         #if SPECULAR_MAP_SWIZZLE == 1"
Print #1, "             specularColor = specularColor.g;"
Print #1, "         #elif SPECULAR_MAP_SWIZZLE == 2"
Print #1, "             specularColor = specularColor.b;"
Print #1, "         #elif SPECULAR_MAP_SWIZZLE == 3"
Print #1, "             specularColor = specularColor.a;"
Print #1, "         #else"
Print #1, "             specularColor = specularColor.r;"
Print #1, "         #endif"
Print #1, "     #endif"
Print #1, "     #if SPECULAR_MAP_TYPE == 1 || SPECULAR_MAP_TYPE == 3"
Print #1, "         specularColor = 0.16 * specularColor * specularColor;"
Print #1, "     #else"
Print #1, "         specularColor = 0.08 * specularColor;"
Print #1, "     #endif"
Print #1, "     #if SPECULAR_MAP_APPLY_SCALE == 1"
Print #1, "         specularColor.rgb *= specular;"
Print #1, "     #elif SPECULAR_MAP_APPLY_SCALE == 2"
Print #1, "         specularColor.rgb = pow(specularColor.rgb, specular);"
Print #1, "     #endif"
Print #1, "     return clamp(specularColor.rgb, 0.01, 1.0);"
Print #1, " #else"
Print #1, "     #if SPECULAR_MAP_TYPE == 1 || SPECULAR_MAP_TYPE == 3"
Print #1, "         return saturate(0.16 * specular * specular);"
Print #1, "     #elif SPECULAR_MAP_TYPE == 4"
Print #1, "         return saturate(specular);"
Print #1, "     #else"
Print #1, "         return saturate(0.08 * specular);"
Print #1, "     #endif"
Print #1, " #endif"
Print #1, " }"
Print #1, " float GetOcclusion(float2 coord)"
Print #1, " {"
Print #1, " #if OCCLUSION_MAP_FROM"
Print #1, "     #if OCCLUSION_MAP_UV_FLIP == 1"
Print #1, "         coord.x = 1 - coord.x;"
Print #1, "     #elif OCCLUSION_MAP_UV_FLIP == 2"
Print #1, "         coord.y = 1 - coord.y;"
Print #1, "     #elif OCCLUSION_MAP_UV_FLIP == 3"
Print #1, "         coord = 1 - coord;"
Print #1, "     #endif"
Print #1, "     #if OCCLUSION_MAP_FROM == 3"
Print #1, "         float4 occlusionValues = use_texture ? tex2D(OcclusionMapSamp, coord * occlusionMapLoopNum) : 1;"
Print #1, "     #elif OCCLUSION_MAP_FROM == 4"
Print #1, "         float4 occlusionValues = use_spheremap ? tex2D(OcclusionMapSamp, coord * occlusionMapLoopNum) : 1;"
Print #1, "     #elif OCCLUSION_MAP_FROM == 5"
Print #1, "         float4 occlusionValues = use_toon ? tex2D(OcclusionMapSamp, coord * occlusionMapLoopNum) : 1;"
Print #1, "     #elif OCCLUSION_MAP_FROM == 7"
Print #1, "         float4 occlusionValues = MaterialAmbient;"
Print #1, "     #elif OCCLUSION_MAP_FROM == 8"
Print #1, "         float4 occlusionValues = MaterialSpecular;"
Print #1, "     #elif OCCLUSION_MAP_FROM == 9"
Print #1, "         #error Unsupported options 9."
Print #1, "     #else"
Print #1, "         float4 occlusionValues = tex2D(OcclusionMapSamp, coord * occlusionMapLoopNum);"
Print #1, "     #endif"
Print #1, "     #if OCCLUSION_MAP_SWIZZLE == 1"
Print #1, "         float occlusionValue = occlusionValues.g;"
Print #1, "     #elif OCCLUSION_MAP_SWIZZLE == 2"
Print #1, "         float occlusionValue = occlusionValues.b;"
Print #1, "     #elif OCCLUSION_MAP_SWIZZLE == 3"
Print #1, "         float occlusionValue = occlusionValues.a;"
Print #1, "     #else"
Print #1, "         float occlusionValue = occlusionValues.r;"
Print #1, "     #endif"
Print #1, "     #if OCCLUSION_MAP_TYPE == 1 || OCCLUSION_MAP_TYPE == 3"
Print #1, "         occlusionValue = srgb2linear(occlusionValue);"
Print #1, "     #endif"
Print #1, "     #if OCCLUSION_MAP_APPLY_SCALE == 1"
Print #1, "         occlusionValue *= occlusion;"
Print #1, "     #elif OCCLUSION_MAP_APPLY_SCALE == 2"
Print #1, "         occlusionValue = pow(occlusionValue, occlusion);"
Print #1, "     #endif"
Print #1, "     return saturate(occlusionValue);"
Print #1, " #else"
Print #1, "     return saturate(occlusion);"
Print #1, " #endif"
Print #1, " }"
Print #1, " float3 GetEmissiveColor(float2 coord)"
Print #1, " {"
Print #1, " #if EMISSIVE_ENABLE"
Print #1, "     #if EMISSIVE_MAP_UV_FLIP == 1"
Print #1, "         coord.x = 1 - coord.x;"
Print #1, "     #elif EMISSIVE_MAP_UV_FLIP == 2"
Print #1, "         coord.y = 1 - coord.y;"
Print #1, "     #elif EMISSIVE_MAP_UV_FLIP == 3"
Print #1, "         coord = 1 - coord;"
Print #1, "     #endif"
Print #1, "     #if EMISSIVE_MAP_FROM == 1 || EMISSIVE_MAP_FROM == 2 || EMISSIVE_MAP_FROM == 6"
Print #1, "         float4 emissiveTexCol = tex2D(EmissiveMapSamp, coord * emissiveMapLoopNum);"
Print #1, "         float3 emissiveColor = lerp(0, emissiveTexCol.rgb, emissiveTexCol.a);"
Print #1, "     #elif EMISSIVE_MAP_FROM == 3"
Print #1, "         float4 emissiveTexCol = use_texture ? tex2D(EmissiveMapSamp, coord * emissiveMapLoopNum) : 0;"
Print #1, "         float3 emissiveColor = lerp(0, emissiveTexCol.rgb, emissiveTexCol.a);"
Print #1, "     #elif EMISSIVE_MAP_FROM == 4"
Print #1, "         float4 emissiveTexCol = use_spheremap ? tex2D(EmissiveMapSamp, coord * emissiveMapLoopNum) : 0;"
Print #1, "         float3 emissiveColor = lerp(0, emissiveTexCol.rgb, emissiveTexCol.a);"
Print #1, "     #elif EMISSIVE_MAP_FROM == 5"
Print #1, "         float4 emissiveTexCol = use_toon ? tex2D(EmissiveMapSamp, coord * emissiveMapLoopNum) : 0;"
Print #1, "         float3 emissiveColor = lerp(0, emissiveTexCol.rgb, emissiveTexCol.a);"
Print #1, "     #elif EMISSIVE_MAP_FROM == 7"
Print #1, "         float3 emissiveColor = MaterialAmbient.rgb;"
Print #1, "     #elif EMISSIVE_MAP_FROM == 8"
Print #1, "         float3 emissiveColor = MaterialSpecular.rgb;"
Print #1, "     #elif EMISSIVE_MAP_FROM == 9"
Print #1, "         #error Unsupported options 9."
Print #1, "     #else"
Print #1, "         float3 emissiveColor = emissive;"
Print #1, "     #endif"
Print #1, "     emissiveColor = srgb2linear(emissiveColor);"
Print #1, "     #if EMISSIVE_MAP_APPLY_SCALE"
Print #1, "         emissiveColor *= emissive.rgb;"
Print #1, "     #endif"
Print #1, "     #if EMISSIVE_MAP_APPLY_MORPH_COLOR"
Print #1, "         emissiveColor *= MorphColor;"
Print #1, "     #endif"
Print #1, "     #if EMISSIVE_MAP_APPLY_BLINK"
Print #1, "         emissiveColor *= LightBlink;"
Print #1, "     #endif"
Print #1, "     return emissiveColor;"
Print #1, " #else"
Print #1, "     return 0;"
Print #1, " #endif"
Print #1, " }"
Print #1, " float GetEmissiveIntensity()"
Print #1, " {"
Print #1, " #if EMISSIVE_ENABLE"
Print #1, "     #if EMISSIVE_MAP_APPLY_MORPH_INTENSITY"
Print #1, "         return emissiveIntensity * LightIntensity;"
Print #1, "     #else"
Print #1, "         return emissiveIntensity;"
Print #1, "     #endif"
Print #1, " #else"
Print #1, "     return 0;"
Print #1, " #endif"
Print #1, " }"
Print #1, " float GetCustomDataA(float2 coord)"
Print #1, " {"
Print #1, " #if CUSTOM_ENABLE"
Print #1, "     float customData = customA;"
Print #1, "     #if CUSTOM_A_MAP_FROM"
Print #1, "         #if CUSTOM_A_MAP_UV_FLIP == 1"
Print #1, "             coord.x = 1 - coord.x;"
Print #1, "         #elif CUSTOM_A_MAP_UV_FLIP == 2"
Print #1, "             coord.y = 1 - coord.y;"
Print #1, "         #elif CUSTOM_A_MAP_UV_FLIP == 3"
Print #1, "             coord = 1 - coord;"
Print #1, "         #endif"
Print #1, "         #if CUSTOM_A_MAP_FROM == 3"
Print #1, "             float4 customValues = use_texture ? tex2D(CustomAMapSamp, coord * customAMapLoopNum) : 0;"
Print #1, "         #elif CUSTOM_A_MAP_FROM == 4"
Print #1, "             float4 customValues = use_spheremap ? tex2D(CustomAMapSamp, coord * customAMapLoopNum) : 0;"
Print #1, "         #elif CUSTOM_A_MAP_FROM == 5"
Print #1, "             float4 customValues = use_toon ? tex2D(CustomAMapSamp, coord * customAMapLoopNum) : 0;"
Print #1, "         #elif CUSTOM_A_MAP_FROM == 7"
Print #1, "             float4 customValues = MaterialAmbient;"
Print #1, "         #elif CUSTOM_A_MAP_FROM == 8"
Print #1, "             float4 customValues = MaterialSpecular;"
Print #1, "         #elif CUSTOM_A_MAP_FROM == 9"
Print #1, "             #error Unsupported options 9."
Print #1, "         #else"
Print #1, "             float4 customValues = tex2D(CustomAMapSamp, coord * customAMapLoopNum);"
Print #1, "         #endif"
Print #1, "         #if CUSTOM_A_MAP_SWIZZLE == 1"
Print #1, "             customData = customValues.g;"
Print #1, "         #elif CUSTOM_A_MAP_SWIZZLE == 2"
Print #1, "             customData = customValues.b;"
Print #1, "         #elif CUSTOM_A_MAP_SWIZZLE == 3"
Print #1, "             customData = customValues.a;"
Print #1, "         #else"
Print #1, "             customData = customValues.r;"
Print #1, "         #endif"
Print #1, "         #if CUSTOM_A_MAP_APPLY_SCALE == 1"
Print #1, "             customData *= customA;"
Print #1, "         #elif CUSTOM_A_MAP_APPLY_SCALE == 2"
Print #1, "             customData = pow(customData, customA);"
Print #1, "         #endif"
Print #1, "     #endif"
Print #1, "     #if CUSTOM_ENABLE == SHADINGMODELID_CLEAR_COAT"
Print #1, "         #if CUSTOM_A_MAP_COLOR_FLIP"
Print #1, "             return RoughnessToSmoothness(customData);"
Print #1, "         #else"
Print #1, "             return customData;"
Print #1, "         #endif"
Print #1, "     #else"
Print #1, "         #if CUSTOM_A_MAP_COLOR_FLIP"
Print #1, "             return 1 - customData;"
Print #1, "         #else"
Print #1, "             return customData;"
Print #1, "         #endif"
Print #1, "     #endif"
Print #1, " #else"
Print #1, "     return 0.0f;"
Print #1, " #endif"
Print #1, " }"
Print #1, " float3 GetCustomDataB(float2 coord)"
Print #1, " {"
Print #1, " #if CUSTOM_ENABLE"
Print #1, "     float3 customData = srgb2linear(customB);"
Print #1, "     #if CUSTOM_B_MAP_FROM"
Print #1, "         #if CUSTOM_B_MAP_UV_FLIP == 1"
Print #1, "             coord.x = 1 - coord.x;"
Print #1, "         #elif CUSTOM_B_MAP_UV_FLIP == 2"
Print #1, "             coord.y = 1 - coord.y;"
Print #1, "         #elif CUSTOM_B_MAP_UV_FLIP == 3"
Print #1, "             coord = 1 - coord;"
Print #1, "         #endif"
Print #1, "         #if CUSTOM_B_MAP_FROM == 3"
Print #1, "             customData = use_texture ? tex2D(CustomBMapSamp, coord * customBMapLoopNum).rgb : 0;"
Print #1, "         #elif CUSTOM_B_MAP_FROM == 4"
Print #1, "             customData = use_spheremap ? tex2D(CustomBMapSamp, coord * customBMapLoopNum).rgb : 0;"
Print #1, "         #elif CUSTOM_B_MAP_FROM == 5"
Print #1, "             customData = use_toon ? tex2D(CustomBMapSamp, coord * customBMapLoopNum) : 0;"
Print #1, "         #elif CUSTOM_B_MAP_FROM == 7"
Print #1, "             customData = MaterialAmbient;"
Print #1, "         #elif CUSTOM_B_MAP_FROM == 8"
Print #1, "             customData = MaterialSpecular;"
Print #1, "         #elif CUSTOM_B_MAP_FROM == 9"
Print #1, "             #error Unsupported options 9."
Print #1, "         #else"
Print #1, "             customData = tex2D(CustomBMapSamp, coord * customBMapLoopNum).rgb;"
Print #1, "         #endif"
Print #1, "         #if CUSTOM_B_MAP_FROM && CUSTOM_B_MAP_TYPE == 0"
Print #1, "             customData = srgb2linear(customData);"
Print #1, "         #endif"
Print #1, "         #if CUSTOM_B_MAP_COLOR_FLIP"
Print #1, "             customData = 1 - customData;"
Print #1, "         #endif"
Print #1, "         #if CUSTOM_B_MAP_APPLY_SCALE == 1"
Print #1, "             customData *= customB;"
Print #1, "         #elif CUSTOM_B_MAP_APPLY_SCALE == 2"
Print #1, "             customData = pow(customData, customB);"
Print #1, "         #endif"
Print #1, "     #endif"
Print #1, "     return saturate(customData);"
Print #1, " #else"
Print #1, "     return 0.0;"
Print #1, " #endif"
Print #1, " }"
Print #1, " float GetLightMode(MaterialParam material)"
Print #1, " {"
Print #1, " #if CUSTOM_ENABLE"
Print #1, "     #if CUSTOM_ENABLE >= SHADINGMODELID_MASK"
Print #1, "         #error Unsupported option Shading Material ID"
Print #1, "     #endif"
Print #1, "     #if EMISSIVE_ENABLE"
Print #1, "         return any(saturate(material.emissive - EMISSIVE_EPSILON)) ? SHADINGMODELID_EMISSIVE : CUSTOM_ENABLE;"
Print #1, "     #else"
Print #1, "         return CUSTOM_ENABLE;"
Print #1, "     #endif"
Print #1, " #else"
Print #1, "     return any(saturate(material.emissive - EMISSIVE_EPSILON)) ? SHADINGMODELID_EMISSIVE : SHADINGMODELID_DEFAULT;"
Print #1, " #endif"
Print #1, " }"
Print #1, " void MaterialVS("
Print #1, "     in float4 Position : POSITION, "
Print #1, "     in float3 Normal : NORMAL, "
Print #1, "     in float2 Texcoord1 : TEXCOORD0,"
Print #1, " #if OCCLUSION_MAP_TYPE == 2 || OCCLUSION_MAP_TYPE == 3"
Print #1, "     in float2 Texcoord2 : TEXCOORD1,"
Print #1, " #endif"
Print #1, "     out float3 oNormal   : TEXCOORD0,"
Print #1, "     out float2 oTexcoord1 : TEXCOORD1,"
Print #1, " #if OCCLUSION_MAP_TYPE == 2 || OCCLUSION_MAP_TYPE == 3"
Print #1, "     out float2 oTexcoord2 : TEXCOORD2,"
Print #1, " #endif"
Print #1, "     out float4 oWorldPos  : TEXCOORD3,"
Print #1, "     out float4 oPosition  : POSITION)"
Print #1, " {"
Print #1, "     oNormal = Normal;"
Print #1, "     oTexcoord1 = Texcoord1;"
Print #1, " #if OCCLUSION_MAP_TYPE == 2 || OCCLUSION_MAP_TYPE == 3"
Print #1, "     oTexcoord2 = Texcoord2;"
Print #1, " #endif"
Print #1, "     oPosition = mul(Position, matWorldViewProject);"
Print #1, "     oWorldPos = float4(Position.xyz, oPosition.w);"
Print #1, " }"
Print #1, " GbufferParam MaterialPS("
Print #1, "     in float3 normal   : TEXCOORD0,"
Print #1, "     in float2 coord0   : TEXCOORD1,"
Print #1, " #if OCCLUSION_MAP_TYPE == 2 || OCCLUSION_MAP_TYPE == 3"
Print #1, "     in float2 coord1   : TEXCOORD2,"
Print #1, " #endif"
Print #1, "     in float4 worldPos : TEXCOORD3)"
Print #1, " {"
Print #1, "     normal = normalize(normal);"
Print #1, " #if PARALLAX_MAP_FROM"
Print #1, "     #if PARALLAX_MAP_UV_FLIP"
Print #1, "         coord0.y = 1 - coord0.y;"
Print #1, "     #endif"
Print #1, "     float3 viewdir = ParallaxOcclusionDirection(normal, worldPos.xyz, coord0 * parallaxMapLoopNum);"
Print #1, "     coord0 = ParallaxOcclusionMap(ParallaxMapSamp, coord0 * parallaxMapLoopNum, viewdir, 15, parallaxMapScale);"
Print #1, "     #if PARALLAX_MAP_UV_FLIP"
Print #1, "         coord0.y = 1 - coord0.y;"
Print #1, "     #endif"
Print #1, " #endif"
Print #1, "     float alpha = GetAlpha(coord0);"
Print #1, "     clip(alpha - ALPHA_THRESHOLD);"
Print #1, " #if ALPHA_MAP_FROM == 2"
Print #1, "     clip(-1);"
Print #1, " #endif"
Print #1, "     MaterialParam material;"
Print #1, "     material.albedo = GetSubAlbedo(GetAlbedo(coord0), coord0);"
Print #1, "     material.normal = GetNormal(normal, worldPos.xyz, coord0);"
Print #1, "     material.smoothness = GetSmoothness(coord0);"
Print #1, "     material.metalness = GetMetalness(coord0);"
Print #1, "     material.specular = GetSpecular(coord0);"
Print #1, "     material.customDataA = GetCustomDataA(coord0);"
Print #1, "     material.customDataB = GetCustomDataB(coord0);"
Print #1, "     material.emissive = GetEmissiveColor(coord0);"
Print #1, "     material.emissiveIntensity = GetEmissiveIntensity();"
Print #1, " #if OCCLUSION_MAP_TYPE == 2 || OCCLUSION_MAP_TYPE == 3"
Print #1, "     material.visibility = GetOcclusion(coord1);"
Print #1, " #else"
Print #1, "     material.visibility = GetOcclusion(coord0);"
Print #1, " #endif"
Print #1, "     material.lightModel = GetLightMode(material);"
Print #1, "     material.alpha = 1;"
Print #1, "     return EncodeGbuffer(material, worldPos.w);"
Print #1, " }"
Print #1, " GbufferParam Material2PS("
Print #1, "     in float3 normal   : TEXCOORD0,"
Print #1, "     in float2 coord0   : TEXCOORD1,"
Print #1, " #if OCCLUSION_MAP_TYPE == 2 || OCCLUSION_MAP_TYPE == 3"
Print #1, "     in float2 coord1   : TEXCOORD2,"
Print #1, " #endif"
Print #1, "     in float4 worldPos : TEXCOORD3)"
Print #1, " {"
Print #1, "     normal = normalize(normal);"
Print #1, " #if PARALLAX_MAP_FROM"
Print #1, "     #if PARALLAX_MAP_UV_FLIP"
Print #1, "         coord0.y = 1 - coord0.y;"
Print #1, "     #endif"
Print #1, "     float3 viewdir = ParallaxOcclusionDirection(normal, worldPos.xyz, coord0);"
Print #1, " #if PARALLAX_MAP_TYPE"
Print #1, "     coord0 = ParallaxOcclusionMap(ParallaxMapSamp, coord0 * parallaxMapLoopNum, viewdir, 15, parallaxMapScale);"
Print #1, " #else"
Print #1, "     coord0 *= parallaxMapLoopNum;"
Print #1, " #endif"
Print #1, "     #if PARALLAX_MAP_UV_FLIP"
Print #1, "         coord0.y = 1 - coord0.y;"
Print #1, "     #endif"
Print #1, " #endif"
Print #1, "     float alpha = GetAlpha(coord0);"
Print #1, "     clip(alpha - 0.01);"
Print #1, "     MaterialParam material;"
Print #1, "     material.albedo = GetSubAlbedo(GetAlbedo(coord0), coord0);"
Print #1, "     material.normal = GetNormal(normal, worldPos.xyz, coord0);"
Print #1, "     material.smoothness = GetSmoothness(coord0);"
Print #1, "     material.metalness = GetMetalness(coord0);"
Print #1, "     material.specular = GetSpecular(coord0);"
Print #1, "     material.customDataA = GetCustomDataA(coord0);"
Print #1, "     material.customDataB = GetCustomDataB(coord0);"
Print #1, "     material.emissive = GetEmissiveColor(coord0);"
Print #1, "     material.emissiveIntensity = GetEmissiveIntensity();"
Print #1, " #if OCCLUSION_MAP_TYPE == 2 || OCCLUSION_MAP_TYPE == 3"
Print #1, "     material.visibility = GetOcclusion(coord1);"
Print #1, " #else"
Print #1, "     material.visibility = GetOcclusion(coord0);"
Print #1, " #endif"
Print #1, "     material.lightModel = GetLightMode(material);"
Print #1, " #if ALPHA_MAP_FROM == 2"
Print #1, "     material.alpha = alpha;"
Print #1, " #else"
Print #1, "     material.alpha = alpha > ALPHA_THRESHOLD ? 0 : alpha;"
Print #1, " #endif"
Print #1, "     return EncodeGbuffer(material, worldPos.w);"
Print #1, " }"
Print #1, " #define OBJECT_TEC(name, mmdpass)\"
Print #1, "     technique name<string MMDPass = mmdpass;\"
Print #1, "     string Script =\"
Print #1, "         ""RenderColorTarget0=;""\"
Print #1, "         ""RenderColorTarget1=Gbuffer2RT;""\"
Print #1, "         ""RenderColorTarget2=Gbuffer3RT;""\"
Print #1, "         ""RenderColorTarget3=Gbuffer4RT;""\"
Print #1, "         ""Pass=DrawObject;""\"
Print #1, "         ""RenderColorTarget0=Gbuffer5RT;""\"
Print #1, "         ""RenderColorTarget1=Gbuffer6RT;""\"
Print #1, "         ""RenderColorTarget2=Gbuffer7RT;""\"
Print #1, "         ""RenderColorTarget3=Gbuffer8RT;""\"
Print #1, "         ""Pass=DrawAlphaObject;""\"
Print #1, "     ;>{\"
Print #1, "         pass DrawObject {\"
Print #1, "             AlphaTestEnable = false; AlphaBlendEnable = false;\"
Print #1, "             VertexShader = compile vs_3_0 MaterialVS();\"
Print #1, "             PixelShader  = compile ps_3_0 MaterialPS();\"
Print #1, "         }\"
Print #1, "         pass DrawAlphaObject {\"
Print #1, "             AlphaTestEnable = false; AlphaBlendEnable = false;\"
Print #1, "             VertexShader = compile vs_3_0 MaterialVS();\"
Print #1, "             PixelShader  = compile ps_3_0 Material2PS();\"
Print #1, "         }\"
Print #1, "     }"
Print #1, " OBJECT_TEC(MainTec0, ""object"")"
Print #1, " OBJECT_TEC(MainTecBS0, ""object_ss"")"
Print #1, " technique EdgeTec<string MMDPass = ""edge"";>{}"
Print #1, " technique ShadowTech<string MMDPass = ""shadow"";>{}"
Print #1, " technique ZplotTec<string MMDPass = ""zplot"";>{}"
Close #1
Else
k = MsgBox("请输入输出位置", , "错误")
End If
End Sub

Private Sub Command6_Click()
AlbedoR = Val(AlbedoR)
AlbedoG = Val(AlbedoG)
AlbedoB = Val(AlbedoB)
AlbedoScale = Val(AlbedoScale)
NMScale = Val(NMScale)
NMLoop = Val(NMLoop)
MEscale = Val(MEscale)
MEloop = Val(MEloop)
MEpara = Val(MEpara)
PLscale = Val(PLscale)
PLloop = Val(PLloop)
EMint = Val(EMint)
EMcolorR = Val(EMcolorR)
EMcolorG = Val(EMcolorG)
EMcolorB = Val(EMcolorB)
SPCscale = Val(SPCscale)
SPCloop = Val(SPCloop)
SPCpara = Val(SPCpara)
alphaloop = Val(alphaloop)
SMscale = Val(SMscale)
SMloop = Val(SMloop)
SMpara = Val(SMpara)
OCCscale = Val(OCCscale)
OCCloop = Val(OCCloop)
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
If OCCcheck = 1 Then Print #1, " const float occlusion = " & OCCscale.Text & ";"
If OCCcheck = 0 Then Print #1, " const float occlusion = 1;"
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
If EMtexcheck.Value = 1 Then Print #1, " const float  emissiveIntensity = " & EMint.Text; ";"
If EMtexcheck.Value = 0 Then Print #1, " const float  emissiveIntensity = 1.0;"
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

EMcolor.BackColor = RGB(EMcolorR, EMcolorG, EMcolorB)
End Sub

Private Sub EMcolorG_Change()

EMcolor.BackColor = RGB(EMcolorR, EMcolorG, EMcolorB)
End Sub

Private Sub EMcolorR_Change()

EMcolor.BackColor = RGB(EMcolorR, EMcolorG, EMcolorB)
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

Private Sub SPCtex_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, X As Single, Y As Single)
SPCtex.Text = Data.Files(1)
End Sub
