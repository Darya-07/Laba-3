object Form1: TForm1
  Left = 718
  Top = 327
  Width = 383
  Height = 256
  Caption = #1055#1086#1080#1089#1082
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
    Left = 32
    Top = 64
    Width = 81
    Height = 13
    Caption = #1057#1077#1088#1080#1103' '#1087#1072#1089#1087#1086#1088#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 32
    Top = 120
    Width = 81
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1087#1072#1089#1087#1086#1088#1090#1072
  end
  object FindBtn: TButton
    Left = 224
    Top = 160
    Width = 113
    Height = 41
    Caption = #1055#1086#1080#1089#1082
    TabOrder = 0
    OnClick = FindBtnClick
  end
  object SeriesEdt: TEdit
    Left = 160
    Top = 64
    Width = 193
    Height = 21
    TabOrder = 1
    OnKeyPress = numberFilterKeyPress
  end
  object NumberEdt: TEdit
    Left = 160
    Top = 120
    Width = 193
    Height = 21
    TabOrder = 2
    OnKeyPress = numberFilterKeyPress
  end
end
