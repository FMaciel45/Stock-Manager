inherited FrmContasPagar: TFrmContasPagar
  Caption = 'Pagamento de Contas'
  ClientHeight = 406
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 445
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 16
    Top = 163
    Width = 74
    Height = 15
    Caption = 'ID Fornecedor'
    FocusControl = DBIdFornecedor
  end
  object Label2: TLabel [1]
    Left = 188
    Top = 163
    Width = 33
    Height = 15
    Caption = 'Nome'
    FocusControl = DBNome
  end
  object Label3: TLabel [2]
    Left = 876
    Top = 163
    Width = 27
    Height = 15
    Caption = 'CNPJ'
    FocusControl = DBCNPJ
  end
  object Label4: TLabel [3]
    Left = 16
    Top = 219
    Width = 68
    Height = 15
    Caption = 'ID Sequ'#234'ncia'
    FocusControl = DBIdSequencia
  end
  object Label5: TLabel [4]
    Left = 188
    Top = 219
    Width = 67
    Height = 15
    Caption = 'Valor Parcela'
    FocusControl = DBValorParcela
  end
  object Label6: TLabel [5]
    Left = 365
    Top = 219
    Width = 90
    Height = 15
    Caption = 'Data Vencimento'
    FocusControl = DBDtVencimento
  end
  object Label7: TLabel [6]
    Left = 619
    Top = 219
    Width = 88
    Height = 15
    Caption = 'Data Pagamento'
    FocusControl = DBDtPagamento
  end
  object Label8: TLabel [7]
    Left = 876
    Top = 219
    Width = 34
    Height = 15
    Caption = 'Atraso'
    FocusControl = DBAtraso
  end
  object Label9: TLabel [8]
    Left = 16
    Top = 276
    Width = 27
    Height = 15
    Caption = 'Juros'
    FocusControl = DBJuros
  end
  object Label10: TLabel [9]
    Left = 188
    Top = 276
    Width = 56
    Height = 15
    Caption = 'Valor Juros'
    FocusControl = DBVlJuros
  end
  object Label11: TLabel [10]
    Left = 365
    Top = 276
    Width = 68
    Height = 15
    Caption = 'Total a Pagar'
    FocusControl = DBTotalPagar
  end
  object Label12: TLabel [11]
    Left = 188
    Top = 107
    Width = 32
    Height = 15
    Caption = 'Status'
    FocusControl = DBStatus
  end
  object Label13: TLabel [12]
    Left = 16
    Top = 107
    Width = 57
    Height = 15
    Caption = 'ID Compra'
    FocusControl = DBIdCompra
  end
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited btNovo: TBitBtn
      Visible = False
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel2: TPanel
    Top = 366
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 366
  end
  object DBIdFornecedor: TDBEdit [15]
    Left = 16
    Top = 179
    Width = 150
    Height = 23
    DataField = 'ID_FORNECEDOR'
    DataSource = DSPadrao
    TabOrder = 2
  end
  object DBNome: TDBEdit [16]
    Left = 188
    Top = 179
    Width = 661
    Height = 23
    DataField = 'NOME'
    DataSource = DSPadrao
    TabOrder = 3
  end
  object DBCNPJ: TDBEdit [17]
    Left = 876
    Top = 179
    Width = 200
    Height = 23
    DataField = 'CNPJ'
    DataSource = DSPadrao
    TabOrder = 4
  end
  object DBIdSequencia: TDBEdit [18]
    Left = 16
    Top = 235
    Width = 150
    Height = 23
    DataField = 'ID_SEQUENCIA'
    DataSource = DSPagar
    TabOrder = 5
  end
  object DBValorParcela: TDBEdit [19]
    Left = 188
    Top = 235
    Width = 150
    Height = 23
    DataField = 'VALOR_PARCELA'
    DataSource = DSPagar
    TabOrder = 6
  end
  object DBDtVencimento: TDBEdit [20]
    Left = 365
    Top = 235
    Width = 230
    Height = 23
    DataField = 'DT_VENCIMENTO'
    DataSource = DSPagar
    TabOrder = 7
  end
  object DBDtPagamento: TDBEdit [21]
    Left = 619
    Top = 235
    Width = 230
    Height = 23
    DataField = 'DT_PAGAMENTO'
    DataSource = DSPagar
    TabOrder = 8
    OnExit = DBDtPagamentoExit
  end
  object DBAtraso: TDBEdit [22]
    Left = 876
    Top = 235
    Width = 200
    Height = 23
    DataField = 'ATRASO'
    DataSource = DSPagar
    TabOrder = 9
  end
  object DBJuros: TDBEdit [23]
    Left = 16
    Top = 292
    Width = 150
    Height = 23
    DataField = 'JUROS'
    DataSource = DSPagar
    TabOrder = 10
  end
  object DBVlJuros: TDBEdit [24]
    Left = 188
    Top = 292
    Width = 150
    Height = 23
    DataField = 'VL_JUROS'
    DataSource = DSPagar
    TabOrder = 11
  end
  object DBTotalPagar: TDBEdit [25]
    Left = 365
    Top = 292
    Width = 230
    Height = 23
    DataField = 'TOTAL_PAGAR'
    DataSource = DSPagar
    TabOrder = 12
  end
  object DBStatus: TDBEdit [26]
    Left = 188
    Top = 123
    Width = 150
    Height = 23
    DataField = 'STATUS'
    DataSource = DSPagar
    TabOrder = 13
  end
  object DBIdCompra: TDBEdit [27]
    Left = 16
    Top = 123
    Width = 150
    Height = 23
    DataField = 'ID_COMPRA'
    DataSource = DSPadrao
    TabOrder = 14
  end
  inherited QueryPadrao: TFDQuery
    SQL.Strings = (
      'SELECT'
      '  A.ID_COMPRA,'
      '  A.ID_FORNECEDOR,'
      '  B.NOME,'
      '  B.CNPJ'
      'FROM COMPRA A'
      'INNER JOIN FORNECEDOR B ON B.ID_FORNECEDOR=A.ID_FORNECEDOR'
      'ORDER BY A.ID_COMPRA;')
    Left = 392
    Top = 96
    object QueryPadraoID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryPadraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object QueryPadraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QueryPadraoCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  inherited DSPadrao: TDataSource
    Left = 472
    Top = 96
  end
  object QueryPagar: TFDQuery
    IndexFieldNames = 'ID_COMPRA'
    MasterSource = DSPadrao
    MasterFields = 'ID_COMPRA'
    DetailFields = 'ID_COMPRA'
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  ID_SEQUENCIA,'
      '  ID_COMPRA,'
      '  VALOR_PARCELA,'
      '  DT_VENCIMENTO,'
      '  DT_PAGAMENTO,'
      '  ATRASO,'
      '  JUROS,'
      '  VL_JUROS,'
      '  TOTAL_PAGAR,'
      '  STATUS'
      'FROM CONTAS_PAGAR'
      'WHERE ID_COMPRA=:ID_COMPRA'
      'ORDER BY ID_COMPRA;')
    Left = 560
    Top = 96
    ParamData = <
      item
        Name = 'ID_COMPRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QueryPagarID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryPagarID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryPagarVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object QueryPagarDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      Required = True
    end
    object QueryPagarDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
    end
    object QueryPagarATRASO: TIntegerField
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
    end
    object QueryPagarJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 18
      Size = 2
    end
    object QueryPagarVL_JUROS: TFMTBCDField
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      currency = True
      Precision = 18
      Size = 2
    end
    object QueryPagarTOTAL_PAGAR: TFMTBCDField
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      currency = True
      Precision = 18
      Size = 2
    end
    object QueryPagarSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 30
    end
  end
  object DSPagar: TDataSource
    DataSet = QueryPagar
    Left = 632
    Top = 96
  end
end
