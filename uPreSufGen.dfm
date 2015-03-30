object fPreSufGen: TfPreSufGen
  Left = 302
  Top = 155
  Width = 1325
  Height = 740
  Caption = #1055#1088#1077#1057#1091#1092#1043#1077#1085' v0.2 (build 130903)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    1309
    702)
  PixelsPerInch = 96
  TextHeight = 13
  object bvl1: TBevel
    Left = 6
    Top = 8
    Width = 515
    Height = 100
  end
  object bvl3: TBevel
    Left = 525
    Top = 8
    Width = 780
    Height = 657
    Anchors = [akLeft, akTop, akRight, akBottom]
  end
  object lbl1: TLabel
    Left = 16
    Top = 48
    Width = 48
    Height = 13
    Caption = #1055#1088#1077#1092#1080#1082#1089':'
  end
  object bvl2: TBevel
    Left = 5
    Top = 112
    Width = 516
    Height = 553
    Anchors = [akLeft, akTop, akBottom]
  end
  object lbl3: TLabel
    Left = 13
    Top = 117
    Width = 111
    Height = 13
    Caption = #1056#1072#1079#1084#1085#1086#1078#1072#1077#1084#1099#1081' '#1090#1077#1082#1089#1090':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 533
    Top = 13
    Width = 111
    Height = 13
    Caption = #1056#1072#1079#1084#1085#1086#1078#1077#1085#1085#1099#1081' '#1090#1077#1082#1089#1090':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 16
    Top = 80
    Width = 50
    Height = 13
    Caption = #1057#1091#1092#1092#1080#1082#1089':'
  end
  object lbl5: TLabel
    Left = 56
    Top = 11
    Width = 378
    Height = 13
    Caption = 
      #1059#1090#1080#1083#1080#1090#1072' '#1076#1083#1103' "'#1088#1072#1079#1084#1085#1086#1078#1077#1085#1080#1103'" '#1090#1077#1082#1089#1090#1072' '#1089' '#1087#1086#1076#1089#1090#1072#1085#1086#1074#1082#1086#1081' '#1087#1088#1077#1092#1080#1082#1089#1072' '#1080' '#1089#1091#1092#1092#1080 +
      #1082#1089#1072
    WordWrap = True
  end
  object lbl6: TLabel
    Left = 684
    Top = 5
    Width = 92
    Height = 26
    Caption = #1056#1072#1079#1084#1077#1088#1099' '#1092#1086#1088#1084#1099': '#13#10#1042' '#1093' '#1064' : 740 '#1093' 1325'
    Visible = False
  end
  object mmoGenTxt: TMemo
    Left = 528
    Top = 32
    Width = 775
    Height = 630
    Anchors = [akLeft, akTop, akRight, akBottom]
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object btnClose: TBitBtn
    Left = 1204
    Top = 670
    Width = 99
    Height = 25
    Anchors = [akRight, akBottom]
    TabOrder = 1
    Kind = bkClose
  end
  object btnGen: TBitBtn
    Left = 8
    Top = 670
    Width = 1191
    Height = 25
    Anchors = [akLeft, akRight, akBottom]
    Caption = #1043#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1080' '#1089#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1089#1090' '#1074' '#1073#1091#1092#1077#1088
    TabOrder = 2
    OnClick = btnGenClick
    Kind = bkOK
  end
  object mmoSorceText: TMemo
    Left = 8
    Top = 136
    Width = 513
    Height = 525
    Anchors = [akLeft, akTop, akBottom]
    Lines.Strings = (
      'ORGANIZATION_BLOCK "CYC_INT2"'
      'TITLE = "Cyclic Interrupt"'
      'VERSION : 0.1'
      ''
      ''
      'VAR_TEMP'
      
        '  OB32_EV_CLASS : BYTE ;'#9'//Bits 0-3 = 1 (Coming event), Bits 4-7' +
        ' = 1 (Event class 1)'
      '  OB32_STRT_INF : BYTE ;'#9'//16#33 (OB 32 has started)'
      '  OB32_PRIORITY : BYTE ;'#9'//Priority of OB Execution'
      '  OB32_OB_NUMBR : BYTE ;'#9'//32 (Organization block 32, OB32)'
      '  OB32_RESERVED_1 : BYTE ;'#9'//Reserved for system'
      '  OB32_RESERVED_2 : BYTE ;'#9'//Reserved for system'
      '  OB32_PHS_OFFSET : INT ;'#9'//Phase offset (integer, milliseconds)'
      '  OB32_RESERVED_3 : INT ;'#9'//Reserved for system'
      '  OB32_EXC_FREQ : INT ;'#9'//Frequency of execution (msec)'
      '  OB32_DATE_TIME : DATE_AND_TIME ;'#9'//Date and time OB32 started'
      '  NumberDevMaxTime : BYTE ;'#9'//'#1041#1080#1090' '#1089#1072#1084#1086#1081' '#1075#1088#1103#1079#1085#1086#1081' '#1084#1072#1096#1080#1085#1099
      'END_VAR'
      'BEGIN')
    ScrollBars = ssBoth
    TabOrder = 3
  end
  object ePref: TEdit
    Left = 72
    Top = 40
    Width = 441
    Height = 21
    TabOrder = 4
    Text = 'mmoGenPrgr.Lines.Add('#39
  end
  object eSuf: TEdit
    Left = 72
    Top = 72
    Width = 441
    Height = 21
    TabOrder = 5
    Text = #39');'
  end
  object bClrSorceText: TButton
    Left = 443
    Top = 114
    Width = 75
    Height = 22
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 6
    OnClick = bClrSorceTextClick
  end
  object bPasteSorceText: TButton
    Left = 192
    Top = 114
    Width = 118
    Height = 22
    Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1080#1079' '#1073#1091#1092#1077#1088#1072
    TabOrder = 7
    OnClick = bPasteSorceTextClick
  end
  object bClrPasteSorceText: TButton
    Left = 317
    Top = 114
    Width = 118
    Height = 22
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1080' '#1074#1089#1090#1072#1074#1080#1090#1100
    TabOrder = 8
    OnClick = bClrPasteSorceTextClick
  end
end
