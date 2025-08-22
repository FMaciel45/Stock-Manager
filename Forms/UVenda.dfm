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
    inherited btImprimir: TBitBtn
      OnClick = btImprimirClick
    end
  end
  inherited Panel3: TPanel
    Height = 155
    StyleElements = [seFont, seClient, seBorder]
    ExplicitHeight = 155
    object Label1: TLabel
      Left = 152
      Top = 5
      Width = 62
      Height = 15
      Caption = 'ID da Venda'
      FocusControl = DBIdVenda
    end
    object Label2: TLabel
      Left = 152
      Top = 53
      Width = 68
      Height = 15
      Caption = 'ID do Cliente'
      FocusControl = DBIdCliente
    end
    object Label4: TLabel
      Left = 360
      Top = 5
      Width = 40
      Height = 15
      Caption = 'Usu'#225'rio'
      FocusControl = DBUsuario
    end
    object Label5: TLabel
      Left = 709
      Top = 53
      Width = 77
      Height = 15
      Caption = 'Valor da Venda'
      FocusControl = DBValor
    end
    object Label6: TLabel
      Left = 152
      Top = 101
      Width = 47
      Height = 15
      Caption = 'Cadastro'
      FocusControl = DBCadastro
    end
    object Label7: TLabel
      Left = 360
      Top = 53
      Width = 37
      Height = 15
      Caption = 'Cliente'
      FocusControl = DBCliente
    end
    object DBIdVenda: TDBEdit
      Left = 152
      Top = 21
      Width = 154
      Height = 23
      DataField = 'ID_VENDA'
      DataSource = DSPadrao
      TabOrder = 0
    end
    object DBIdCliente: TDBEdit
      Left = 152
      Top = 69
      Width = 154
      Height = 23
      DataField = 'ID_CLIENTE'
      DataSource = DSPadrao
      TabOrder = 1
      OnExit = DBIdClienteExit
    end
    object DBUsuario: TDBEdit
      Left = 360
      Top = 21
      Width = 570
      Height = 23
      DataField = 'USUARIO'
      DataSource = DSPadrao
      Enabled = False
      TabOrder = 2
    end
    object DBValor: TDBEdit
      Left = 709
      Top = 69
      Width = 116
      Height = 23
      DataField = 'VALOR'
      DataSource = DSPadrao
      TabOrder = 4
    end
    object DBCadastro: TDBEdit
      Left = 152
      Top = 117
      Width = 154
      Height = 23
      DataField = 'CADASTRO'
      DataSource = DSPadrao
      Enabled = False
      TabOrder = 5
    end
    object DBCliente: TDBEdit
      Left = 360
      Top = 69
      Width = 319
      Height = 23
      DataField = 'CLIENTE'
      DataSource = DSPadrao
      TabOrder = 3
    end
    object btBuscaCliente: TBitBtn
      Left = 855
      Top = 69
      Width = 75
      Height = 23
      Caption = '&Buscar'
      TabOrder = 6
      OnClick = btBuscaClienteClick
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
    ActivePage = ItemCompra
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
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object QueryPadraoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
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
    object QueryPadraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
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
  object QueryEmpresa: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT '
      '  ID_EMPRESA,'
      '  RAZAO_SOCIAL,'
      '  N_FANTASIA,'
      '  ENDERECO,'
      '  NUMERO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  TELEFONE,'
      '  CNPJ,'
      '  EMAIL,'
      '  LOGO,'
      '  CADASTRO'
      'FROM EMPRESA;')
    Left = 364
    Top = 171
    object QueryEmpresaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryEmpresaRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 100
    end
    object QueryEmpresaN_FANTASIA: TStringField
      FieldName = 'N_FANTASIA'
      Origin = 'N_FANTASIA'
      Required = True
      Size = 100
    end
    object QueryEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object QueryEmpresaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object QueryEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object QueryEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object QueryEmpresaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QueryEmpresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 14
    end
    object QueryEmpresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 15
    end
    object QueryEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object QueryEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object QueryEmpresaLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object QueryEmpresaCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  object DSEmpresa: TDataSource
    DataSet = QueryEmpresa
    Left = 444
    Top = 171
  end
  object RelReciboVenda: TfrxReport
    Version = '2025.2.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection, pbWatermarks]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45884.407288275500000000
    ReportOptions.LastChange = 45890.666184016200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 952
    Top = 74
    Datasets = <
      item
        DataSet = frxPadrao
        DataSetName = 'frxPadrao'
      end
      item
        DataSet = frxPadraoItem
        DataSetName = 'frxPadraoItem'
      end
      item
        DataSet = frxEmpresa
        DataSetName = 'frxEmpresa'
      end>
    Variables = <>
    Style = <>
    Watermarks = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 166.299329300000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object MemofrxDBEmpresaN_FANTASIA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 7.559064410000000000
          Width = 377.952755910000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'N_FANTASIA'
          DataSet = frxEmpresa
          DataSetName = 'frxEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEmpresa."N_FANTASIA"]')
          ParentFont = False
        end
        object MemofrxDBEmpresaENDERECO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 34.015774410000000000
          Width = 377.952755910000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ENDERECO'
          DataSet = frxEmpresa
          DataSetName = 'frxEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEmpresa."ENDERECO"]')
          ParentFont = False
        end
        object MemofrxDBEmpresaNUMERO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 86.929194410000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NUMERO'
          DataSet = frxEmpresa
          DataSetName = 'frxEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEmpresa."NUMERO"]')
          ParentFont = False
        end
        object MemofrxDBEmpresaBAIRRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 86.929194410000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'BAIRRO'
          DataSet = frxEmpresa
          DataSetName = 'frxEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEmpresa."BAIRRO"]')
          ParentFont = False
        end
        object MemofrxDBEmpresaCIDADE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 60.472484410000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'CIDADE'
          DataSet = frxEmpresa
          DataSetName = 'frxEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEmpresa."CIDADE"]')
          ParentFont = False
        end
        object MemofrxDBEmpresaUF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 60.472484410000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'UF'
          DataSet = frxEmpresa
          DataSetName = 'frxEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEmpresa."UF"]')
          ParentFont = False
        end
        object MemofrxDBEmpresaCEP: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 113.385904410000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'CEP'
          DataSet = frxEmpresa
          DataSetName = 'frxEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEmpresa."CEP"]')
          ParentFont = False
        end
        object MemofrxDBEmpresaTELEFONE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 139.842614410000000000
          Width = 179.527559060000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'TELEFONE'
          DataSet = frxEmpresa
          DataSetName = 'frxEmpresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEmpresa."TELEFONE"]')
        end
        object MemofrxDBEmpresaEMAIL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 139.842614410000000000
          Width = 175.748029060000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'EMAIL'
          DataSet = frxEmpresa
          DataSetName = 'frxEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxEmpresa."EMAIL"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842611550000000000
          Top = 7.559064180000000000
          Width = 83.149660730000000000
          Height = 18.897649770000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'N. Fantasia: ')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 34.015774410000000000
          Width = 83.149660730000000000
          Height = 18.897649770000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 60.472484410000000000
          Width = 34.015770730000000000
          Height = 18.897649770000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 86.929194410000000000
          Width = 34.015770730000000000
          Height = 18.897649770000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N.'#186':')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 60.472484410000000000
          Width = 83.149660730000000000
          Height = 18.897649770000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 86.929194410000000000
          Width = 83.149660730000000000
          Height = 18.897649770000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 113.385904410000000000
          Width = 83.149660730000000000
          Height = 18.897649770000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 139.842614410000000000
          Width = 83.149660730000000000
          Height = 18.897649770000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Contato:')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 18.897671370000000000
          Width = 680.315370210000000000
          Height = 166.299329300000000000
          DataField = 'LOGO'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object Mestre: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 128.504020000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        DataSet = frxPadrao
        DataSetName = 'frxPadrao'
        RowCount = 0
        object MemofrxDBQueryPadraoID_COMPRA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 109.606370000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ID_VENDA'
          DataSet = frxPadrao
          DataSetName = 'frxPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxPadrao."ID_VENDA"]')
          ParentFont = False
        end
        object MemofrxDBQueryPadraoNOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 109.606370000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'USUARIO'
          DataSet = frxPadrao
          DataSetName = 'frxPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxPadrao."USUARIO"]')
          ParentFont = False
        end
        object MemofrxDBQueryPadraoVALOR: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 109.606370000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'VALOR'
          DataSet = frxPadrao
          DataSetName = 'frxPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxPadrao."VALOR"]')
          ParentFont = False
        end
        object MemofrxDBQueryPadraoCADASTRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 109.606370000000000000
          Width = 113.385917770000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'CADASTRO'
          DataSet = frxPadrao
          DataSetName = 'frxPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxPadrao."CADASTRO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Top = 86.929196520000000000
          Width = 151.181200730000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            'ID Venda')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 151.181200730000000000
          Top = 86.929190000000000000
          Width = 340.157700000000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Nome do Cliente')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900730000000000
          Top = 86.929190000000000000
          Width = 113.385899270000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 86.929190000000000000
          Width = 113.385900730000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            'Cadastro')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 718.110717773437500000
          Height = 22.677174040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Compra')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 495.118430000000000000
        Width = 718.110700000000000000
        DataSet = frxPadraoItem
        DataSetName = 'frxPadraoItem'
        RowCount = 0
        object MemofrxDBPadraoItemQTDE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'QTDE'
          DataSet = frxPadraoItem
          DataSetName = 'frxPadraoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxPadraoItem."QTDE"]')
          ParentFont = False
        end
        object MemofrxDBPadraoItemDESCRICAO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ID_VENDA'
          DataSet = frxPadraoItem
          DataSetName = 'frxPadraoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxPadraoItem."ID_VENDA"]')
          ParentFont = False
        end
        object MemofrxDBPadraoItemVL_CUSTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 491.338900000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'VL_VENDA'
          DataSet = frxPadraoItem
          DataSetName = 'frxPadraoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxPadraoItem."VL_VENDA"]')
          ParentFont = False
        end
        object MemofrxDBPadraoItemTOTAL_ITEM: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'TOTAL_ITEM'
          DataSet = frxPadraoItem
          DataSetName = 'frxPadraoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxPadraoItem."TOTAL_ITEM"]')
          ParentFont = False
        end
        object MemofrxDBPadraoItemID_SEQUENCIA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 151.181200000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ID_SEQUENCIA'
          DataSet = frxPadraoItem
          DataSetName = 'frxPadraoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxPadraoItem."ID_SEQUENCIA"]')
          ParentFont = False
        end
        object MemofrxDBPadraoItemID_PRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 226.771800000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ID_PRODUTO'
          DataSet = frxPadraoItem
          DataSetName = 'frxPadraoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxPadraoItem."ID_PRODUTO"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 75.590600400000000000
        Top = 396.850650000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200050000000000
          Top = 56.692956360000000000
          Width = 75.590596440000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            'ID Seq.')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771796490000000000
          Top = 56.692950000000000000
          Width = 94.488249950000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            'ID Prod.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = -0.000003560000000000
          Top = 56.692950000000000000
          Width = 151.181203560000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            'ID Vend.')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 56.692950000000000000
          Width = 170.078846440000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338896440000000000
          Top = 56.692950000000000000
          Width = 113.385903560000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            'Valor Venda')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 56.692950000000000000
          Width = 113.385917770000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 718.110717770000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Produtos')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 162.519787540000000000
        Top = 578.268090000000000000
        Width = 718.110700000000000000
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 0.000000050000000000
          Top = 120.944958440000000000
          Width = 117.165426440000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total em Vendas:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165431550000000000
          Top = 120.944958440000000000
          Width = 336.378170730000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxPadraoItem."SUBTOTAL">,DetailData1)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Top = 139.842610000000000000
          Width = 154.960726440000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade de Vendas:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 154.960728160000000000
          Top = 139.842613500000000000
          Width = 147.401678360000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(Mestre)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 26.456710000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'VALOR'
          DataSet = frxPadrao
          DataSetName = 'frxPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxPadrao."VALOR"]')
          ParentFont = False
        end
        object MemofrxPadraoDINHEIRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 52.913420000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'DINHEIRO'
          DataSet = frxPadrao
          DataSetName = 'frxPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxPadrao."DINHEIRO"]')
          ParentFont = False
        end
        object MemofrxPadraoTROCO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 75.590600000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'TROCO'
          DataSet = frxPadrao
          DataSetName = 'frxPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxPadrao."TROCO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Top = 26.456710000000000000
          Width = 98.267776440000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Compra: ')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Top = 52.913420000000000000
          Width = 83.149656440000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Pago:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Top = 75.590600000000000000
          Width = 49.133886440000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Troco:')
          ParentFont = False
        end
      end
    end
  end
  object frxPadrao: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frxPadrao'
    CloseDataSource = False
    DataSet = QueryPadrao
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1036
    Top = 74
  end
  object frxPadraoItem: TfrxDBDataset
    UserName = 'frxPadraoItem'
    CloseDataSource = False
    DataSet = QueryPadraoItem
    BCDToCurrency = False
    DataSetOptions = []
    Left = 956
    Top = 131
  end
  object frxEmpresa: TfrxDBDataset
    UserName = 'frxEmpresa'
    CloseDataSource = False
    DataSet = QueryEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1036
    Top = 131
  end
end
