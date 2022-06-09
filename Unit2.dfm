object Form1: TForm1
  Left = 259
  Top = 169
  Width = 551
  Height = 472
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
    Left = 32
    Top = 24
    Width = 29
    Height = 13
    Caption = 'Nilai 1'
  end
  object Label2: TLabel
    Left = 32
    Top = 56
    Width = 29
    Height = 16
    Caption = 'Nilai 2'
  end
  object Label3: TLabel
    Left = 32
    Top = 141
    Width = 39
    Height = 13
    Caption = 'Tambah'
  end
  object Label4: TLabel
    Left = 34
    Top = 171
    Width = 34
    Height = 13
    Caption = 'Kurang'
  end
  object Label5: TLabel
    Left = 35
    Top = 204
    Width = 21
    Height = 13
    Caption = 'Bagi'
  end
  object Label6: TLabel
    Left = 36
    Top = 235
    Width = 17
    Height = 13
    Caption = 'Kali'
  end
  object Edit1: TEdit
    Left = 88
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 88
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object etambah: TEdit
    Left = 88
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object ekurang: TEdit
    Left = 88
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object ebagi: TEdit
    Left = 88
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object ekali: TEdit
    Left = 88
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Button1: TButton
    Left = 264
    Top = 40
    Width = 75
    Height = 25
    Caption = 'PROSES'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 184
    Width = 75
    Height = 25
    Caption = 'SELESAI'
    TabOrder = 7
    OnClick = Button2Click
  end
end
