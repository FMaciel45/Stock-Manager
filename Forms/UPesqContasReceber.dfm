inherited FrmPesqParcelasReceber: TFrmPesqParcelasReceber
  Caption = 'Pesquisa de Parcelas a Receber'
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
      OnClick = cbChavePesquisaClick
      Items.Strings = (
        'Cliente'
        'Nome'
        'CPF')
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
      Left = 741
      OnClick = btTransferirClick
      ExplicitLeft = 741
    end
    inherited btImprimir: TBitBtn
      Left = 822
      ExplicitLeft = 822
    end
    inherited btPesquisa: TBitBtn
      Left = 660
      OnClick = btPesquisaClick
      ExplicitLeft = 660
    end
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_VENDA'
        Title.Caption = 'ID Venda'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_SEQUENCIA'
        Title.Caption = 'ID Sequ'#234'ncia'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Caption = 'ID Cliente'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 575
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PARCELA'
        Title.Caption = 'Valor Parcela'
        Width = 133
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_VENCIMENTO'
        Title.Caption = 'DT Vencimento'
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_PAGAMENTO'
        Title.Caption = 'DT Pagamento'
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATRASO'
        Title.Caption = 'Atraso'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JUROS'
        Title.Caption = 'Juros'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_JUROS'
        Title.Caption = 'Valor Juros'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_PAGAR'
        Title.Caption = 'Total Pagar'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Status'
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
      '  A.ID_VENDA,'
      '  A.ID_CLIENTE,'
      '  B.NOME,'
      '  B.CPF,'
      '  C.ID_SEQUENCIA,'
      '  C.VALOR_PARCELA,'
      '  C.DT_VENCIMENTO,'
      '  C.DT_PAGAMENTO,'
      '  C.ATRASO,'
      '  C.JUROS,'
      '  C.VL_JUROS,'
      '  C.TOTAL_PAGAR,'
      '  C.STATUS'
      'FROM VENDA A'
      'INNER JOIN CLIENTES B ON B.ID_CLIENTE=A.ID_CLIENTE'
      'INNER JOIN CONTAS_RECEBER C ON C.ID_VENDA=A.ID_VENDA'
      'WHERE C.STATUS='#39'Em aberto'#39
      'ORDER BY A.ID_VENDA;')
    object QueryPesqPadraoID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryPesqPadraoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
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
    object QueryPesqPadraoCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF'
      Origin = 'CPF'
      ProviderFlags = []
      ReadOnly = True
      Size = 16
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
      currency = True
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
      currency = True
      Precision = 18
      Size = 2
    end
    object QueryPesqPadraoTOTAL_PAGAR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      ProviderFlags = []
      ReadOnly = True
      currency = True
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
