object Form1: TForm1
  Left = 711
  Top = 89
  Width = 440
  Height = 650
  Caption = #1055#1088#1086#1076#1091#1082#1090#1080#1074#1085#1072#1103' '#1085#1077#1076#1077#1083#1103
  Color = clBtnFace
  Constraints.MaxHeight = 650
  Constraints.MaxWidth = 440
  Constraints.MinHeight = 650
  Constraints.MinWidth = 440
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
    Top = 432
    Width = 157
    Height = 20
    Caption = #1055#1083#1072#1085#1099' '#1085#1072' '#1074#1099#1093#1086#1076#1085#1099#1077':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Actual_label: TLabel
    Left = 216
    Top = 224
    Width = 119
    Height = 20
    Caption = #1055#1083#1072#1085#1099' '#1085#1072' '#1076#1077#1085#1100':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Priority_label: TLabel
    Left = 216
    Top = 56
    Width = 185
    Height = 20
    Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090#1099' '#1085#1072' '#1085#1077#1076#1077#1083#1102':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Article_label: TLabel
    Left = 64
    Top = 8
    Width = 305
    Height = 37
    Caption = #1055#1088#1086#1076#1091#1082#1090#1080#1074#1085#1072#1103' '#1085#1077#1076#1077#1083#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Priority_listbox: TListBox
    Left = 216
    Top = 80
    Width = 193
    Height = 137
    ItemHeight = 13
    TabOrder = 0
  end
  object actual_day_listbox: TListBox
    Left = 216
    Top = 248
    Width = 193
    Height = 177
    ItemHeight = 13
    TabOrder = 1
  end
  object Holiday_listbox: TListBox
    Left = 216
    Top = 456
    Width = 193
    Height = 121
    ItemHeight = 13
    TabOrder = 2
  end
  object Monday_btn: TButton
    Left = 8
    Top = 64
    Width = 200
    Height = 100
    Caption = #1055#1086#1085#1077#1076#1077#1083#1100#1085#1080#1082
    TabOrder = 3
    OnClick = Monday_btnClick
  end
  object Tuesday_btn: TButton
    Left = 8
    Top = 168
    Width = 200
    Height = 100
    Caption = #1042#1090#1086#1088#1085#1080#1082
    TabOrder = 4
  end
  object Wednesday_btn: TButton
    Left = 8
    Top = 272
    Width = 200
    Height = 100
    Caption = #1057#1088#1077#1076#1072
    TabOrder = 5
  end
  object Thursday_btn: TButton
    Left = 8
    Top = 376
    Width = 200
    Height = 100
    Caption = #1063#1077#1090#1074#1077#1088#1075
    TabOrder = 6
  end
  object Friday_btn: TButton
    Left = 8
    Top = 480
    Width = 200
    Height = 100
    Caption = #1055#1103#1090#1085#1080#1094#1072
    TabOrder = 7
  end
end
