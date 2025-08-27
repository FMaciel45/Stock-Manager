inherited FrmContasReceber: TFrmContasReceber
  Caption = 'Contas/Parcelas a Receber'
  ClientHeight = 406
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 445
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 16
    Top = 163
    Width = 51
    Height = 15
    Caption = 'ID Cliente'
    FocusControl = DBIdCliente
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
    Width = 21
    Height = 15
    Caption = 'CPF'
    FocusControl = DBCPF
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
    Width = 46
    Height = 15
    Caption = 'ID Venda'
    FocusControl = DBIdVenda
  end
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited btNovo: TBitBtn
      Visible = False
    end
    inherited btDeletar: TBitBtn
      Visible = False
    end
    inherited btGravar: TBitBtn
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
  object DBIdCliente: TDBEdit [15]
    Left = 16
    Top = 179
    Width = 150
    Height = 23
    DataField = 'ID_CLIENTE'
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
  object DBCPF: TDBEdit [17]
    Left = 876
    Top = 179
    Width = 200
    Height = 23
    DataField = 'CPF'
    DataSource = DSPadrao
    TabOrder = 4
  end
  object DBIdSequencia: TDBEdit [18]
    Left = 16
    Top = 235
    Width = 150
    Height = 23
    DataField = 'ID_SEQUENCIA'
    DataSource = DSReceber
    TabOrder = 5
  end
  object DBValorParcela: TDBEdit [19]
    Left = 188
    Top = 235
    Width = 150
    Height = 23
    DataField = 'VALOR_PARCELA'
    DataSource = DSReceber
    TabOrder = 6
  end
  object DBDtVencimento: TDBEdit [20]
    Left = 365
    Top = 235
    Width = 230
    Height = 23
    DataField = 'DT_VENCIMENTO'
    DataSource = DSReceber
    TabOrder = 7
  end
  object DBDtPagamento: TDBEdit [21]
    Left = 619
    Top = 235
    Width = 230
    Height = 23
    DataField = 'DT_PAGAMENTO'
    DataSource = DSReceber
    TabOrder = 8
  end
  object DBAtraso: TDBEdit [22]
    Left = 876
    Top = 235
    Width = 200
    Height = 23
    DataField = 'ATRASO'
    DataSource = DSReceber
    TabOrder = 9
  end
  object DBJuros: TDBEdit [23]
    Left = 16
    Top = 292
    Width = 150
    Height = 23
    DataField = 'JUROS'
    DataSource = DSReceber
    TabOrder = 10
  end
  object DBVlJuros: TDBEdit [24]
    Left = 188
    Top = 292
    Width = 150
    Height = 23
    DataField = 'VL_JUROS'
    DataSource = DSReceber
    TabOrder = 11
  end
  object DBTotalPagar: TDBEdit [25]
    Left = 365
    Top = 292
    Width = 230
    Height = 23
    DataField = 'TOTAL_PAGAR'
    DataSource = DSReceber
    TabOrder = 12
  end
  object DBStatus: TDBEdit [26]
    Left = 188
    Top = 123
    Width = 150
    Height = 23
    DataField = 'STATUS'
    DataSource = DSReceber
    TabOrder = 13
  end
  object DBIdVenda: TDBEdit [27]
    Left = 16
    Top = 123
    Width = 150
    Height = 23
    DataField = 'ID_VENDA'
    DataSource = DSPadrao
    TabOrder = 14
  end
  inherited QueryPadrao: TFDQuery
    SQL.Strings = (
      'SELECT'
      '  A.ID_VENDA,'
      '  A.ID_CLIENTE,'
      '  B.NOME,'
      '  B.CPF'
      'FROM VENDA A'
      'INNER JOIN CLIENTES B ON B.ID_CLIENTE=A.ID_CLIENTE'
      'ORDER BY A.ID_VENDA;')
    Left = 752
    Top = 16
    object QueryPadraoID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryPadraoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
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
    object QueryPadraoCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF'
      Origin = 'CPF'
      ProviderFlags = []
      ReadOnly = True
      Size = 16
    end
  end
  inherited DSPadrao: TDataSource
    Left = 824
    Top = 16
  end
  object QueryReceber: TFDQuery
    IndexFieldNames = 'ID_VENDA'
    MasterSource = DSPadrao
    MasterFields = 'ID_VENDA'
    DetailFields = 'ID_VENDA'
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  ID_SEQUENCIA,'
      '  ID_VENDA,'
      '  VALOR_PARCELA,'
      '  DT_VENCIMENTO,'
      '  DT_PAGAMENTO,'
      '  ATRASO,'
      '  JUROS,'
      '  VL_JUROS,'
      '  TOTAL_PAGAR,'
      '  STATUS'
      'FROM CONTAS_RECEBER'
      'WHERE ID_VENDA=:ID_VENDA'
      'ORDER BY ID_VENDA;')
    Left = 907
    Top = 16
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QueryReceberID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryReceberID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryReceberVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      Required = True
      Precision = 18
      Size = 2
    end
    object QueryReceberDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      Required = True
    end
    object QueryReceberDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
    end
    object QueryReceberATRASO: TIntegerField
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
    end
    object QueryReceberJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 18
      Size = 2
    end
    object QueryReceberVL_JUROS: TFMTBCDField
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      Precision = 18
      Size = 2
    end
    object QueryReceberTOTAL_PAGAR: TFMTBCDField
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      Precision = 18
      Size = 2
    end
    object QueryReceberSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 30
    end
  end
  object DSReceber: TDataSource
    DataSet = QueryReceber
    Left = 984
    Top = 16
  end
end
