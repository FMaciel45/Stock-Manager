inherited FrmProduto: TFrmProduto
  Caption = 'Cadastro de Produtos'
  ClientHeight = 453
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 492
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 176
    Top = 104
    Width = 73
    Height = 15
    Caption = 'Id do Produto'
    FocusControl = DBIdProduto
  end
  object Label2: TLabel [1]
    Left = 176
    Top = 160
    Width = 51
    Height = 15
    Caption = 'Descri'#231#227'o'
    FocusControl = DBDescricaoProduto
  end
  object Label3: TLabel [2]
    Left = 176
    Top = 216
    Width = 74
    Height = 15
    Caption = 'Valor de custo'
    FocusControl = DBCustoProduto
  end
  object Label4: TLabel [3]
    Left = 360
    Top = 216
    Width = 77
    Height = 15
    Caption = 'Valor de venda'
    FocusControl = DBVendaProduto
  end
  object Label5: TLabel [4]
    Left = 544
    Top = 216
    Width = 42
    Height = 15
    Caption = 'Estoque'
    FocusControl = DBEstoqueProduto
  end
  object Label6: TLabel [5]
    Left = 728
    Top = 216
    Width = 87
    Height = 15
    Caption = 'Estoque m'#237'nimo'
    FocusControl = DBEstoqueMinProduto
  end
  object Label7: TLabel [6]
    Left = 176
    Top = 272
    Width = 44
    Height = 15
    Caption = 'Unidade'
  end
  object Label8: TLabel [7]
    Left = 176
    Top = 328
    Width = 47
    Height = 15
    Caption = 'Cadastro'
    FocusControl = DBCadastroProduto
  end
  object Label9: TLabel [8]
    Left = 274
    Top = 272
    Width = 90
    Height = 15
    Caption = 'Id do Fornecedor'
    FocusControl = DBIdFornecedorProduto
  end
  object Label10: TLabel [9]
    Left = 417
    Top = 272
    Width = 33
    Height = 15
    Caption = 'Nome'
    FocusControl = DBNomeFornecedorProduto
  end
  inherited Panel1: TPanel
    TabOrder = 9
    StyleElements = [seFont, seClient, seBorder]
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel2: TPanel
    Top = 413
    TabOrder = 10
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 413
  end
  object DBIdProduto: TDBEdit [12]
    Left = 176
    Top = 120
    Width = 154
    Height = 23
    DataField = 'ID_PRODUTO'
    DataSource = DSPadrao
    TabOrder = 0
  end
  object DBDescricaoProduto: TDBEdit [13]
    Left = 176
    Top = 176
    Width = 717
    Height = 23
    DataField = 'PRODUTO_DESCRICAO'
    DataSource = DSPadrao
    TabOrder = 1
  end
  object DBCustoProduto: TDBEdit [14]
    Left = 176
    Top = 232
    Width = 165
    Height = 23
    DataField = 'VL_CUSTO'
    DataSource = DSPadrao
    TabOrder = 2
  end
  object DBVendaProduto: TDBEdit [15]
    Left = 360
    Top = 232
    Width = 165
    Height = 23
    DataField = 'VL_VENDA'
    DataSource = DSPadrao
    TabOrder = 3
  end
  object DBEstoqueProduto: TDBEdit [16]
    Left = 544
    Top = 232
    Width = 165
    Height = 23
    DataField = 'ESTOQUE'
    DataSource = DSPadrao
    TabOrder = 4
  end
  object DBEstoqueMinProduto: TDBEdit [17]
    Left = 728
    Top = 232
    Width = 165
    Height = 23
    DataField = 'ESTOQUE_MIN'
    DataSource = DSPadrao
    TabOrder = 5
  end
  object DBCadastroProduto: TDBEdit [18]
    Left = 176
    Top = 344
    Width = 154
    Height = 23
    DataField = 'CADASTRO'
    DataSource = DSPadrao
    TabOrder = 8
  end
  object DBIdFornecedorProduto: TDBEdit [19]
    Left = 274
    Top = 288
    Width = 128
    Height = 23
    DataField = 'ID_FORNECEDOR'
    DataSource = DSPadrao
    TabOrder = 6
  end
  object DBNomeFornecedorProduto: TDBEdit [20]
    Left = 417
    Top = 288
    Width = 476
    Height = 23
    DataField = 'NOME'
    DataSource = DSPadrao
    TabOrder = 7
  end
  object DBUnidadeProduto: TDBComboBox [21]
    Left = 176
    Top = 288
    Width = 81
    Height = 23
    DataField = 'UNIDADE'
    DataSource = DSPadrao
    Items.Strings = (
      'Kg'
      'Lt'
      'Ml'
      'Pct'
      'P'#231
      'Und')
    TabOrder = 11
  end
  inherited QueryPadrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      '  A.ID_PRODUTO,'
      '  A.PRODUTO_DESCRICAO,'
      '  A.VL_CUSTO,'
      '  A.VL_VENDA,'
      '  A.ESTOQUE,'
      '  A.ESTOQUE_MIN,'
      '  A.UNIDADE,'
      '  A.CADASTRO, '
      '  A.ID_FORNECEDOR,'
      '  B.NOME  '
      'FROM PRODUTO A, FORNECEDOR B'
      'WHERE A.ID_FORNECEDOR=B.ID_FORNECEDOR;')
    Left = 384
    Top = 88
    object QueryPadraoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryPadraoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object QueryPadraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object QueryPadraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object QueryPadraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object QueryPadraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object QueryPadraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object QueryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
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
  end
  inherited DSPadrao: TDataSource
    Left = 472
    Top = 88
  end
end
