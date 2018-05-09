VERSION 5.00
Begin VB.Form NMPitcureForm 
   Caption         =   "Í¼Æ¬ÏÔÊ¾Æ÷"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   Icon            =   "PitcureForm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  '´°¿ÚÈ±Ê¡
End
Attribute VB_Name = "NMPitcureForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function GdiplusStartup Lib "gdiplus" (token As Long, inputbuf As GdiplusStartupInput, Optional ByVal outputbuf As Long = 0) As GpStatus
Private Declare Sub GdiplusShutdown Lib "gdiplus" (ByVal token As Long)
Private Declare Function GdipCreateFromHDC Lib "gdiplus" (ByVal hwnd As Long, graphics As Long) As GpStatus
Private Declare Function GdipDeleteGraphics Lib "gdiplus" (ByVal graphics As Long) As GpStatus
Private Declare Function GdipDrawImageRect Lib "gdiplus" (ByVal graphics As Long, ByVal image As Long, ByVal X As Single, ByVal Y As Single, ByVal Width As Single, ByVal Height As Single) As GpStatus
Private Declare Function GdipLoadImageFromFile Lib "gdiplus" (ByVal filename As String, image As Long) As GpStatus
Private Declare Function GdipGetImageWidth Lib "gdiplus" (ByVal image As Long, Width As Long) As GpStatus
Private Declare Function GdipGetImageHeight Lib "gdiplus" (ByVal image As Long, Height As Long) As GpStatus
Private Declare Function GdipDisposeImage Lib "gdiplus" (ByVal image As Long) As GpStatus
Private Type GdiplusStartupInput
    GdiplusVersion As Long
    DebugEventCallback As Long
    SuppressBackgroundThread As Long
    SuppressExternalCodecs As Long
End Type
Private Enum GpStatus
    Ok = 0
    GenericError = 1
    InvalidParameter = 2
    OutOfMemory = 3
    ObjectBusy = 4
    InsufficientBuffer = 5
    NotImplemented = 6
    Win32Error = 7
    WrongState = 8
    Aborted = 9
    FileNotFound = 10
    ValueOverflow = 11
    AccessDenied = 12
    UnknownImageFormat = 13
    FontFamilyNotFound = 14
    FontStyleNotFound = 15
    NotTrueTypeFont = 16
    UnsupportedGdiplusVersion = 17
    GdiplusNotInitialized = 18
    PropertyNotFound = 19
    PropertyNotSupported = 20
End Enum
Private c_pngPath As String
Dim m_token As Long
Private Sub Form_paint()
     c_pngPath = CoForm.NMText.Text
     Dim pImg As Long
     Dim pGraphics As Long
     Dim w As Long, h As Long
     Call GdipCreateFromHDC(Me.hDC, pGraphics)
     Call GdipLoadImageFromFile(StrConv(c_pngPath, vbUnicode), pImg)
     Call GdipGetImageWidth(pImg, w)
     Call GdipGetImageHeight(pImg, h)
     Call GdipDrawImageRect(pGraphics, pImg, 0, 0, w / 2, h / 2)
     Call GdipDisposeImage(pImg)
     Call GdipDeleteGraphics(pGraphics)
End Sub
Private Sub Form_Load()
     Dim StartupInput As GdiplusStartupInput
     StartupInput.GdiplusVersion = 1
     If GdiplusStartup(m_token, StartupInput, ByVal 0) Then
             MsgBox "Error initializing GDI+"
             Exit Sub
     End If
End Sub
Private Sub Form_Unload(Cancel As Integer)
     Call GdiplusShutdown(m_token)
End Sub
