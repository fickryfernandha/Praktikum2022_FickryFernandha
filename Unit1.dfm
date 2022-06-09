object Form1: TForm1
  Left = 267
  Top = 189
  Width = 418
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 40
    Width = 29
    Height = 13
    Caption = 'Nilai 1'
  end
  object Label2: TLabel
    Left = 56
    Top = 88
    Width = 29
    Height = 13
    Caption = 'Nilai 2'
  end
  object Label3: TLabel
    Left = 57
    Top = 125
    Width = 23
    Height = 13
    Caption = 'Hasil'
  end
  object Edit1: TEdit
    Left = 104
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 104
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 104
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 272
    Top = 48
    Width = 75
    Height = 25
    Caption = 'TAMBAH'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 280
    Top = 96
    Width = 75
    Height = 25
    Caption = 'SELESAI'
    TabOrder = 4
    OnClick = Button2Click
  end
end
