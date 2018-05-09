VERSION 5.00
Begin VB.Form CoForm 
   Caption         =   "自动化控制器"
   ClientHeight    =   10230
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   15570
   Icon            =   "CoForm.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   10230
   ScaleWidth      =   15570
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton Command5 
      Caption         =   "导入"
      Height          =   375
      Left            =   7200
      TabIndex        =   29
      Top             =   120
      Width           =   1335
   End
   Begin VB.CommandButton Command4 
      Caption         =   "新建"
      Height          =   375
      Left            =   5760
      TabIndex        =   28
      Top             =   120
      Width           =   1335
   End
   Begin VB.CommandButton Command3 
      Caption         =   "保存"
      Height          =   375
      Left            =   4440
      TabIndex        =   27
      Top             =   120
      Width           =   1215
   End
   Begin VB.ComboBox Combo1 
      Height          =   300
      Left            =   2040
      TabIndex        =   25
      Top             =   240
      Width           =   2295
   End
   Begin VB.TextBox OutText 
      Height          =   270
      Left            =   6240
      TabIndex        =   23
      Top             =   9600
      Width           =   3855
   End
   Begin VB.CommandButton Command2 
      Caption         =   "输出"
      Height          =   495
      Left            =   10440
      TabIndex        =   14
      Top             =   9480
      Width           =   1335
   End
   Begin VB.CheckBox Check2 
      Caption         =   "法线贴图"
      Height          =   375
      Left            =   360
      TabIndex        =   2
      Top             =   6600
      Width           =   1335
   End
   Begin VB.CheckBox Check1 
      Caption         =   "漫反射贴图"
      CausesValidation=   0   'False
      Height          =   375
      Left            =   360
      TabIndex        =   1
      Top             =   960
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "显示法线贴图"
      Height          =   495
      Left            =   5640
      TabIndex        =   0
      Top             =   8640
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   2175
      Left            =   240
      TabIndex        =   3
      Top             =   1080
      Width           =   6975
      Begin VB.TextBox TexText 
         Height          =   270
         Left            =   2880
         OLEDropMode     =   1  'Manual
         TabIndex        =   22
         Top             =   960
         Width           =   3495
      End
      Begin VB.CheckBox Check3 
         Caption         =   "替换原始材质"
         Height          =   255
         Left            =   1440
         TabIndex        =   21
         Top             =   960
         Width           =   1695
      End
      Begin VB.TextBox Text2 
         Height          =   270
         Left            =   1080
         TabIndex        =   12
         Text            =   "1"
         Top             =   1560
         Width           =   975
      End
      Begin VB.TextBox Bcolor 
         Height          =   270
         Left            =   4920
         TabIndex        =   9
         Text            =   "255"
         Top             =   345
         Width           =   855
      End
      Begin VB.TextBox Gcolor 
         Height          =   270
         Left            =   3480
         TabIndex        =   8
         Text            =   "255"
         Top             =   345
         Width           =   735
      End
      Begin VB.TextBox Rcolor 
         Height          =   270
         Left            =   1920
         TabIndex        =   7
         Text            =   "255"
         Top             =   345
         Width           =   735
      End
      Begin VB.Label Color 
         Height          =   495
         Left            =   6000
         TabIndex        =   13
         Top             =   240
         Width           =   615
      End
      Begin VB.Label Label3 
         Caption         =   "材质贴图："
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
         Left            =   240
         TabIndex        =   10
         Top             =   960
         Width           =   1215
      End
      Begin VB.Label Label4 
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
         Left            =   480
         TabIndex        =   11
         Top             =   1560
         Width           =   735
      End
      Begin VB.Label Label2 
         Caption         =   "红色：         绿色：        蓝色："
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
         TabIndex        =   6
         Top             =   360
         Width           =   3975
      End
      Begin VB.Label Label1 
         Caption         =   "固定颜色"
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
         Left            =   240
         TabIndex        =   5
         Top             =   360
         Width           =   975
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Frame2"
      Height          =   2535
      Left            =   240
      TabIndex        =   4
      Top             =   6720
      Width           =   6975
      Begin VB.TextBox NML 
         Height          =   270
         Left            =   1920
         TabIndex        =   20
         Text            =   "1"
         Top             =   1785
         Width           =   1455
      End
      Begin VB.TextBox NMS 
         Height          =   270
         Left            =   1920
         TabIndex        =   19
         Text            =   "1"
         Top             =   1185
         Width           =   1455
      End
      Begin VB.TextBox NMText 
         Height          =   270
         Left            =   1680
         OLEDropMode     =   1  'Manual
         TabIndex        =   15
         Top             =   465
         Width           =   4695
      End
      Begin VB.Label Label7 
         Caption         =   "法线贴图大小："
         Height          =   375
         Left            =   480
         TabIndex        =   18
         Top             =   1800
         Width           =   1335
      End
      Begin VB.Label Label6 
         Caption         =   "法线贴图强度："
         Height          =   255
         Left            =   480
         TabIndex        =   17
         Top             =   1200
         Width           =   1335
      End
      Begin VB.Label Label5 
         Caption         =   "法线贴图路径："
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
         Left            =   240
         TabIndex        =   16
         Top             =   480
         Width           =   1575
      End
   End
   Begin VB.Label Label9 
      Caption         =   "正在编辑的材质："
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
      Left            =   240
      TabIndex        =   26
      Top             =   240
      Width           =   2175
   End
   Begin VB.Label Label8 
      Caption         =   "Fx输出位置："
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
      Left            =   4920
      TabIndex        =   24
      Top             =   9600
      Width           =   1335
   End
