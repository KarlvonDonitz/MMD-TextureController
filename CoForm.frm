VERSION 5.00
Begin VB.Form CoForm 
   Caption         =   "自动化控制器"
   ClientHeight    =   7185
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   10110
   Icon            =   "CoForm.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   7185
   ScaleWidth      =   10110
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton Command6 
      Caption         =   "输出fxsub"
      Height          =   495
      Left            =   7320
      TabIndex        =   31
      Top             =   6360
      Width           =   1575
   End
   Begin VB.CheckBox Outcheck 
      Caption         =   "锁定fx输出位置"
      Height          =   180
      Left            =   1680
      TabIndex        =   30
      Top             =   6120
      Width           =   1815
   End
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
      Left            =   1680
      OLEDropMode     =   1  'Manual
      TabIndex        =   23
      Top             =   6480
      Width           =   3855
   End
   Begin VB.CommandButton Command2 
      Caption         =   "输出"
      Height          =   495
      Left            =   5880
      TabIndex        =   14
      Top             =   6360
      Width           =   1335
   End
   Begin VB.CheckBox NMcheck 
      Caption         =   "法线贴图"
      Height          =   375
      Left            =   360
      TabIndex        =   2
      Top             =   3360
      Width           =   1335
   End
   Begin VB.CheckBox BCcheck 
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
      Top             =   5400
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
      Begin VB.CheckBox ABCcheck 
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
      Top             =   3480
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
      Left            =   360
      TabIndex        =   24
      Top             =   6480
      Width           =   1335
   End
End
Attribute VB_Name = "CoForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
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

Private Sub BCcheck_Click()
If BCcheck.Value = 1 Then
Rcolor.Locked = True
Gcolor.Locked = True
Bcolor.Locked = True
Rcolor.BackColor = RGB(144, 144, 144)
Gcolor.BackColor = RGB(144, 144, 144)
Bcolor.BackColor = RGB(144, 144, 144)
Text2.Locked = False
Text2.BackColor = RGB(255, 255, 255)
Color.Visible = False
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
TexText.BackColor = RGB(144, 144, 144)
TexText.Locked = True
ABCcheck.Value = 0
End If
End Sub


Private Sub Combo1_Click()
For k = 0 To 100 Step 1
 If TexName(k) = Combo1.Text Then
 For i = 1 To 11 Step 1
 If i = 1 Then BCcheck.Value = TexP(k, i)
If i = 2 Then Rcolor.Text = TexP(k, i)
If i = 3 Then Gcolor.Text = TexP(k, i)
If i = 4 Then Bcolor.Text = TexP(k, i)
If i = 5 Then ABCcheck.Value = TexP(k, i)
If i = 6 Then TexText.Text = TexP(k, i)
If i = 7 Then Text2.Text = TexP(k, i)
If i = 8 Then NMcheck.Value = TexP(k, i)
If i = 9 Then NMText.Text = TexP(k, i)
If i = 10 Then NMS.Text = TexP(k, i)
If i = 11 Then NML.Text = TexP(k, i)
Next i
End If
Next k
End Sub

Private Sub Command4_Click()
NewForm.Show
End Sub

Private Sub Command6_Click()
If OutText.Text <> "" Then
Open OutText.Text & "\" & "material_common_2.0.fxsub" For Output As #1
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

Private Sub NMcheck_Click()
If NMcheck.Value = 1 Then
NMText.BackColor = RGB(255, 255, 255)
NMText.Locked = False
NML.Locked = False
NML.BackColor = RGB(255, 255, 255)
NMS.Locked = False
NMS.BackColor = RGB(255, 255, 255)
Else
NMText.BackColor = RGB(144, 144, 144)
NMText.Locked = True
NML.Locked = True
NML.BackColor = RGB(144, 144, 144)
NMS.Locked = True
NMS.BackColor = RGB(144, 144, 144)
End If
End Sub

Private Sub ABCcheck_Click()
If BCcheck.Value = 1 Then
 If ABCcheck.Value = 1 Then
 TexText.BackColor = RGB(255, 255, 255)
 TexText.Locked = False
 Else
 TexText.BackColor = RGB(144, 144, 144)
 TexText.Locked = False
 End If
Else
ABCcheck.Value = 0
End If
End Sub


Private Sub Command1_Click()
NMPitcureForm.Show
End Sub

