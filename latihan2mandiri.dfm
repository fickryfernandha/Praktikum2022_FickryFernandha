object latihanmandiri: Tlatihanmandiri
  Left = 346
  Top = 123
  Width = 694
  Height = 483
  Caption = 'Latihan 2 Kondisional Mandiri'
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
    Left = 23
    Top = 179
    Width = 71
    Height = 13
    Caption = 'Nilai Kehadiran'
  end
  object Label2: TLabel
    Left = 25
    Top = 213
    Width = 53
    Height = 13
    Caption = 'Nilai Tugas'
  end
  object Label3: TLabel
    Left = 26
    Top = 245
    Width = 45
    Height = 13
    Caption = 'Nilai UTS'
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
  object Label6: TLabel
    Left = 27
    Top = 284
    Width = 54
    Height = 13
    Caption = 'Nilai Harian'
  end
  object Label7: TLabel
    Left = 30
    Top = 317
    Width = 45
    Height = 13
    Caption = 'Nilai UAS'
  end
  object KET: TLabel
    Left = 389
    Top = 243
    Width = 21
    Height = 13
    Caption = 'KET'
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
  object ekehad: TEdit
    Left = 104
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object etug: TEdit
    Left = 104
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object euts: TEdit
    Left = 104
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object ebkehad: TEdit
    Left = 248
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object ebtug: TEdit
    Left = 248
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object ebuts: TEdit
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
    Left = 128
    Top = 352
    Width = 75
    Height = 25
    Caption = 'HITUNG'
    TabOrder = 11
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 280
    Top = 352
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 12
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 440
    Top = 304
    Width = 75
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 13
    OnClick = Button3Click
  end
  object eharian: TEdit
    Left = 104
    Top = 280
    Width = 121
    Height = 21
    TabOrder = 14
  end
  object euas: TEdit
    Left = 104
    Top = 312
    Width = 121
    Height = 21
    TabOrder = 15
  end
  object ebharian: TEdit
    Left = 248
    Top = 280
    Width = 121
    Height = 21
    TabOrder = 16
  end
  object ebuas: TEdit
    Left = 248
    Top = 312
    Width = 121
    Height = 21
    TabOrder = 17
  end
  object eket: TEdit
    Left = 432
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 18
  end
end
