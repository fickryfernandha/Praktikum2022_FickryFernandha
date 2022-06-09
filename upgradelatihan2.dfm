object updatelatihan2: Tupdatelatihan2
  Left = 299
  Top = 193
  Width = 928
  Height = 557
  Caption = 'UPGRADE LATIHAN GRAFIK 2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 56
    Width = 100
    Height = 13
    Caption = 'TAHUN ANGKATAN'
  end
  object Label2: TLabel
    Left = 72
    Top = 88
    Width = 111
    Height = 13
    Caption = 'JUMLAH TERDAFTAR'
  end
  object Label3: TLabel
    Left = 72
    Top = 120
    Width = 55
    Height = 13
    Caption = 'FAKULTAS'
  end
  object Edit2: TEdit
    Left = 192
    Top = 88
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 192
    Top = 56
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = '-- TAHUN ANGKATAN --'
    Items.Strings = (
      '2012'
      '2013'
      '2014'
      '2015'
      '2016'
      '2017'
      '2018'
      '2019'
      '2020'
      '2021'
      '2022')
  end
  object Chart1: TChart
    Left = 120
    Top = 232
    Width = 665
    Height = 265
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'TChart')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    TabOrder = 2
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      SeriesColor = clRed
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 72
    Top = 176
    Width = 75
    Height = 25
    Caption = 'ADD DATA'
    TabOrder = 3
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 416
    Top = 32
    Width = 377
    Height = 169
    TabOrder = 4
  end
  object ComboBox2: TComboBox
    Left = 192
    Top = 115
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = '-- PILIH FAKULTAS --'
    Items.Strings = (
      'TEKNIK INFORMATIKA'
      'SISTEM INFORMASI')
  end
  object Button2: TButton
    Left = 176
    Top = 176
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 256
    Top = 176
    Width = 75
    Height = 25
    Caption = 'CLEAR ALL'
    TabOrder = 7
    OnClick = Button3Click
  end
end