Private Sub Command2_Click()
If OutText.Text <> "" Then
FilesFolder = OutText.Text
Open FilesFolder & "\" & Combo1.Text For Output As #1
If BCcheck.Value = 0 Then
Print #1, " #define ALBEDO_MAP_FROM 0 "
Else
If ABCcheck.Value = 1 Then
Print #1, " #define ALBEDO_MAP_FROM 1 "
Else
Print #1, " #define ALBEDO_MAP_FROM 3 "
End If
End If
Print #1, "#define ALBEDO_MAP_UV_FLIP 0"
Print #1, " #define ALBEDO_MAP_APPLY_SCALE 0"
Print #1, " #define ALBEDO_MAP_APPLY_DIFFUSE 1"
Print #1, " #define ALBEDO_MAP_APPLY_MORPH_COLOR 0"
If ABCcheck.Value = 0 Then
Print #1, " #define ALBEDO_MAP_FILE ""albedo.png"""
Else
Print #1, " #define ALBEDO_MAP_FILE """ & pathchange(TexText.Text) & """"
End If
If BCcheck.Value = 0 Then
Print #1, " const float3 albedo = float3(" & Rcolor.Text / 255 & "," & Gcolor.Text / 255 & "," & Bcolor.Text / 255 & ");"
Else
Print #1, " const float3 albedo = 1.0;"
End If
If BCcheck.Value = 0 Then
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
If NMcheck.Value = 0 Then
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
k = MsgBox("请输入输出位置", , "错误")
End If
End Sub

Private Sub Command3_Click()
Dim flag As Integer
flag = -1
For i = 1 To 100 Step 1
If TexName(i) = Combo1.Text Then flag = i
Next i
If flag = -1 Then
TexName(TexNumber) = Combo1.Text
For i = 1 To 11 Step 1
If i = 1 Then TexP(TexNumber, i) = BCcheck.Value
If i = 2 Then TexP(TexNumber, i) = Rcolor.Text
If i = 3 Then TexP(TexNumber, i) = Gcolor.Text
If i = 4 Then TexP(TexNumber, i) = Bcolor.Text
If i = 5 Then TexP(TexNumber, i) = ABCcheck.Value
If i = 6 Then TexP(TexNumber, i) = TexText.Text
If i = 7 Then TexP(TexNumber, i) = Text2.Text
If i = 8 Then TexP(TexNumber, i) = NMcheck.Value
If i = 9 Then TexP(TexNumber, i) = NMText.Text
If i = 10 Then TexP(TexNumber, i) = NMS.Text
If i = 11 Then TexP(TexNumber, i) = NML.Text
Next i
TexNumber = TexNumber + 1
Else
For i = 1 To 11 Step 1
If i = 1 Then TexP(flag, i) = BCcheck.Value
If i = 2 Then TexP(flag, i) = Rcolor.Text
If i = 3 Then TexP(flag, i) = Gcolor.Text
If i = 4 Then TexP(flag, i) = Bcolor.Text
If i = 5 Then TexP(flag, i) = ABCcheck.Value
If i = 6 Then TexP(flag, i) = TexText.Text
If i = 7 Then TexP(flag, i) = Text2.Text
If i = 8 Then TexP(flag, i) = NMcheck.Value
If i = 9 Then TexP(flag, i) = NMText.Text
If i = 10 Then TexP(flag, i) = NMS.Text
If i = 11 Then TexP(flag, i) = NML.Text
Next i
End If
End Sub

Private Sub Command5_Click()
InputForm.Show
End Sub

Private Sub Form_Load()
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
Combo1.AddItem (FilesName & ".fx")
TexNumber = 0
Combo1.Text = FilesName & ".fx"
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
If NMcheck.Value = 1 Then
NMText.Text = Data.Files(1)
If Outcheck.Value = 0 Then
OutText.Text = Left(NMText.Text, InStrRev(NMText.Text, "\") - 1)
End If
End If
End Sub

Private Sub OutText_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, X As Single, Y As Single)
OutText.Text = Data.Files(1)
OutText.Text = Left(OutText.Text, InStrRev(OutText.Text, "\") - 1)
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
If ABCcheck.Value = 1 Then
TexText.Text = Data.Files(1)
If Outcheck.Value = 0 Then
OutText.Text = Left(TexText.Text, InStrRev(TexText.Text, "\") - 1)
End If
End If
End Sub