End
Attribute VB_Name = "CoForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim TexPa(), TexName(100) As String
Dim abasecolor, basecolor, NMcolor, TexNumber As Integer
Function pathchange(path As String)
Dim a() As String
Dim done As String
a() = Split(path, "\")
ub = UBound(a())
For i = 0 To ub - 1 Step 1
done = done & a(i) & "\\"
Next
done = done & a(ub)
pathchange = done
End Function

Private Sub Bcolor_Change()
If Bcolor.Text = "" Then
Bcolor.Text = 0
End If
Color.BackColor = RGB(Int(Rcolor.Text), Int(Gcolor.Text), Int(Bcolor.Text))
End Sub

Private Sub Check1_Click()
If basecolor = -1 Then
Rcolor.Locked = True
Gcolor.Locked = True
Bcolor.Locked = True
Rcolor.BackColor = RGB(144, 144, 144)
Gcolor.BackColor = RGB(144, 144, 144)
Bcolor.BackColor = RGB(144, 144, 144)
Text2.Locked = False
Text2.BackColor = RGB(255, 255, 255)
Color.Visible = False
basecolor = 1
Else
Rcolor.Locked = False
Gcolor.Locked = False
Bcolor.Locked = False
Rcolor.BackColor = RGB(255, 255, 255)
Gcolor.BackColor = RGB(255, 255, 255)
Bcolor.BackColor = RGB(255, 255, 255)
Text2.BackColor = RGB(144, 144, 144)
Text2.Locked = True
Color.Visible = True
basecolor = -1
End If
End Sub

Private Sub Check2_Click()
If NMcolor = -1 Then
NMText.BackColor = RGB(255, 255, 255)
NMText.Locked = False
NML.Locked = False
NML.BackColor = RGB(255, 255, 255)
NMS.Locked = False
NMS.BackColor = RGB(255, 255, 255)
NMcolor = 1
Else
NMText.BackColor = RGB(144, 144, 144)
NMText.Locked = True
NML.Locked = True
NML.BackColor = RGB(144, 144, 144)
NMS.Locked = True
NMS.BackColor = RGB(144, 144, 144)
NMcolor = -1
End If
End Sub

Private Sub Check3_Click()
If basecolor = 1 Then
 If abasecolor = -1 Then
 TexText.BackColor = RGB(255, 255, 255)
 TexText.Locked = False
 abasecolor = 1
 Else
 TexText.BackColor = RGB(144, 144, 144)
 TexText.Locked = False
 abasecolor = -1
 End If
End If
End Sub


Private Sub Command1_Click()
NMPitcureForm.Show
End Sub

Private Sub Command2_Click()
If OutText.Text <> "" Then
FilesFolder = OutText.Text
Open FilesFolder & "\" & FilesName & ".fx" For Output As #1
If basecolor = -1 Then
Print #1, " #define ALBEDO_MAP_FROM 0 "
Else
If abasecolor = 1 Then
Print #1, " #define ALBEDO_MAP_FROM 1 "
Else
Print #1, " #define ALBEDO_MAP_FROM 3 "
End If
End If
Print #1, "#define ALBEDO_MAP_UV_FLIP 0"
Print #1, " #define ALBEDO_MAP_APPLY_SCALE 0"
Print #1, " #define ALBEDO_MAP_APPLY_DIFFUSE 1"
Print #1, " #define ALBEDO_MAP_APPLY_MORPH_COLOR 0"
If acolor = -1 Then
Print #1, " #define ALBEDO_MAP_FILE ""albedo.png"""
Else
Print #1, " #define ALBEDO_MAP_FILE """ & pathchange(TexText.Text) & """"
End If
If basecolor = -1 Then
Print #1, " const float3 albedo = float3(" & Rcolor.Text / 255 & "," & Gcolor.Text / 255 & "," & Bcolor.Text / 255 & ");"
Else
Print #1, " const float3 albedo = 1.0;"
End If
If basecolor = -1 Then
Print #1, " const float2 albedoMapLoopNum = 1.0;"
Else
Print #1, " const float2 albedoMapLoopNum = " & Text2.Text & ";"
End If
Print #1, " #define ALBEDO_SUB_ENABLE 0"
Print #1, " #define ALBEDO_SUB_MAP_FROM 0"
Print #1, " #define ALBEDO_SUB_MAP_UV_FLIP 0"
Print #1, " #define ALBEDO_SUB_MAP_APPLY_SCALE 0"
Print #1, " #define ALBEDO_SUB_MAP_FILE ""albedo.png"""
Print #1, " const float3 albedoSub = 1.0;"
Print #1, " const float2 albedoSubMapLoopNum = 1.0;"
Print #1, " #define ALPHA_MAP_FROM 3"
Print #1, " #define ALPHA_MAP_UV_FLIP 0"
Print #1, " #define ALPHA_MAP_SWIZZLE 3"
Print #1, " #define ALPHA_MAP_FILE ""alpha.png"""
Print #1, " const float alpha = 1.0;"
Print #1, " const float alphaMapLoopNum = 1.0;"
If NMcolor = -1 Then
Print #1, " #define NORMAL_MAP_FROM 0"
Print #1, " #define NORMAL_MAP_TYPE 0"
Print #1, " #define NORMAL_MAP_UV_FLIP 0"
Print #1, " #define NORMAL_MAP_FILE ""normal.png"""
Print #1, " const float normalMapScale = 1.0;"
Print #1, " const float normalMapLoopNum = 1.0;"
Else
Print #1, " #define NORMAL_MAP_FROM 1"
Print #1, " #define NORMAL_MAP_TYPE 0"
Print #1, " #define NORMAL_MAP_UV_FLIP 0"
Print #1, " #define NORMAL_MAP_FILE """ & pathchange(NMText.Text) & """"
Print #1, " const float normalMapScale = " & Int(NMS.Text) & ";"
Print #1, " const float normalMapLoopNum = " & Int(NML.Text) & ";"
End If
Print #1, " #define NORMAL_SUB_MAP_FROM 0"
Print #1, " #define NORMAL_SUB_MAP_TYPE 0"
Print #1, " #define NORMAL_SUB_MAP_UV_FLIP 0"
Print #1, " #define NORMAL_SUB_MAP_FILE ""normal.png"""
Print #1, " const float normalSubMapScale = 1.0;"
Print #1, " const float normalSubMapLoopNum = 1.0;"
Print #1, " #define SMOOTHNESS_MAP_FROM 9"
Print #1, " #define SMOOTHNESS_MAP_TYPE 0"
Print #1, " #define SMOOTHNESS_MAP_UV_FLIP 0"
Print #1, " #define SMOOTHNESS_MAP_SWIZZLE 0"
Print #1, " #define SMOOTHNESS_MAP_APPLY_SCALE 0"
Print #1, " #define SMOOTHNESS_MAP_FILE ""smoothness.png"""
Print #1, " const float smoothness = 0.0;"
Print #1, " const float smoothnessMapLoopNum = 1.0;"
Print #1, " #define METALNESS_MAP_FROM 0"
Print #1, " #define METALNESS_MAP_UV_FLIP 0"
Print #1, " #define METALNESS_MAP_SWIZZLE 0"
Print #1, " #define METALNESS_MAP_APPLY_SCALE 0"
Print #1, " #define METALNESS_MAP_FILE ""metalness.png"""
Print #1, " const float metalness = 0.0;"
Print #1, " const float metalnessMapLoopNum = 1.0;"
Print #1, " #define SPECULAR_MAP_FROM 0"
Print #1, " #define SPECULAR_MAP_TYPE 0"
Print #1, " #define SPECULAR_MAP_UV_FLIP 0"
Print #1, " #define SPECULAR_MAP_SWIZZLE 0"
Print #1, " #define SPECULAR_MAP_APPLY_SCALE 0"
Print #1, " #define SPECULAR_MAP_FILE ""specular.png"""
Print #1, " const float3 specular = 0.5;"
Print #1, " const float2 specularMapLoopNum = 1.0;"
Print #1, " #define OCCLUSION_MAP_FROM 0"
Print #1, " #define OCCLUSION_MAP_TYPE 0"
Print #1, " #define OCCLUSION_MAP_UV_FLIP 0"
Print #1, " #define OCCLUSION_MAP_SWIZZLE 0"
Print #1, " #define OCCLUSION_MAP_APPLY_SCALE 0 "
Print #1, " #define OCCLUSION_MAP_FILE ""occlusion.png"""
Print #1, " const float occlusion = 1.0;"
Print #1, " const float occlusionMapLoopNum = 1.0;"
Print #1, " #define PARALLAX_MAP_FROM 0"
Print #1, " #define PARALLAX_MAP_TYPE 0"
Print #1, " #define PARALLAX_MAP_UV_FLIP 0"
Print #1, " #define PARALLAX_MAP_SWIZZLE 0"
Print #1, " #define PARALLAX_MAP_FILE ""height.png"""
Print #1, " const float parallaxMapScale = 1.0;"
Print #1, " const float parallaxMapLoopNum = 1.0;"
Print #1, " #define EMISSIVE_ENABLE 0"
Print #1, " #define EMISSIVE_MAP_FROM 0"
Print #1, " #define EMISSIVE_MAP_UV_FLIP 0"
Print #1, " #define EMISSIVE_MAP_APPLY_SCALE 0"
Print #1, " #define EMISSIVE_MAP_APPLY_MORPH_COLOR 0"
Print #1, " #define EMISSIVE_MAP_APPLY_MORPH_INTENSITY 0"
Print #1, " #define EMISSIVE_MAP_APPLY_BLINK 0"
Print #1, " #define EMISSIVE_MAP_FILE ""emissive.png"""
Print #1, " const float3 emissive = 1.0;"
Print #1, " const float3 emissiveBlink = 1.0;"
Print #1, " const float  emissiveIntensity = 1.0;"
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
k = MsgBox("请输入位置", , "错误")
End If
End Sub

Private Sub Command3_Click()
TexName(TexNumber) = Combo1.Text
k = 11 * TexNumber - 10
j = 11 * TexNumber
For i = k To j Step 1
If i = 1 Then
TexPa(i) = basecolor
End If
If i = 2 Then
TexPa(i) = Rcolor.Text
End If
If i = 3 Then
TexPa(i) = Gcolor.Text
End If
If i = 4 Then
TexPa(i) = Bcolor.Text
End If
If i = 5 Then
TexPa(i) = abasecolor
End If
If i = 6 Then
TexPa(i) = TexText.Text
End If
If i = 7 Then
TexPa(i) = Text2.Text
End If
If i = 8 Then
TexPa(i) = NMcolor
End If
If i = 9 Then
TexPa(i) = NMText.Text
End If
If i = 10 Then
TexPa(i) = NMS.Text
End If
If i = 11 Then
TexPa(i) = NML.Text
End If
Next i
TexNumber = TexNumber + 1
End Sub

Private Sub Command5_Click()
Dim tempstr As String
Dim linenum As Integer
linenum = 1
k = InputBox("as")
Open "E:\Doing\HLSL教程\HLSL.fx" For Input As #1
While Not EOF(1)
   Line Input #1, tempstr
If linenum = 1 Then
End If


linenum = linenum + 1
Wend
Close #1
End Sub

Private Sub Form_Load()
basecolor = -1
Text2.BackColor = RGB(144, 144, 144)
Text2.Locked = True
Color.BackColor = RGB(255, 255, 255)
NMText.Locked = True
NMText.BackColor = RGB(144, 144, 144)
NML.Locked = True
NML.BackColor = RGB(144, 144, 144)
NMS.Locked = True
NMS.BackColor = RGB(144, 144, 144)
NMcolor = -1
abasecolor = -1
TexText.BackColor = RGB(144, 144, 144)
TexText.Locked = True
Combo1.AddItem (FilesName)
TexNumber = 0
Combo1.Text = FilesName
End Sub

Private Sub Gcolor_Change()
If Gcolor.Text = "" Then
Gcolor.Text = 0
End If
Color.BackColor = RGB(Int(Rcolor.Text), Int(Gcolor.Text), Int(Bcolor.Text))
End Sub

Private Sub NML_Change()
If NML.Text = "" Then
NML.Text = 0
End If
End Sub

Private Sub NMS_Change()
If NMS.Text = "" Then
NMS.Text = 0
End If
End Sub
Private Sub NMText_OLEDragOver(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, X As Single, Y As Single, State As Integer)
NMText.Text = Data.Files(1)
OutText.Text = Left(NMText.Text, InStrRev(NMText.Text, "\") - 1)
End Sub
Private Sub Rcolor_Change()
If Rcolor.Text = "" Then
Rcolor.Text = 0
End If
Color.BackColor = RGB(Int(Rcolor.Text), Int(Gcolor.Text), Int(Bcolor.Text))
End Sub

Private Sub Text1_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, X As Single, Y As Single)
Text1.Text = Data.Files(1)
End Sub

Private Sub TexText_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, X As Single, Y As Single)
TexText.Text = Data.Files(1)
End Sub
