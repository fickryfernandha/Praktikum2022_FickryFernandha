object Form1: TForm1
  Left = 324
  Top = 139
  Width = 592
  Height = 494
  Caption = 'Latihan Kondisional'
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
    Left = 55
    Top = 179
    Width = 36
    Height = 13
    Caption = 'NILAI 1'
  end
  object Label2: TLabel
    Left = 56
    Top = 216
    Width = 36
    Height = 13
    Caption = 'NILAI 2'
  end
  object Label3: TLabel
    Left = 56
    Top = 248
    Width = 36
    Height = 13
    Caption = 'NILAI 3'
  end
  object Label4: TLabel
    Left = 384
    Top = 184
    Width = 35
    Height = 13
    Caption = 'TOTAL'
  end
  object Label5: TLabel
    Left = 386
    Top = 212
    Width = 38
    Height = 13
    Caption = 'GRADE'
  end
  object Panel1: TPanel
    Left = 136
    Top = 40
    Width = 233
    Height = 49
    Caption = 'NILAI KONDISIONAL'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 272
    Top = 120
    Width = 73
    Height = 33
    Caption = 'BOBOT'
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 128
    Top = 120
    Width = 65
    Height = 33
    Caption = 'NILAI'
    TabOrder = 2
  end
  object enilai1: TEdit
    Left = 104
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object enilai2: TEdit
    Left = 104
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object enilai3: TEdit
    Left = 104
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object ebobot1: TEdit
    Left = 248
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object ebobot2: TEdit
    Left = 248
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object ebobot3: TEdit
    Left = 248
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object etotal: TEdit
    Left = 432
    Top = 180
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object egrade: TEdit
    Left = 430
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object Button1: TButton
    Left = 120
    Top = 288
    Width = 75
    Height = 25
    Caption = 'HITUNG'
    TabOrder = 11
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 280
    Top = 288
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 12
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 440
    Top = 256
    Width = 75
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 13
    OnClick = Button3Click
  end
end
