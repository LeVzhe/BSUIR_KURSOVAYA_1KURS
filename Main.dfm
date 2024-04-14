object Form1: TForm1
  Left = 593
  Top = 146
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = #1055#1088#1086#1076#1091#1082#1090#1080#1074#1085#1072#1103' '#1085#1077#1076#1077#1083#1103
  ClientHeight = 591
  ClientWidth = 454
  Color = clBtnFace
  Constraints.MaxHeight = 630
  Constraints.MaxWidth = 700
  Constraints.MinHeight = 630
  Constraints.MinWidth = 470
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Holiday_label: TLabel
    Left = 216
    Top = 264
    Width = 158
    Height = 20
    Caption = #1055#1083#1072#1085#1099' '#1085#1072' '#1074#1099#1093#1086#1076#1085#1099#1077':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'CentSchbkCyrill BT'
    Font.Style = []
    ParentFont = False
  end
  object Actual_label: TLabel
    Left = 216
    Top = 56
    Width = 118
    Height = 20
    Caption = #1055#1083#1072#1085#1099' '#1085#1072' '#1076#1077#1085#1100':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'CentSchbkCyrill BT'
    Font.Style = []
    ParentFont = False
  end
  object Priority_label: TLabel
    Left = 216
    Top = 416
    Width = 182
    Height = 20
    Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090#1099' '#1085#1072' '#1085#1077#1076#1077#1083#1102':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'CentSchbkCyrill BT'
    Font.Style = []
    ParentFont = False
  end
  object Article_label: TLabel
    Left = 48
    Top = 8
    Width = 340
    Height = 38
    Caption = #1055#1088#1086#1076#1091#1082#1090#1080#1074#1085#1072#1103' '#1085#1077#1076#1077#1083#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clGreen
    Font.Height = -32
    Font.Name = 'Century'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 464
    Top = 56
    Width = 189
    Height = 20
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1087#1083#1072#1085#1099' '#1085#1072' '#1076#1077#1085#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'CentSchbkCyrill BT'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 464
    Top = 264
    Width = 213
    Height = 20
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1087#1083#1072#1085#1099' '#1085#1072' '#1074#1099#1093#1086#1076#1085'.'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'CentSchbkCyrill BT'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 464
    Top = 472
    Width = 171
    Height = 20
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1087#1088#1080#1086#1088#1080#1090#1077#1090#1099
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'CentSchbkCyrill BT'
    Font.Style = []
    ParentFont = False
  end
  object Priority_listbox: TListBox
    Left = 216
    Top = 440
    Width = 201
    Height = 137
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'RomanD'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 0
    OnClick = Priority_listboxClick
  end
  object actual_day_listbox: TListBox
    Left = 216
    Top = 80
    Width = 201
    Height = 177
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'RomanD'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 1
    OnClick = actual_day_listboxClick
  end
  object Holiday_listbox: TListBox
    Left = 216
    Top = 288
    Width = 201
    Height = 121
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'RomanD'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 2
    OnClick = Holiday_listboxClick
  end
  object Monday_btn: TButton
    Left = 8
    Top = 64
    Width = 200
    Height = 100
    Caption = #1055#1086#1085#1077#1076#1077#1083#1100#1085#1080#1082
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'RomanC'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Monday_btnClick
  end
  object Tuesday_btn: TButton
    Left = 8
    Top = 168
    Width = 200
    Height = 100
    Caption = #1042#1090#1086#1088#1085#1080#1082
    Font.Charset = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'RomanC'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Tuesday_btnClick
  end
  object Wednesday_btn: TButton
    Left = 8
    Top = 272
    Width = 200
    Height = 100
    Caption = #1057#1088#1077#1076#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'RomanC'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Wednesday_btnClick
  end
  object Thursday_btn: TButton
    Left = 8
    Top = 376
    Width = 200
    Height = 100
    Caption = #1063#1077#1090#1074#1077#1088#1075
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'RomanC'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Thursday_btnClick
  end
  object Friday_btn: TButton
    Left = 8
    Top = 480
    Width = 200
    Height = 100
    Caption = #1055#1103#1090#1085#1080#1094#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'RomanC'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Friday_btnClick
  end
  object Drag_btn: TButton
    Left = 418
    Top = 80
    Width = 31
    Height = 497
    Cursor = crHandPoint
    Caption = '>'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -29
    Font.Name = 'Artifakt Element'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = Drag_btnClick
  end
  object Panel1: TPanel
    Left = 464
    Top = 80
    Width = 209
    Height = 177
    BorderStyle = bsSingle
    TabOrder = 9
    object Current_Edit: TEdit
      Left = 8
      Top = 8
      Width = 193
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnKeyPress = Current_EditKeyPress
    end
    object current_add_btn: TButton
      Left = 8
      Top = 56
      Width = 89
      Height = 49
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'RomanC'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = current_add_btnClick
    end
    object Current_mark_btn: TButton
      Left = 8
      Top = 112
      Width = 89
      Height = 49
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1087#1088#1080#1086#1088#1080#1090#1077#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'RomanC'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      WordWrap = True
      OnClick = Current_mark_btnClick
    end
    object Current_del_button: TButton
      Left = 104
      Top = 56
      Width = 91
      Height = 49
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'RomanC'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Current_del_buttonClick
    end
    object Current_clean_btn: TButton
      Left = 104
      Top = 112
      Width = 91
      Height = 49
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1089#1087#1080#1089#1086#1082
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'RomanC'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      WordWrap = True
      OnClick = Current_clean_btnClick
    end
  end
  object Panel2: TPanel
    Left = 464
    Top = 288
    Width = 209
    Height = 177
    BorderStyle = bsSingle
    TabOrder = 10
    object Holiday_Edit: TEdit
      Left = 8
      Top = 8
      Width = 193
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Holiday_EditKeyPress
    end
    object Holiday_add_btn: TButton
      Left = 8
      Top = 56
      Width = 89
      Height = 49
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'RomanC'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Holiday_add_btnClick
    end
    object Holiday_del_btn: TButton
      Left = 104
      Top = 56
      Width = 89
      Height = 49
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'RomanC'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Holiday_del_btnClick
    end
    object Holiday_mark_btn: TButton
      Left = 8
      Top = 112
      Width = 89
      Height = 49
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1087#1088#1080#1086#1088#1080#1090#1077#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'RomanC'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      WordWrap = True
      OnClick = Holiday_mark_btnClick
    end
    object Holiday_clean_btn: TButton
      Left = 104
      Top = 112
      Width = 89
      Height = 49
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1089#1087#1080#1089#1086#1082
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'RomanC'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      WordWrap = True
      OnClick = Holiday_clean_btnClick
    end
  end
  object Panel3: TPanel
    Left = 464
    Top = 496
    Width = 209
    Height = 81
    BorderStyle = bsSingle
    TabOrder = 11
    object priority_del_btn: TButton
      Left = 8
      Top = 16
      Width = 89
      Height = 49
      Caption = #1057#1085#1103#1090#1100' '#1087#1088#1080#1086#1088#1080#1090#1077#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'RomanC'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      WordWrap = True
      OnClick = priority_del_btnClick
    end
    object priority_clear_btn: TButton
      Left = 104
      Top = 16
      Width = 89
      Height = 49
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1089#1087#1080#1089#1086#1082
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'RomanC'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      WordWrap = True
      OnClick = priority_clear_btnClick
    end
  end
  object btn_onTimer: TTimer
    Enabled = False
    Interval = 1
    OnTimer = btn_onTimerTimer
    Left = 416
    Top = 48
  end
end
