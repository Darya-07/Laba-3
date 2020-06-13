object Form2: TForm2
  Left = 782
  Top = 357
  Width = 338
  Height = 247
  Caption = #1059#1076#1072#1083#1077#1085#1080#1077
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
  object lbl1: TLabel
    Left = 24
    Top = 56
    Width = 81
    Height = 26
    Caption = #1057#1077#1088#1080#1103' '#1087#1072#1089#1087#1086#1088#1090#1072#13#10
  end
  object lbl2: TLabel
    Left = 24
    Top = 104
    Width = 81
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1087#1072#1089#1087#1086#1088#1090#1072
  end
  object SeriesEdt: TEdit
    Left = 112
    Top = 56
    Width = 185
    Height = 21
    TabOrder = 0
    OnKeyPress = numberFilterKeyPress
  end
  object NumberEdt: TEdit
    Left = 112
    Top = 96
    Width = 185
    Height = 21
    TabOrder = 1
    OnKeyPress = numberFilterKeyPress
  end
  object RemoveBtn: TButton
    Left = 192
    Top = 160
    Width = 89
    Height = 33
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 2
    OnClick = RemoveBtnClick
  end
end
