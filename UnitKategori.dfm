object FormKategori: TFormKategori
  Left = 580
  Top = 191
  Width = 456
  Height = 347
  Caption = 'Kategori'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 24
    Width = 34
    Height = 13
    Caption = 'Name :'
  end
  object lbl2: TLabel
    Left = 16
    Top = 256
    Width = 69
    Height = 13
    Caption = 'Insert Name : '
  end
  object edt1: TEdit
    Left = 56
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 56
    Top = 56
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 144
    Top = 56
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 232
    Top = 56
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = btn3Click
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 112
    Width = 401
    Height = 120
    DataSource = DataModule1.ds1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt2: TEdit
    Left = 96
    Top = 256
    Width = 233
    Height = 21
    TabOrder = 5
  end
  object btn4: TButton
    Left = 344
    Top = 256
    Width = 75
    Height = 25
    Caption = 'SEARCH'
    TabOrder = 6
  end
end
