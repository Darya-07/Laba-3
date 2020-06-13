object AddUserForm: TAddUserForm
  Left = 764
  Top = 166
  Width = 362
  Height = 228
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblNumber: TLabel
    Left = 16
    Top = 56
    Width = 85
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1087#1072#1089#1087#1086#1088#1090#1072':'
  end
  object lblSeries: TLabel
    Left = 16
    Top = 24
    Width = 85
    Height = 13
    Caption = #1057#1077#1088#1080#1103' '#1087#1072#1089#1087#1086#1088#1090#1072':'
  end
  object lblFIO: TLabel
    Left = 72
    Top = 88
    Width = 27
    Height = 13
    Caption = #1060#1048#1054':'
  end
  object lblAddress: TLabel
    Left = 64
    Top = 120
    Width = 35
    Height = 13
    Caption = #1040#1076#1088#1077#1089':'
  end
  object btnAdd: TButton
    Left = 256
    Top = 152
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 0
    OnClick = btnAddClick
  end
  object edtPasportNumber: TEdit
    Left = 112
    Top = 48
    Width = 225
    Height = 21
    TabOrder = 1
    OnKeyPress = numberFilterKeyPress
  end
  object edtPassportSeries: TEdit
    Left = 112
    Top = 16
    Width = 225
    Height = 21
    TabOrder = 2
    Text = '0'
    OnKeyPress = numberFilterKeyPress
  end
  object edtFIO: TEdit
    Left = 112
    Top = 80
    Width = 225
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object edtAddress: TEdit
    Left = 112
    Top = 112
    Width = 225
    Height = 21
    TabOrder = 4
    Text = '0'
  end
end
