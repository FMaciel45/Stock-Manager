inherited FrmVenda: TFrmVenda
  Caption = 'Cadastro de Vendas'
  ClientHeight = 622
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 661
  TextHeight = 15
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel2: TPanel
    Top = 559
    Height = 63
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 559
    ExplicitHeight = 63
    inherited btItem: TBitBtn
      OnClick = btItemClick
    end
    inherited btOk: TBitBtn
      OnClick = btOkClick
    end
    inherited btExcluir: TBitBtn
      OnClick = btExcluirClick
    end
  end
  inherited Panel3: TPanel
    Height = 155
    StyleElements = [seFont, seClient, seBorder]
    ExplicitHeight = 155
    object Label1: TLabel
      Left = 16
      Top = 7
      Width = 62
      Height = 15
      Caption = 'ID da Venda'
      FocusControl = DBIdVenda
    end
    object Label2: TLabel
      Left = 16
      Top = 55
      Width = 68
      Height = 15
      Caption = 'ID do Cliente'
      FocusControl = DBIdCliente
    end
    object Label3: TLabel
      Left = 16
      Top = 103
      Width = 111
      Height = 15
      Caption = 'ID da Forma de Pgto.'
      FocusControl = DBIdFormaPgto
    end
    object Label4: TLabel
      Left = 243
      Top = 7
      Width = 40
      Height = 15
      Caption = 'Usu'#225'rio'
      FocusControl = DBUsuario
    end
    object Label5: TLabel
      Left = 573
      Top = 55
      Width = 77
      Height = 15
      Caption = 'Valor da Venda'
      FocusControl = DBValor
    end
    object Label6: TLabel
      Left = 872
      Top = 7
      Width = 47
      Height = 15
      Caption = 'Cadastro'
      FocusControl = DBCadastro
    end
    object Label7: TLabel
      Left = 243
      Top = 55
      Width = 37
      Height = 15
      Caption = 'Cliente'
      FocusControl = DBCliente
    end
    object Label8: TLabel
      Left = 243
      Top = 103
      Width = 151
      Height = 15
      Caption = 'Descri'#231#227'o da Forma de Pgto.'
      FocusControl = DBDescricaoPgto
    end
    object Label9: TLabel
      Left = 573
      Top = 103
      Width = 38
      Height = 15
      Caption = 'Parcela'
      FocusControl = DBParcela
    end
    object DBIdVenda: TDBEdit
      Left = 16
      Top = 23
      Width = 154
      Height = 23
      DataField = 'ID_VENDA'
      DataSource = DSPadrao
      TabOrder = 0
    end
    object DBIdCliente: TDBEdit
      Left = 16
      Top = 71
      Width = 154
      Height = 23
      DataField = 'ID_CLIENTE'
      DataSource = DSPadrao
      TabOrder = 1
      OnExit = DBIdClienteExit
    end
    object DBIdFormaPgto: TDBEdit
      Left = 16
      Top = 119
      Width = 154
      Height = 23
      DataField = 'ID_FORMA_PGTO'
      DataSource = DSPadrao
      TabOrder = 2
      OnExit = DBIdFormaPgtoExit
    end
    object DBUsuario: TDBEdit
      Left = 243
      Top = 26
      Width = 550
      Height = 23
      DataField = 'USUARIO'
      DataSource = DSPadrao
      Enabled = False
      TabOrder = 3
    end
    object DBValor: TDBEdit
      Left = 573
      Top = 71
      Width = 220
      Height = 23
      DataField = 'VALOR'
      DataSource = DSPadrao
      TabOrder = 5
    end
    object DBCadastro: TDBEdit
      Left = 872
      Top = 23
      Width = 204
      Height = 23
      DataField = 'CADASTRO'
      DataSource = DSPadrao
      Enabled = False
      TabOrder = 6
    end
    object DBCliente: TDBEdit
      Left = 243
      Top = 71
      Width = 300
      Height = 23
      DataField = 'CLIENTE'
      DataSource = DSPadrao
      TabOrder = 4
    end
    object DBDescricaoPgto: TDBEdit
      Left = 243
      Top = 119
      Width = 300
      Height = 23
      DataField = 'DESCRICAO'
      DataSource = DSPadrao
      TabOrder = 7
    end
    object DBParcela: TDBEdit
      Left = 573
      Top = 119
      Width = 220
      Height = 23
      DataField = 'PARCELA'
      DataSource = DSPadrao
      TabOrder = 8
      OnExit = DBParcelaExit
    end
    object DBEdit3: TDBEdit
      Left = 821
      Top = 71
      Width = 220
      Height = 23
      DataField = 'SUBTOTAL'
      DataSource = DSPadraoItem
      TabOrder = 9
    end
  end
  inherited Panel4: TPanel
    Top = 503
    Height = 56
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 503
    ExplicitHeight = 56
    object Label10: TLabel
      Left = 15
      Top = 7
      Width = 73
      Height = 15
      Caption = 'Id do Produto'
      FocusControl = DBIdProduto
    end
    object Label11: TLabel
      Left = 141
      Top = 7
      Width = 62
      Height = 15
      Caption = 'Quantidade'
      FocusControl = DBQuantidade
    end
    object Label12: TLabel
      Left = 267
      Top = 7
      Width = 77
      Height = 15
      Caption = 'Valor de Venda'
      FocusControl = DBCusto
    end
    object Label13: TLabel
      Left = 393
      Top = 7
      Width = 50
      Height = 15
      Caption = 'Desconto'
      FocusControl = DBDesconto
    end
    object Label14: TLabel
      Left = 519
      Top = 7
      Width = 70
      Height = 15
      Caption = 'Total do Item'
      FocusControl = DBTotalItem
    end
    object DBIdProduto: TDBEdit
      Left = 15
      Top = 24
      Width = 120
      Height = 23
      DataField = 'ID_PRODUTO'
      DataSource = DSPadraoItem
      TabOrder = 0
      OnExit = DBIdProdutoExit
    end
    object DBQuantidade: TDBEdit
      Left = 141
      Top = 24
      Width = 120
      Height = 23
      DataField = 'QTDE'
      DataSource = DSPadraoItem
      TabOrder = 1
      OnClick = DBQuantidadeClick
      OnExit = DBQuantidadeExit
    end
    object DBCusto: TDBEdit
      Left = 267
      Top = 24
      Width = 120
      Height = 23
      DataField = 'VL_VENDA'
      DataSource = DSPadraoItem
      TabOrder = 2
    end
    object DBDesconto: TDBEdit
      Left = 393
      Top = 24
      Width = 120
      Height = 23
      DataField = 'DESCONTO'
      DataSource = DSPadraoItem
      TabOrder = 3
      OnClick = DBDescontoClick
      OnExit = DBDescontoExit
    end
    object DBTotalItem: TDBEdit
      Left = 519
      Top = 24
      Width = 150
      Height = 23
      DataField = 'TOTAL_ITEM'
      DataSource = DSPadraoItem
      TabOrder = 4
    end
  end
  inherited PageControl1: TPageControl
    Top = 225
    Height = 278
    ExplicitTop = 225
    ExplicitHeight = 278
    inherited ItemCompra: TTabSheet
      Caption = 'Item Venda'
      ExplicitHeight = 248
      inherited DBGrid1: TDBGrid
        Height = 248
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_SEQUENCIA'
            Title.Caption = 'ID Sequ'#234'ncia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_VENDA'
            Title.Caption = 'ID Venda'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Title.Caption = 'ID Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE'
            Title.Caption = 'Quantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_VENDA'
            Title.Caption = 'Valor Venda'
            Width = 148
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            Title.Caption = 'Desconto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_ITEM'
            Title.Caption = 'Total Item'
            Width = 143
            Visible = True
          end>
      end
    end
    inherited ContasPagar: TTabSheet
      Caption = 'Contas Receber'
      ExplicitHeight = 248
      inherited DBGrid2: TDBGrid
        Height = 248
        DataSource = DSContaReceber
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_SEQUENCIA'
            Title.Caption = 'ID Sequ'#234'ncia'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_VENDA'
            Title.Caption = 'ID Venda'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_PARCELA'
            Title.Caption = 'Valor Parcela'
            Width = 128
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_VENCIMENTO'
            Title.Caption = 'Data Vencimento'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_PAGAMENTO'
            Title.Caption = 'Data Pagamento'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ATRASO'
            Title.Caption = 'Atraso'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JUROS'
            Title.Caption = 'Juros'
            Width = 77
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Title.Caption = 'Status'
            Width = 102
            Visible = True
          end>
      end
    end
  end
  inherited QueryPadrao: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_VENDA'
    UpdateOptions.AutoIncFields = 'ID_VENDA'
    SQL.Strings = (
      'SELECT '
      '  ID_VENDA,'
      '  ID_CLIENTE,'
      '  ID_FORMA_PGTO,'
      '  USUARIO,'
      '  VALOR,'
      '  CADASTRO,'
      '  PARCELA,'
      '  DINHEIRO,'
      '  TROCO'
      'FROM VENDA'
      'ORDER BY ID_VENDA;')
    Left = 368
    Top = 568
    object QueryPadraoID_VENDA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QueryPadraoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
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
    object QueryPadraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object QueryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object QueryPadraoCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = QueryCliente
      LookupKeyFields = 'ID_CLIENTE'
      LookupResultField = 'NOME'
      KeyFields = 'ID_CLIENTE'
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
      Size = 100
      Lookup = True
    end
    object QueryPadraoPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
    end
    object QueryPadraoDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QueryPadraoTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  inherited DSPadrao: TDataSource
    Left = 440
    Top = 568
  end
  inherited QueryPadraoItem: TFDQuery
    Active = True
    IndexFieldNames = 'ID_VENDA'
    AggregatesActive = True
    MasterFields = 'ID_VENDA'
    DetailFields = 'ID_VENDA'
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  ID_SEQUENCIA,'
      '  ID_VENDA,'
      '  ID_PRODUTO,'
      '  QTDE,'
      '  VL_VENDA,'
      '  DESCONTO,'
      '  TOTAL_ITEM'
      'FROM ITEM_VENDA'
      'WHERE ID_VENDA=:ID_VENDA'
      'ORDER BY ID_SEQUENCIA;')
    Left = 544
    Top = 568
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 3
      end>
    object QueryPadraoItemID_SEQUENCIA: TIntegerField
      DisplayWidth = 17
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryPadraoItemID_VENDA: TIntegerField
      DisplayWidth = 15
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryPadraoItemID_PRODUTO: TIntegerField
      DisplayWidth = 16
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object QueryPadraoItemQTDE: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
      OnValidate = QueryPadraoItemQTDEValidate
      Precision = 18
      Size = 2
    end
    object QueryPadraoItemVL_VENDA: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object QueryPadraoItemDESCONTO: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QueryPadraoItemTOTAL_ITEM: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      Required = True
      currency = True
      Precision = 18
      Size = 2
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
    Left = 640
    Top = 568
  end
  object QueryCliente: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT '
      '  ID_CLIENTE,'
      '  NOME'
      'FROM CLIENTES'
      'ORDER BY ID_CLIENTE;')
    Left = 744
    Top = 567
    object QueryClienteID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryClienteNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object DSCliente: TDataSource
    DataSet = QueryCliente
    Left = 816
    Top = 567
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
    Left = 934
    Top = 567
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
  object DSFormaPgto: TDataSource
    DataSet = QueryFormaPgto
    Left = 1028
    Top = 567
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
      '  VL_VENDA'
      'FROM PRODUTO'
      'ORDER BY ID_PRODUTO;')
    Left = 942
    Top = 507
    object QueryProdutoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryProdutoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object QueryProdutoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object QueryProdutoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object QueryProdutoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DSProduto: TDataSource
    DataSet = QueryProduto
    Left = 1020
    Top = 507
  end
  object QueryContaReceber: TFDQuery
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
      '  STATUS  '
      'FROM CONTAS_RECEBER'
      'WHERE ID_VENDA =:ID_VENDA'
      'ORDER BY ID_SEQUENCIA;')
    Left = 716
    Top = 507
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QueryContaReceberID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryContaReceberID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryContaReceberVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object QueryContaReceberDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      Required = True
    end
    object QueryContaReceberDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
    end
    object QueryContaReceberJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      currency = True
      Precision = 18
      Size = 2
    end
    object QueryContaReceberVL_JUROS: TFMTBCDField
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      Precision = 18
      Size = 2
    end
    object QueryContaReceberTOTAL_PAGAR: TFMTBCDField
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      currency = True
      Precision = 18
      Size = 2
    end
    object QueryContaReceberSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 30
    end
    object QueryContaReceberATRASO: TIntegerField
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
    end
  end
  object DSContaReceber: TDataSource
    DataSet = QueryContaReceber
    Left = 825
    Top = 507
  end
end
