VERSION 5.00
Object = "{DE7847A7-A266-4AA9-AA68-16676652C9DB}#1.0#0"; "TeeChart2014.ocx"
Begin VB.Form SeriesType_IsoSurface 
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   6915
   ClientLeft      =   3480
   ClientTop       =   3390
   ClientWidth     =   11505
   LinkTopic       =   "Form2"
   ScaleHeight     =   6915
   ScaleWidth      =   11505
   ShowInTaskbar   =   0   'False
   Begin TeeChart.TChart TChart1 
      Align           =   2  'Align Bottom
      Height          =   4695
      Left            =   0
      TabIndex        =   4
      Top             =   2220
      Width           =   11505
      Base64          =   $"SeriesType_IsoSurface.frx":0000
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Sides..."
      Height          =   345
      Left            =   2400
      TabIndex        =   1
      Top             =   1770
      Width           =   945
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Lines..."
      Height          =   345
      Left            =   1320
      TabIndex        =   3
      Top             =   1770
      Width           =   945
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Edit..."
      Height          =   345
      Left            =   240
      TabIndex        =   2
      Top             =   1770
      Width           =   945
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00C0FFFF&
      Height          =   1665
      Left            =   0
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Text            =   "SeriesType_IsoSurface.frx":0E9E
      Top             =   0
      Width           =   11490
   End
End
Attribute VB_Name = "SeriesType_IsoSurface"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
  TChart1.ShowEditor 0
End Sub

Private Sub Command2_Click()
  TChart1.Series(0).asIsoSurface.BandPen.ShowEditor
End Sub

Private Sub Command3_Click()
  TChart1.Series(0).asIsoSurface.SideLines.ShowEditor
End Sub

Private Sub Form_Load()
  With TChart1
    .AddSeries scIsoSurface
    .Series(0).FillSampleValues
    With .Series(0).asIsoSurface
      .UseColorRange = False
      .UsePalette = True
      .PaletteStyle = psRainbow
    End With
  End With

  TChart1.Tools.Items(0).asLegendPalette.Series = TChart1.Series(0)
End Sub

Private Sub Text1_DblClick()
  TChart1.ShowEditor
End Sub
