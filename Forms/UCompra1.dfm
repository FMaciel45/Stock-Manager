inherited FrmCompra1: TFrmCompra1
  Caption = 'Cadastro de Compras'
  ClientHeight = 611
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 650
  TextHeight = 15
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel2: TPanel
    Top = 556
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 556
    inherited btItem: TBitBtn
      OnClick = BitBtn1Click
    end
    inherited btOk: TBitBtn
      OnClick = btOkClick
    end
  end
  inherited Panel3: TPanel
    Height = 155
    StyleElements = [seFont, seClient, seBorder]
    ExplicitHeight = 155
    object Label1: TLabel
      Left = 16
      Top = 11
      Width = 72
      Height = 15
      Caption = 'Id da Compra'
      FocusControl = DBIdCompra
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 90
      Height = 15
      Caption = 'Id do Fornecedor'
      FocusControl = DBIdFornecedor
    end
    object Label3: TLabel
      Left = 15
      Top = 102
      Width = 143
      Height = 15
      Caption = 'Id da Forma de Pagamento'
      FocusControl = DBIdFormaPgto
    end
    object Label4: TLabel
      Left = 228
      Top = 11
      Width = 40
      Height = 15
      Caption = 'Usu'#225'rio'
      FocusControl = DBUsuario
    end
    object Label5: TLabel
      Left = 527
      Top = 56
      Width = 47
      Height = 15
      Caption = 'Cadastro'
      FocusControl = DBCadastro
    end
    object Label6: TLabel
      Left = 228
      Top = 56
      Width = 88
      Height = 15
      Caption = 'Valor da Compra'
      FocusControl = DBValorCompra
    end
    object Label7: TLabel
      Left = 826
      Top = 11
      Width = 113
      Height = 15
      Caption = 'Nome do Fornecedor'
    end
    object Label8: TLabel
      Left = 826
      Top = 56
      Width = 51
      Height = 15
      Caption = 'Descri'#231#227'o'
    end
    object DBIdCompra: TDBEdit
      Left = 16
      Top = 27
      Width = 154
      Height = 23
      DataField = 'ID_COMPRA'
      DataSource = DSPadrao
      TabOrder = 0
    end
    object DBIdFornecedor: TDBEdit
      Left = 16
      Top = 69
      Width = 154
      Height = 23
      DataField = 'ID_FORNECEDOR'
      DataSource = DSPadrao
      TabOrder = 1
    end
    object DBIdFormaPgto: TDBEdit
      Left = 16
      Top = 115
      Width = 154
      Height = 23
      DataField = 'ID_FORMA_PGTO'
      DataSource = DSPadrao
      TabOrder = 2
    end
    object DBUsuario: TDBEdit
      Left = 228
      Top = 27
      Width = 549
      Height = 23
      DataField = 'USUARIO'
      DataSource = DSPadrao
      Enabled = False
      TabOrder = 3
    end
    object DBCadastro: TDBEdit
      Left = 527
      Top = 69
      Width = 250
      Height = 23
      DataField = 'CADASTRO'
      DataSource = DSPadrao
      TabOrder = 5
    end
    object DBValorCompra: TDBEdit
      Left = 228
      Top = 69
      Width = 250
      Height = 23
      DataField = 'VALOR'
      DataSource = DSPadrao
      TabOrder = 4
    end
    object DBNome: TDBLookupComboBox
      Left = 826
      Top = 27
      Width = 250
      Height = 23
      DataField = 'NOME'
      DataSource = DSPadrao
      TabOrder = 6
    end
    object DBDescricao: TDBLookupComboBox
      Left = 826
      Top = 69
      Width = 250
      Height = 23
      DataField = 'DESCRICAO'
      DataSource = DSPadrao
      TabOrder = 7
    end
    object DBEdit1: TDBEdit
      Left = 228
      Top = 98
      Width = 250
      Height = 23
      DataField = 'SUBTOTAL'
      DataSource = DSPadraoItem
      TabOrder = 8
    end
  end
  inherited Panel4: TPanel
    Top = 498
    Height = 58
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 498
    ExplicitHeight = 58
    object Label9: TLabel
      Left = 15
      Top = 6
      Width = 73
      Height = 15
      Caption = 'Id do Produto'
      FocusControl = DBIdProduto
    end
    object Label10: TLabel
      Left = 141
      Top = 6
      Width = 62
      Height = 15
      Caption = 'Quantidade'
      FocusControl = DBQuantidade
    end
    object Label11: TLabel
      Left = 267
      Top = 6
      Width = 31
      Height = 15
      Caption = 'Custo'
      FocusControl = DBCusto
    end
    object Label12: TLabel
      Left = 519
      Top = 8
      Width = 70
      Height = 15
      Caption = 'Total do Item'
      FocusControl = DBTotalItem
    end
    object Label13: TLabel
      Left = 393
      Top = 8
      Width = 50
      Height = 15
      Caption = 'Desconto'
      FocusControl = DBDesconto
    end
    object DBIdProduto: TDBEdit
      Left = 15
      Top = 29
      Width = 120
      Height = 23
      DataField = 'ID_PRODUTO'
      DataSource = DSPadraoItem
      TabOrder = 0
      OnExit = DBIdProdutoExit
    end
    object DBQuantidade: TDBEdit
      Left = 141
      Top = 29
      Width = 120
      Height = 23
      DataField = 'QTDE'
      DataSource = DSPadraoItem
      TabOrder = 1
    end
    object DBCusto: TDBEdit
      Left = 267
      Top = 29
      Width = 120
      Height = 23
      DataField = 'VL_CUSTO'
      DataSource = DSPadraoItem
      TabOrder = 2
    end
    object DBTotalItem: TDBEdit
      Left = 519
      Top = 29
      Width = 150
      Height = 23
      DataField = 'TOTAL_ITEM'
      DataSource = DSPadraoItem
      TabOrder = 3
    end
    object DBDesconto: TDBEdit
      Left = 393
      Top = 29
      Width = 120
      Height = 23
      DataField = 'DESCONTO'
      DataSource = DSPadraoItem
      TabOrder = 4
    end
  end
  inherited DBGrid1: TDBGrid
    Top = 225
    Height = 273
    DataSource = DSPadraoItem
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_SEQUENCIA'
        Title.Caption = 'Id da Sequ'#234'ncia'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_COMPRA'
        Title.Caption = 'Id da Compra'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Caption = 'Id do Produto'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 393
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        Title.Caption = 'Qtde'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_CUSTO'
        Title.Caption = 'Custo'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCONTO'
        Title.Caption = 'Desconto'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_ITEM'
        Title.Caption = 'Total do item'
        Width = 107
        Visible = True
      end>
  end
  inherited QueryPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_COMPRA'
    UpdateOptions.AutoIncFields = 'ID_COMPRA'
    SQL.Strings = (
      'SELECT  '
      '  ID_COMPRA,'
      '  ID_FORNECEDOR,'
      '  ID_FORMA_PGTO,'
      '  USUARIO,'
      '  CADASTRO,'
      '  VALOR'
      'FROM COMPRA'
      'ORDER BY ID_COMPRA;')
    Left = 368
    Top = 560
    object QueryPadraoID_COMPRA: TFDAutoIncField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object QueryPadraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object QueryPadraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object QueryPadraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object QueryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object QueryPadraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object QueryPadraoNOME: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME'
      LookupDataSet = QueryFornecedor
      LookupKeyFields = 'ID_FORNECEDOR'
      LookupResultField = 'NOME'
      KeyFields = 'ID_FORNECEDOR'
      Size = 100
      Lookup = True
    end
    object QueryPadraoDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = QueryFormaPgto
      LookupKeyFields = 'ID_FORMA_PGTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_FORMA_PGTO'
      Size = 60
      Lookup = True
    end
  end
  inherited DSPadrao: TDataSource
    Left = 440
    Top = 560
  end
  inherited QueryPadraoItem: TFDQuery
    IndexFieldNames = 'ID_COMPRA'
    AggregatesActive = True
    MasterFields = 'ID_COMPRA'
    DetailFields = 'ID_COMPRA'
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT '
      '  ID_SEQUENCIA,'
      '  ID_COMPRA,'
      '  ID_PRODUTO,'
      '  QTDE,'
      '  VL_CUSTO,'
      '  DESCONTO,'
      '  TOTAL_ITEM'
      'FROM ITEM_COMPRA'
      'WHERE ID_COMPRA=:ID_COMPRA;')
    Left = 528
    Top = 560
    ParamData = <
      item
        Name = 'ID_COMPRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object QueryPadraoItemID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryPadraoItemID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryPadraoItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object QueryPadraoItemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
      Precision = 18
      Size = 2
    end
    object QueryPadraoItemVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object QueryPadraoItemTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object QueryPadraoItemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QueryPadraoItemDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = QueryProduto
      LookupKeyFields = 'ID_PRODUTO'
      LookupResultField = 'PRODUTO_DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 100
      Lookup = True
    end
    object QueryPadraoItemSUBTOTAL: TAggregateField
      FieldName = 'SUBTOTAL'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL_ITEM)'
    end
  end
  inherited DSPadraoItem: TDataSource
    Left = 624
    Top = 560
  end
  object QueryFornecedor: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT '
      '  ID_FORNECEDOR,'
      '  NOME'
      'FROM FORNECEDOR'
      'ORDER BY ID_FORNECEDOR;')
    Left = 720
    Top = 558
    object QueryFornecedorID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryFornecedorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object QueryFormaPgto: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT '
      '  ID_FORMA_PGTO,'
      '  DESCRICAO'
      'FROM FORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO;')
    Left = 912
    Top = 558
    object QueryFormaPgtoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryFormaPgtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object DSFornecedor: TDataSource
    DataSet = QueryFornecedor
    Left = 816
    Top = 558
  end
  object DSFormaPgto: TDataSource
    DataSet = QueryFormaPgto
    Left = 1008
    Top = 558
  end
  object QueryProduto: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT '
      '  ID_PRODUTO,'
      '  PRODUTO_DESCRICAO,'
      '  ESTOQUE,'
      '  ESTOQUE_MIN,'
      '  VL_CUSTO'
      'FROM PRODUTO'
      'ORDER BY ID_PRODUTO;')
    Left = 1008
    Top = 504
  end
end
