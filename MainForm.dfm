object HashForm: THashForm
  Left = 298
  Top = 147
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1061#1077#1096'-'#1090#1072#1073#1083#1080#1094#1072
  ClientHeight = 475
  ClientWidth = 838
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmMain
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object matPersons: TStringGrid
    Left = 8
    Top = 8
    Width = 833
    Height = 457
    ColCount = 4
    DefaultColWidth = 205
    FixedCols = 0
    TabOrder = 0
  end
  object mmMain: TMainMenu
    Left = 480
    Top = 464
    object mniFile: TMenuItem
      Caption = #1060#1072#1081#1083
      object mniOpen: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = mniOpenClick
      end
      object mniSave: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        OnClick = mniSaveClick
      end
    end
    object mniAdd: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = mniAddClick
    end
    object mniFind: TMenuItem
      Caption = #1053#1072#1081#1090#1080
      OnClick = mniFindClick
    end
    object mniRemove: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = mniRemoveClick
    end
  end
  object dlgOpen: TOpenDialog
    Filter = 'Binary files|*.bin'
    Left = 400
    Top = 464
  end
  object dlgSave: TSaveDialog
    Filter = 'Binary files|*.bin'
    Left = 440
    Top = 464
  end
end
