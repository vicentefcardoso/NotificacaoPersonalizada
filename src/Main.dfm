object FrmMain: TFrmMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Exemplo Notifica'#231#227'o Personalizada'
  ClientHeight = 472
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 21
  object GrpMsgConfirmacao: TGroupBox
    Left = 0
    Top = 0
    Width = 624
    Height = 233
    Align = alTop
    Caption = 'Mensagem de Confirma'#231#227'o'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 107
      Width = 81
      Height = 21
      Caption = 'Mensagem '
    end
    object Label2: TLabel
      Left = 16
      Top = 45
      Width = 120
      Height = 21
      Caption = 'T'#237'tulo Mensagem'
    end
    object BtnConfirmacao: TButton
      Left = 16
      Top = 166
      Width = 217
      Height = 35
      Caption = 'Confirma'#231#227'o'
      TabOrder = 2
      OnClick = BtnConfirmacaoClick
    end
    object EdtMsgConfirmacaoMensagem: TEdit
      Left = 16
      Top = 131
      Width = 585
      Height = 29
      TabOrder = 1
      Text = 'Registro salvo com sucesso!'
    end
    object EdtMsgConfirmacaoTitulo: TEdit
      Left = 16
      Top = 72
      Width = 297
      Height = 29
      TabOrder = 0
      Text = 'Notifica'#231#227'o'
    end
  end
  object GrpMsgPergunta: TGroupBox
    Left = 0
    Top = 233
    Width = 624
    Height = 233
    Align = alTop
    Caption = 'Mensagem Pergunta'
    TabOrder = 1
    ExplicitTop = 8
    object Label3: TLabel
      Left = 16
      Top = 107
      Width = 81
      Height = 21
      Caption = 'Mensagem '
    end
    object Label4: TLabel
      Left = 16
      Top = 45
      Width = 120
      Height = 21
      Caption = 'T'#237'tulo Mensagem'
    end
    object BtnPergunta: TButton
      Left = 16
      Top = 166
      Width = 217
      Height = 35
      Caption = 'Pergunta'
      TabOrder = 2
      OnClick = BtnPerguntaClick
    end
    object EdtMsgPerguntaMensagem: TEdit
      Left = 16
      Top = 131
      Width = 585
      Height = 29
      TabOrder = 1
      Text = 'Deseja excluir esse registro?'
    end
    object EdtMsgPerguntaTitulo: TEdit
      Left = 16
      Top = 72
      Width = 297
      Height = 29
      TabOrder = 0
      Text = 'Confirma'#231#227'o'
    end
  end
end
