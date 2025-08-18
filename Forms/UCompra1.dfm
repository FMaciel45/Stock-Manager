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
    inherited btImprimir: TBitBtn
      OnClick = btImprimirClick
    end
  end
  inherited Panel3: TPanel
    Height = 155
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 76
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
      Top = 54
      Width = 90
      Height = 15
      Caption = 'Id do Fornecedor'
      FocusControl = DBIdFornecedor
    end
    object Label3: TLabel
      Left = 15
      Top = 100
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
      Left = 826
      Top = 11
      Width = 47
      Height = 15
      Caption = 'Cadastro'
      FocusControl = DBCadastro
    end
    object Label6: TLabel
      Left = 560
      Top = 54
      Width = 88
      Height = 15
      Caption = 'Valor da Compra'
      FocusControl = DBValorCompra
    end
    object Label7: TLabel
      Left = 228
      Top = 54
      Width = 113
      Height = 15
      Caption = 'Nome do Fornecedor'
    end
    object Label8: TLabel
      Left = 228
      Top = 98
      Width = 151
      Height = 15
      Caption = 'Descri'#231#227'o da Forma de Pgto.'
    end
    object Label14: TLabel
      Left = 560
      Top = 98
      Width = 131
      Height = 15
      Caption = 'Condi'#231#227'o de Pagamento'
      FocusControl = DBCondPgto
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
      OnExit = DBIdFormaPgtoExit
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
      Left = 826
      Top = 27
      Width = 250
      Height = 23
      DataField = 'CADASTRO'
      DataSource = DSPadrao
      TabOrder = 5
    end
    object DBValorCompra: TDBEdit
      Left = 560
      Top = 69
      Width = 217
      Height = 23
      DataField = 'VALOR'
      DataSource = DSPadrao
      TabOrder = 4
    end
    object DBNome: TDBLookupComboBox
      Left = 228
      Top = 69
      Width = 300
      Height = 23
      DataField = 'NOME'
      DataSource = DSPadrao
      TabOrder = 6
    end
    object DBDescricao: TDBLookupComboBox
      Left = 228
      Top = 115
      Width = 300
      Height = 23
      DataField = 'DESCRICAO'
      DataSource = DSPadrao
      TabOrder = 7
    end
    object DBCondPgto: TDBEdit
      Left = 560
      Top = 115
      Width = 217
      Height = 23
      DataField = 'COND_PGTO'
      DataSource = DSPadrao
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
  inherited PageControl1: TPageControl
    Top = 225
    Height = 273
    ExplicitTop = 225
    ExplicitHeight = 273
    inherited ItemCompra: TTabSheet
      ExplicitHeight = 243
      inherited DBGrid1: TDBGrid
        Height = 243
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_SEQUENCIA'
            Title.Caption = 'ID Sequ'#234'ncia'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_COMPRA'
            Title.Caption = 'ID Compra'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Title.Caption = 'ID Produto'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE'
            Title.Caption = 'Quantidade'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_CUSTO'
            Title.Caption = 'Custo'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            Title.Caption = 'Desconto'
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_ITEM'
            Title.Caption = 'Total Item'
            Width = 130
            Visible = True
          end>
      end
    end
    inherited ContasPagar: TTabSheet
      ExplicitHeight = 243
      inherited DBGrid2: TDBGrid
        Height = 243
        DataSource = DSContaPagar
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_SEQUENCIA'
            Title.Caption = 'ID Sequ'#234'ncia'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_COMPRA'
            Title.Caption = 'ID Compra'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_PARCELA'
            Title.Caption = 'Valor Parcela'
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_VENCIMENTO'
            Title.Caption = 'Data Vencimento'
            Width = 118
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_PAGAMENTO'
            Title.Caption = 'Data Pagamento'
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ATRASO'
            Title.Caption = 'Atraso'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JUROS'
            Title.Caption = 'Juros'
            Width = 73
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
            Title.Caption = 'Total a Pagar'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Title.Caption = 'Status'
            Width = 148
            Visible = True
          end>
      end
    end
  end
  inherited QueryPadrao: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_COMPRA'
    UpdateOptions.AutoIncFields = 'ID_COMPRA'
    SQL.Strings = (
      'SELECT A.ID_COMPRA,'
      '  A.ID_FORNECEDOR,'
      '  B.NOME,'
      '  A.ID_FORMA_PGTO,'
      '  A.COND_PGTO,'
      '  C.DESCRICAO,'
      '  A.USUARIO,'
      '  A.VALOR,'
      '  A.CADASTRO'
      'FROM COMPRA A, FORNECEDOR B, FORMA_PGTO C'
      'WHERE A.ID_FORNECEDOR=B.ID_FORNECEDOR'
      'AND C.ID_FORMA_PGTO=A.ID_FORMA_PGTO'
      'ORDER BY A.ID_COMPRA;'
      '')
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
    object QueryPadraoCOND_PGTO: TIntegerField
      FieldName = 'COND_PGTO'
      Origin = 'COND_PGTO'
    end
  end
  inherited DSPadrao: TDataSource
    Left = 440
    Top = 560
  end
  inherited QueryPadraoItem: TFDQuery
    Active = True
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
        DataType = ftAutoInc
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
  object RelReciboCompra: TfrxReport
    Version = '2025.2.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection, pbWatermarks]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45884.407288275500000000
    ReportOptions.LastChange = 45884.661352083300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 816
    Top = 179
    Datasets = <
      item
        DataSet = frxDBQueryPadrao
        DataSetName = 'frxDBQueryPadrao'
      end
      item
        DataSet = frxDBEmpresa
        DataSetName = 'frxDBEmpresa'
      end
      item
        DataSet = frxDBPadraoItem
        DataSetName = 'frxDBPadraoItem'
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
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."N_FANTASIA"]')
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
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."ENDERECO"]')
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
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NUMERO"]')
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
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."BAIRRO"]')
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
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."CIDADE"]')
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
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."UF"]')
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
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."CEP"]')
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
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."TELEFONE"]')
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
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEmpresa."EMAIL"]')
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
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
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
        Height = 102.047310000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        DataSet = frxDBQueryPadrao
        DataSetName = 'frxDBQueryPadrao'
        RowCount = 0
        object MemofrxDBQueryPadraoID_COMPRA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 83.149660000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ID_COMPRA'
          DataSet = frxDBQueryPadrao
          DataSetName = 'frxDBQueryPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBQueryPadrao."ID_COMPRA"]')
          ParentFont = False
        end
        object MemofrxDBQueryPadraoNOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 83.149660000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOME'
          DataSet = frxDBQueryPadrao
          DataSetName = 'frxDBQueryPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBQueryPadrao."NOME"]')
          ParentFont = False
        end
        object MemofrxDBQueryPadraoVALOR: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 83.149660000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'VALOR'
          DataSet = frxDBQueryPadrao
          DataSetName = 'frxDBQueryPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBQueryPadrao."VALOR"]')
          ParentFont = False
        end
        object MemofrxDBQueryPadraoCADASTRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 83.149660000000000000
          Width = 113.385917770000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'CADASTRO'
          DataSet = frxDBQueryPadrao
          DataSetName = 'frxDBQueryPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBQueryPadrao."CADASTRO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Top = 60.472486520000000000
          Width = 151.181200730000000000
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
            'ID Venda')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 151.181200730000000000
          Top = 60.472480000000000000
          Width = 340.157700000000000000
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
            'Nome do Fornecedor')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900730000000000
          Top = 60.472480000000000000
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
          Top = 60.472480000000000000
          Width = 113.385900730000000000
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
            'Cadastro')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Top = 41.574830000000000000
          Width = 718.110717770000000000
          Height = 22.677174040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
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
        Top = 449.764070000000000000
        Width = 718.110700000000000000
        DataSet = frxDBPadraoItem
        DataSetName = 'frxDBPadraoItem'
        RowCount = 0
        object MemofrxDBPadraoItemID_SEQUENCIA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ID_SEQUENCIA'
          DataSet = frxDBPadraoItem
          DataSetName = 'frxDBPadraoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBPadraoItem."ID_SEQUENCIA"]')
          ParentFont = False
        end
        object MemofrxDBPadraoItemID_PRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ID_PRODUTO'
          DataSet = frxDBPadraoItem
          DataSetName = 'frxDBPadraoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBPadraoItem."ID_PRODUTO"]')
          ParentFont = False
        end
        object MemofrxDBPadraoItemQTDE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'QTDE'
          DataSet = frxDBPadraoItem
          DataSetName = 'frxDBPadraoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBPadraoItem."QTDE"]')
          ParentFont = False
        end
        object MemofrxDBPadraoItemDESCRICAO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 151.181200000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'DESCRICAO'
          DataSet = frxDBPadraoItem
          DataSetName = 'frxDBPadraoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBPadraoItem."DESCRICAO"]')
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
          DataField = 'VL_CUSTO'
          DataSet = frxDBPadraoItem
          DataSetName = 'frxDBPadraoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBPadraoItem."VL_CUSTO"]')
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
          DataSet = frxDBPadraoItem
          DataSetName = 'frxDBPadraoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBPadraoItem."TOTAL_ITEM"]')
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
        Height = 56.692950400000000000
        Top = 370.393940000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 0.000000050000000000
          Top = 37.795306360000000000
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
          Left = 75.590596490000000000
          Top = 37.795300000000000000
          Width = 75.590599950000000000
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
          Left = 151.181196440000000000
          Top = 37.795300000000000000
          Width = 226.771803560000000000
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
            'Descri'#231#227'o do produto')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 37.795300000000000000
          Width = 113.385896440000000000
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
          Top = 37.795300000000000000
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
            'Custo')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 37.795300000000000000
          Width = 113.385917770000000000
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
            'Total')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Top = 11.338590000000000000
          Width = 718.110717770000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'Produtos')
          ParentFont = False
        end
      end
    end
  end
  object frxDBQueryPadrao: TfrxDBDataset
    UserName = 'frxDBQueryPadrao'
    CloseDataSource = False
    DataSet = QueryPadrao
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1011
    Top = 126
  end
  object QueryFdEmpresa: TFDQuery
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
    Left = 912
    Top = 504
    object QueryFdEmpresaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryFdEmpresaRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 100
    end
    object QueryFdEmpresaN_FANTASIA: TStringField
      FieldName = 'N_FANTASIA'
      Origin = 'N_FANTASIA'
      Required = True
      Size = 100
    end
    object QueryFdEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object QueryFdEmpresaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object QueryFdEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object QueryFdEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object QueryFdEmpresaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QueryFdEmpresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 14
    end
    object QueryFdEmpresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 15
    end
    object QueryFdEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object QueryFdEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object QueryFdEmpresaLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object QueryFdEmpresaCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  object DSEmpresa: TDataSource
    DataSet = QueryFdEmpresa
    Left = 816
    Top = 504
  end
  object frxDBEmpresa: TfrxDBDataset
    UserName = 'frxDBEmpresa'
    CloseDataSource = False
    DataSet = QueryFdEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 912
    Top = 126
  end
  object frxDBPadraoItem: TfrxDBDataset
    UserName = 'frxDBPadraoItem'
    CloseDataSource = False
    DataSet = QueryPadraoItem
    BCDToCurrency = False
    DataSetOptions = []
    Left = 816
    Top = 126
  end
  object QueryContaPagar: TFDQuery
    Active = True
    IndexFieldNames = 'ID_COMPRA'
    MasterSource = DSPadrao
    MasterFields = 'ID_COMPRA'
    DetailFields = 'ID_COMPRA'
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT  '
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
      'WHERE ID_COMPRA=:ID_COMPRA;')
    Left = 728
    Top = 506
    ParamData = <
      item
        Name = 'ID_COMPRA'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 1
      end>
    object QueryContaPagarID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryContaPagarID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryContaPagarVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object QueryContaPagarDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      Required = True
    end
    object QueryContaPagarDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
    end
    object QueryContaPagarATRASO: TIntegerField
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
    end
    object QueryContaPagarJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 18
      Size = 2
    end
    object QueryContaPagarVL_JUROS: TFMTBCDField
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      Precision = 18
      Size = 2
    end
    object QueryContaPagarTOTAL_PAGAR: TFMTBCDField
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      Precision = 18
      Size = 2
    end
    object QueryContaPagarSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 30
    end
  end
  object DSContaPagar: TDataSource
    DataSet = QueryContaPagar
    Left = 668
    Top = 475
  end
end
