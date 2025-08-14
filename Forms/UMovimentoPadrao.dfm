inherited FrmPadraoMovimento: TFrmPadraoMovimento
  Caption = 'Formul'#225'rio Padr'#227'o de Movimentos'
  ClientHeight = 511
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 550
  TextHeight = 15
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel2: TPanel
    Top = 456
    Height = 55
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 456
    ExplicitHeight = 55
    object btItem: TBitBtn
      Left = 16
      Top = 14
      Width = 75
      Height = 30
      Caption = '&Item'
      TabOrder = 0
    end
    object btOk: TBitBtn
      Left = 97
      Top = 14
      Width = 75
      Height = 30
      Caption = '&Ok'
      TabOrder = 1
    end
    object btExcluir: TBitBtn
      Left = 178
      Top = 14
      Width = 75
      Height = 30
      Caption = '&Excluir'
      TabOrder = 2
    end
    object btImprimir: TBitBtn
      Left = 259
      Top = 14
      Width = 75
      Height = 30
      Caption = '&Imprimir'
      TabOrder = 3
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 70
    Width = 1090
    Height = 110
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 2
  end
  object Panel4: TPanel [3]
    Left = 0
    Top = 386
    Width = 1090
    Height = 70
    Align = alBottom
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 3
  end
  object DBGrid1: TDBGrid [4]
    Left = 0
    Top = 180
    Width = 1090
    Height = 206
    Align = alClient
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  inherited QueryPadrao: TFDQuery
    Left = 720
    Top = 16
  end
  inherited DSPadrao: TDataSource
    Left = 800
    Top = 16
  end
  object QueryPadraoItem: TFDQuery
    MasterSource = DSPadrao
    Left = 920
    Top = 16
  end
  object DSPadraoItem: TDataSource
    DataSet = QueryPadraoItem
    Left = 1016
    Top = 16
  end
end
