inherited FrmPesqCompraFormaPgto: TFrmPesqCompraFormaPgto
  Caption = 'Pesquisa de Compras por Formas de Pagamento'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited Label1: TLabel
      Visible = False
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lbNomePesq: TLabel
      Visible = False
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lbFimPesq: TLabel
      Left = 142
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 142
    end
    inherited lbInicioPesq: TLabel
      Left = 16
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 16
    end
    inherited cbChavePesquisa: TComboBox
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited edNome: TEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited mkInicio: TMaskEdit
      Left = 16
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 16
    end
    inherited mkFim: TMaskEdit
      Left = 142
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 142
    end
    inherited btTransferir: TBitBtn
      Left = 376
      Visible = False
      ExplicitLeft = 376
    end
    inherited btImprimir: TBitBtn
      Left = 457
      ExplicitLeft = 457
    end
    inherited btPesquisa: TBitBtn
      Left = 295
      OnClick = btPesquisaClick
      ExplicitLeft = 295
    end
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORMA_PGTO'
        Title.Caption = 'ID Forma Pgto.'
        Width = 157
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o Forma Pgto.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE_COMPRA'
        Title.Caption = 'Qtde. Compra'
        Width = 185
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_COMPRA'
        Title.Caption = 'Valor Compra'
        Width = 202
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 0
    ExplicitTop = 440
    inherited lbResultado: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    object lbValorCompras: TLabel
      Left = 283
      Top = 6
      Width = 116
      Height = 21
      Caption = 'lbValorCompras'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  inherited DBNavigator1: TDBNavigator
    Hints.Strings = ()
  end
  inherited QueryPesqPadrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      '  A.ID_FORMA_PGTO, '
      '  B.DESCRICAO, '
      '  COUNT(A.ID_COMPRA) AS QTDE_COMPRA, '
      '  SUM(A.VALOR) AS VALOR_COMPRA  '
      'FROM COMPRA A '
      'INNER JOIN FORMA_PGTO B ON B.ID_FORMA_PGTO=A.ID_FORMA_PGTO '
      'GROUP BY A.ID_FORMA_PGTO, B.DESCRICAO'
      'ORDER BY A.ID_FORMA_PGTO, B.DESCRICAO;')
    object QueryPesqPadraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object QueryPesqPadraoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QueryPesqPadraoQTDE_COMPRA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTDE_COMPRA'
      Origin = 'QTDE_COMPRA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryPesqPadraoVALOR_COMPRA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
  inherited RelPesqPadrao: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
    Watermarks = <>
  end
  inherited DataSetPesqPadrao: TfrxDBDataset
    Left = 368
    Top = 360
  end
end
