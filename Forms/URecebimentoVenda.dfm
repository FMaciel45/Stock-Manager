object FrmRecebimentoVenda: TFrmRecebimentoVenda
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Recebimento de Vendas'
  ClientHeight = 365
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 232
    Top = 15
    Width = 79
    Height = 15
    Caption = 'ID Forma Pgto.'
  end
  object Label2: TLabel
    Left = 376
    Top = 15
    Width = 119
    Height = 15
    Caption = 'Descri'#231#227'o Forma Pgto.'
  end
  object Label3: TLabel
    Left = 376
    Top = 75
    Width = 26
    Height = 15
    Caption = 'Valor'
  end
  object Label4: TLabel
    Left = 376
    Top = 135
    Width = 38
    Height = 15
    Caption = 'Parcela'
  end
  object Label5: TLabel
    Left = 376
    Top = 193
    Width = 56
    Height = 15
    Caption = 'Valor Pago'
  end
  object Label6: TLabel
    Left = 376
    Top = 253
    Width = 30
    Height = 15
    Caption = 'Troco'
  end
  object Panel1: TPanel
    Left = 0
    Top = 306
    Width = 624
    Height = 59
    Align = alBottom
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 7
    object btOk: TBitBtn
      Left = 14
      Top = 14
      Width = 80
      Height = 30
      Caption = '&Ok'
      TabOrder = 0
      OnClick = btOkClick
    end
  end
  object RGFormaPgto: TRadioGroup
    Left = 0
    Top = 8
    Width = 202
    Height = 297
    Caption = 'Formas de Pagamento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    Items.Strings = (
      #192' vista'
      'Cart'#227'o de d'#233'bito'
      'Cart'#227'o de cr'#233'dito'
      'Nota promiss'#243'ria')
    ParentFont = False
    TabOrder = 0
    OnClick = RGFormaPgtoClick
  end
  object DBDescricaoPgto: TDBEdit
    Left = 376
    Top = 36
    Width = 225
    Height = 23
    DataField = 'DESCRICAO'
    DataSource = FrmVenda.DSPadrao
    TabOrder = 2
  end
  object DBParcela: TDBEdit
    Left = 376
    Top = 150
    Width = 225
    Height = 23
    DataField = 'PARCELA'
    DataSource = FrmVenda.DSPadrao
    TabOrder = 4
  end
  object DBIdFormaPgto: TDBEdit
    Left = 232
    Top = 36
    Width = 113
    Height = 23
    DataField = 'ID_FORMA_PGTO'
    DataSource = FrmVenda.DSPadrao
    TabOrder = 1
  end
  object DBValor: TDBEdit
    Left = 376
    Top = 96
    Width = 225
    Height = 23
    DataField = 'VALOR'
    DataSource = FrmVenda.DSPadrao
    TabOrder = 3
  end
  object DBTroco: TDBEdit
    Left = 376
    Top = 268
    Width = 225
    Height = 23
    DataField = 'TROCO'
    DataSource = FrmVenda.DSPadrao
    TabOrder = 6
  end
  object DBValorPago: TDBEdit
    Left = 376
    Top = 214
    Width = 225
    Height = 23
    DataField = 'DINHEIRO'
    DataSource = FrmVenda.DSPadrao
    TabOrder = 5
    OnExit = DBValorPagoExit
  end
end
