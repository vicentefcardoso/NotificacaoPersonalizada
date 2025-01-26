object FrmNotificacao: TFrmNotificacao
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 251
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 21
  object PnlTop: TPanel
    Left = 0
    Top = 0
    Width = 470
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Color = 5987163
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object BtnClose: TSpeedButton
      AlignWithMargins = True
      Left = 430
      Top = 5
      Width = 32
      Height = 23
      Hint = 'lose the notification'
      Margins.Top = 5
      Margins.Right = 8
      Margins.Bottom = 5
      Align = alRight
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        200000000000000400000000000000000000000000000000000000000000131C
        3C471E2B5F700000000000000000000000000000000000000000000000000000
        00000000000000000000000000001F2D6375131C3C4700000000131C3C474260
        D0F64463D8FF1F2D617300000000000000000000000000000000000000000000
        00000000000000000000202E65774463D8FF4260D1F7131C3C472130687B4463
        D8FF4463D8FF4463D8FF1F2D6173000000000000000000000000000000000000
        000000000000202E65774463D8FF4463D8FF4463D8FF212F677A000000002231
        6C7F4463D8FF4463D8FF4463D8FF1F2D61730000000000000000000000000000
        0000202E65774463D8FF4463D8FF4463D8FF22316B7E00000000000000000000
        000022316C7F4463D8FF4463D8FF4463D8FF1F2D61730000000000000000202E
        65774463D8FF4463D8FF4463D8FF22316B7E0000000000000000000000000000
        00000000000022316C7F4463D8FF4463D8FF4463D8FF1F2D6173202E65774463
        D8FF4463D8FF4463D8FF22316B7E000000000000000000000000000000000000
        0000000000000000000022316C7F4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF22316B7E00000000000000000000000000000000000000000000
        000000000000000000000000000022316C7F4463D8FF4463D8FF4463D8FF4463
        D8FF22316B7E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000202E65774463D8FF4463D8FF4463D8FF4463
        D8FF1F2D62740000000000000000000000000000000000000000000000000000
        00000000000000000000202E65774463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF1F2D627400000000000000000000000000000000000000000000
        000000000000202E65774463D8FF4463D8FF4463D8FF22316B7E22316C7F4463
        D8FF4463D8FF4463D8FF1F2D6274000000000000000000000000000000000000
        0000202E65774463D8FF4463D8FF4463D8FF21316A7D00000000000000002231
        6C7F4463D8FF4463D8FF4463D8FF1F2D6274000000000000000000000000202E
        65774463D8FF4463D8FF4463D8FF21316A7D0000000000000000000000000000
        000022316C7F4463D8FF4463D8FF4463D8FF1F2D6274000000001F2D63754463
        D8FF4463D8FF4463D8FF21316A7D000000000000000000000000000000000000
        00000000000022316C7F4463D8FF4463D8FF4463D8FF1E2C6172151E414D4261
        D3F94463D8FF21316A7D00000000000000000000000000000000000000000000
        0000000000000000000022316C7F4463D8FF4261D3F9151E424E00000000151E
        414D212F677A0000000000000000000000000000000000000000000000000000
        00000000000000000000000000002130687B151E414D00000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnCloseClick
      ExplicitLeft = 416
      ExplicitTop = 3
      ExplicitHeight = 35
    end
    object LblTitulo: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 8
      Width = 421
      Height = 22
      Margins.Top = 8
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'LblTitulo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnMouseDown = LblTituloMouseDown
      ExplicitLeft = 112
      ExplicitWidth = 38
      ExplicitHeight = 17
    end
  end
  object PnlBottom: TPanel
    Left = 0
    Top = 214
    Width = 470
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    Color = 5987163
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 213
    object BtnNao: TButton
      AlignWithMargins = True
      Left = 390
      Top = 6
      Width = 75
      Height = 25
      Margins.Left = 5
      Margins.Top = 6
      Margins.Right = 5
      Margins.Bottom = 6
      Align = alRight
      Caption = 'N'#227'o'
      TabOrder = 1
      OnClick = BtnNaoClick
      ExplicitLeft = 389
      ExplicitTop = 7
    end
    object BtnSim: TButton
      AlignWithMargins = True
      Left = 305
      Top = 6
      Width = 75
      Height = 25
      Margins.Left = 5
      Margins.Top = 6
      Margins.Right = 5
      Margins.Bottom = 6
      Align = alRight
      Caption = 'Sim'
      TabOrder = 0
      OnClick = BtnSimClick
      ExplicitLeft = 309
      ExplicitTop = 7
    end
  end
  object PnlCenter: TPanel
    Left = 0
    Top = 33
    Width = 470
    Height = 181
    Align = alClient
    BevelOuter = bvNone
    Color = 8947848
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 122
    ExplicitHeight = 33
    object LblMessage: TLabel
      AlignWithMargins = True
      Left = 8
      Top = 3
      Width = 454
      Height = 175
      Margins.Left = 8
      Margins.Right = 8
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'LblMessage'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      WordWrap = True
      OnMouseDown = LblMessageMouseDown
      ExplicitLeft = 0
      ExplicitTop = -6
      ExplicitWidth = 304
      ExplicitHeight = 103
    end
  end
end
