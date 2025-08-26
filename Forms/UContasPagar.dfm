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
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 188
    Top = 163
    Width = 33
    Height = 15
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 876
    Top = 163
    Width = 27
    Height = 15
    Caption = 'CNPJ'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 16
    Top = 219
    Width = 68
    Height = 15
    Caption = 'ID Sequ'#234'ncia'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 188
    Top = 219
    Width = 67
    Height = 15
    Caption = 'Valor Parcela'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 365
    Top = 219
    Width = 90
    Height = 15
    Caption = 'Data Vencimento'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 619
    Top = 219
    Width = 88
    Height = 15
    Caption = 'Data Pagamento'
    FocusControl = DBDTPagamento
  end
  object Label8: TLabel [7]
    Left = 876
    Top = 219
    Width = 34
    Height = 15
    Caption = 'Atraso'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 16
    Top = 276
    Width = 27
    Height = 15
    Caption = 'Juros'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 188
    Top = 276
    Width = 56
    Height = 15
    Caption = 'Valor Juros'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [10]
    Left = 365
    Top = 276
    Width = 68
    Height = 15
    Caption = 'Total a Pagar'
    FocusControl = DBEdit11
  end
  object Label12: TLabel [11]
    Left = 188
    Top = 107
    Width = 32
    Height = 15
    Caption = 'Status'
    FocusControl = DBEdit12
  end
  object Label13: TLabel [12]
    Left = 16
    Top = 107
    Width = 57
    Height = 15
    Caption = 'ID Compra'
    FocusControl = DBEdit13
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
  object DBEdit1: TDBEdit [15]
    Left = 16
    Top = 179
    Width = 150
    Height = 23
    DataField = 'ID_FORNECEDOR'
    DataSource = DSPadrao
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [16]
    Left = 188
    Top = 179
    Width = 661
    Height = 23
    DataField = 'NOME'
    DataSource = DSPadrao
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [17]
    Left = 876
    Top = 179
    Width = 200
    Height = 23
    DataField = 'CNPJ'
    DataSource = DSPadrao
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [18]
    Left = 16
    Top = 235
    Width = 150
    Height = 23
    DataField = 'ID_SEQUENCIA'
    DataSource = DSPadrao
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [19]
    Left = 188
    Top = 235
    Width = 150
    Height = 23
    DataField = 'VALOR_PARCELA'
    DataSource = DSPadrao
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [20]
    Left = 365
    Top = 235
    Width = 230
    Height = 23
    DataField = 'DT_VENCIMENTO'
    DataSource = DSPadrao
    TabOrder = 7
  end
  object DBDTPagamento: TDBEdit [21]
    Left = 619
    Top = 235
    Width = 230
    Height = 23
    DataField = 'DT_PAGAMENTO'
    DataSource = DSPadrao
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [22]
    Left = 876
    Top = 235
    Width = 200
    Height = 23
    DataField = 'ATRASO'
    DataSource = DSPadrao
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [23]
    Left = 16
    Top = 292
    Width = 150
    Height = 23
    DataField = 'JUROS'
    DataSource = DSPadrao
    TabOrder = 10
  end
  object DBEdit10: TDBEdit [24]
    Left = 188
    Top = 292
    Width = 150
    Height = 23
    DataField = 'VL_JUROS'
    DataSource = DSPadrao
    TabOrder = 11
  end
  object DBEdit11: TDBEdit [25]
    Left = 365
    Top = 292
    Width = 230
    Height = 23
    DataField = 'TOTAL_PAGAR'
    DataSource = DSPadrao
    TabOrder = 12
  end
  object DBEdit12: TDBEdit [26]
    Left = 188
    Top = 123
    Width = 150
    Height = 23
    DataField = 'STATUS'
    DataSource = DSPadrao
    TabOrder = 13
  end
  object DBEdit13: TDBEdit [27]
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
      'WHERE STATUS='#39'Em aberto'#39
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
    object QueryPadraoID_SEQUENCIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryPadraoVALOR_PARCELA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QueryPadraoDT_VENCIMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryPadraoDT_PAGAMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryPadraoATRASO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryPadraoJUROS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS'
      Origin = 'JUROS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QueryPadraoVL_JUROS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QueryPadraoTOTAL_PAGAR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QueryPadraoSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'STATUS'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
  end
  inherited DSPadrao: TDataSource
    Left = 472
    Top = 96
  end
end
