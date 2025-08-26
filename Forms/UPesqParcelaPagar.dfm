inherited FrmPesqParcelaPagar: TFrmPesqParcelaPagar
  Caption = 'Pesquisa de Parcelas a Pagar'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited Label1: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lbNomePesq: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lbFimPesq: TLabel
      Visible = False
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lbInicioPesq: TLabel
      Visible = False
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited cbChavePesquisa: TComboBox
      StyleElements = [seFont, seClient, seBorder]
      Items.Strings = (
        'C'#243'digo do Fornecedor'
        'Nome do Fornecedor'
        'CNPJ do Fornecedor')
    end
    inherited edNome: TEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited mkInicio: TMaskEdit
      Visible = False
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited mkFim: TMaskEdit
      Visible = False
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited btTransferir: TBitBtn
      Left = 744
      Top = 25
      OnClick = btTransferirClick
      ExplicitLeft = 744
      ExplicitTop = 25
    end
    inherited btImprimir: TBitBtn
      Left = 825
      Top = 25
      ExplicitLeft = 825
      ExplicitTop = 25
    end
    inherited btPesquisa: TBitBtn
      Left = 663
      Top = 25
      OnClick = btPesquisaClick
      ExplicitLeft = 663
      ExplicitTop = 25
    end
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_COMPRA'
        Title.Caption = 'ID Compra'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_SEQUENCIA'
        Title.Caption = 'ID Sequ'#234'ncia'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Title.Caption = 'ID Fornecedor'
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 322
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PARCELA'
        Title.Caption = 'Valor Parcela'
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_VENCIMENTO'
        Title.Caption = 'Data Vencimento'
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_PAGAMENTO'
        Title.Caption = 'Data Pagamento'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATRASO'
        Title.Caption = 'Atraso'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JUROS'
        Title.Caption = 'Juros'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_JUROS'
        Title.Caption = 'Valor Juros'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_PAGAR'
        Title.Caption = 'Total Pagar'
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Status'
        Width = 104
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
  end
  inherited DBNavigator1: TDBNavigator
    Hints.Strings = ()
  end
  inherited QueryPesqPadrao: TFDQuery
    SQL.Strings = (
      'SELECT'
      '  A.ID_COMPRA,'
      '  A.ID_FORNECEDOR,'
      '  B.NOME,'
      '  B.CNPJ,'
      '  C.ID_SEQUENCIA,'
      '  C.VALOR_PARCELA,'
      '  C.DT_VENCIMENTO,'
      '  C.DT_PAGAMENTO,'
      '  C.ATRASO,'
      '  C.JUROS,'
      '  C.VL_JUROS,'
      '  C.TOTAL_PAGAR,'
      '  C.STATUS'
      'FROM COMPRA A'
      'INNER JOIN FORNECEDOR B ON B.ID_FORNECEDOR=A.ID_FORNECEDOR'
      'INNER JOIN CONTAS_PAGAR C ON C.ID_COMPRA=A.ID_COMPRA'
      'ORDER BY A.ID_COMPRA;')
    object QueryPesqPadraoID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryPesqPadraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object QueryPesqPadraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QueryPesqPadraoCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryPesqPadraoID_SEQUENCIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryPesqPadraoVALOR_PARCELA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QueryPesqPadraoDT_VENCIMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryPesqPadraoDT_PAGAMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryPesqPadraoATRASO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryPesqPadraoJUROS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS'
      Origin = 'JUROS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QueryPesqPadraoVL_JUROS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QueryPesqPadraoTOTAL_PAGAR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QueryPesqPadraoSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'STATUS'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
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
