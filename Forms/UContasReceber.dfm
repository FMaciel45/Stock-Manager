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
      Left = 792
      Width = 284
      Hints.Strings = ()
      ExplicitLeft = 792
      ExplicitWidth = 284
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
    OnExit = DBDtPagamentoExit
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
    OnExit = DBJurosExit
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
  object btImprimir: TBitBtn [28]
    Left = 704
    Top = 16
    Width = 75
    Height = 40
    Caption = '&Imprimir'
    TabOrder = 15
  end
  inherited QueryPadrao: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT'
      '  A.ID_VENDA,'
      '  A.ID_CLIENTE,'
      '  B.NOME,'
      '  B.CPF'
      'FROM VENDA A'
      'INNER JOIN CLIENTES B ON B.ID_CLIENTE=A.ID_CLIENTE'
      'ORDER BY A.ID_VENDA;')
    Left = 800
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
    Left = 872
    Top = 16
  end
  object QueryReceber: TFDQuery
    Active = True
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
    Left = 955
    Top = 16
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 91
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
      currency = True
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
      currency = True
      Precision = 18
      Size = 2
    end
    object QueryReceberTOTAL_PAGAR: TFMTBCDField
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      currency = True
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
    Left = 1032
    Top = 16
  end
  object Recibo: TfrxReport
    Version = '2025.2.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection, pbWatermarks]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45897.438047129600000000
    ReportOptions.LastChange = 45897.480211875000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 392
    Top = 80
    Datasets = <
      item
        DataSet = frxPadrao
        DataSetName = 'frxPadrao'
      end
      item
        DataSet = frxReceber
        DataSetName = 'frxReceber'
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 230.551329770000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxEmpresa
        DataSetName = 'frxEmpresa'
        RowCount = 0
        object MemofrxEmpresaN_FANTASIA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 18.897650660000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'N_FANTASIA'
          DataSet = frxEmpresa
          DataSetName = 'frxEmpresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEmpresa."N_FANTASIA"]')
        end
        object MemofrxEmpresaENDERECO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 45.354360660000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ENDERECO'
          DataSet = frxEmpresa
          DataSetName = 'frxEmpresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEmpresa."ENDERECO"]')
        end
        object MemofrxEmpresaNUMERO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 45.354360660000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NUMERO'
          DataSet = frxEmpresa
          DataSetName = 'frxEmpresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEmpresa."NUMERO"]')
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692951550000000000
          Top = 18.897651480000000000
          Width = 75.590600730000000000
          Height = 18.897647860000000000
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
            'Empresa:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 45.354360660000000000
          Width = 75.590600730000000000
          Height = 18.897647860000000000
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
          Left = 566.929500000000000000
          Top = 45.354360660000000000
          Width = 30.236240730000000000
          Height = 18.897647860000000000
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
            'N.'#186':')
          ParentFont = False
        end
        object MemofrxEmpresaBAIRRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 72.811070660000000000
          Width = 298.582870000000000000
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
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 72.811070660000000000
          Width = 56.692950730000000000
          Height = 18.897647860000000000
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
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 101.047310660000000000
          Width = 75.590600730000000000
          Height = 18.897647860000000000
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
        object MemofrxEmpresaCIDADE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 101.047310660000000000
          Width = 411.968770000000000000
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
        object MemofrxEmpresaCEP: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 72.811070660000000000
          Width = 147.401670000000000000
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
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 72.811070660000000000
          Width = 75.590600730000000000
          Height = 18.897647860000000000
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
        object MemofrxEmpresaUF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 100.267780660000000000
          Width = 60.472480000000000000
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
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 100.267780660000000000
          Width = 30.236240730000000000
          Height = 18.897647860000000000
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
            'UF:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 128.504020660000000000
          Width = 75.590600730000000000
          Height = 18.897647860000000000
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
            'Telefone:')
          ParentFont = False
        end
        object MemofrxEmpresaTELEFONE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 128.504020660000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'TELEFONE'
          DataSet = frxEmpresa
          DataSetName = 'frxEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEmpresa."TELEFONE"]')
          ParentFont = False
        end
        object MemofrxEmpresaEMAIL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 128.504020660000000000
          Width = 298.582870000000000000
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
          Memo.UTF8W = (
            '[frxEmpresa."EMAIL"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 128.504020660000000000
          Width = 56.692950730000000000
          Height = 18.897647860000000000
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
            'E-Mail:')
          ParentFont = False
        end
        object MemofrxEmpresaCNPJ: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 18.897650660000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'CNPJ'
          DataSet = frxEmpresa
          DataSetName = 'frxEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEmpresa."CNPJ"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 18.897650660000000000
          Width = 52.913420730000000000
          Height = 18.897647860000000000
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
            'CNPJ:')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 718.110700730000000000
          Height = 166.299319770000000000
          Frame.Typ = []
        end
        object Memo11: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 185.196965510000000000
          Width = 718.110717773437500000
          Height = 22.677189300000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Recibo de Pagamento de Parcelas')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 68.031540000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        DataSet = frxPadrao
        DataSetName = 'frxPadrao'
        RowCount = 0
        object MemofrxPadraoID_VENDA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 34.015770000000000000
          Width = 113.385900000000000000
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
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxPadrao."ID_VENDA"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Top = 11.338586240000000000
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
            'ID Venda')
          ParentFont = False
        end
        object MemofrxPadraoID_CLIENTE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 34.015770000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ID_CLIENTE'
          DataSet = frxPadrao
          DataSetName = 'frxPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxPadrao."ID_CLIENTE"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 11.338590000000000000
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
            'ID Cliente')
          ParentFont = False
        end
        object MemofrxPadraoCPF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 34.015770000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'CPF'
          DataSet = frxPadrao
          DataSetName = 'frxPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxPadrao."CPF"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 11.338590000000000000
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
            'CPF')
          ParentFont = False
        end
        object MemofrxPadraoNOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 34.015770000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOME'
          DataSet = frxPadrao
          DataSetName = 'frxPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxPadrao."NOME"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 11.338590000000000000
          Width = 340.157700730000000000
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
            'Nome')
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
        Height = 52.913420000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        DataSet = frxReceber
        DataSetName = 'frxReceber'
        RowCount = 0
      end
    end
  end
  object frxPadrao: TfrxDBDataset
    UserName = 'frxPadrao'
    CloseDataSource = False
    DataSet = QueryPadrao
    BCDToCurrency = False
    DataSetOptions = []
    Left = 456
    Top = 80
    FieldDefs = <
      item
        FieldName = 'ID_VENDA'
      end
      item
        FieldName = 'ID_CLIENTE'
      end
      item
        FieldName = 'NOME'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'CPF'
        FieldType = fftString
        Size = 16
      end>
  end
  object frxReceber: TfrxDBDataset
    UserName = 'frxReceber'
    CloseDataSource = False
    DataSet = QueryReceber
    BCDToCurrency = False
    DataSetOptions = []
    Left = 531
    Top = 80
    FieldDefs = <
      item
        FieldName = 'ID_SEQUENCIA'
      end
      item
        FieldName = 'ID_VENDA'
      end
      item
        FieldName = 'VALOR_PARCELA'
      end
      item
        FieldName = 'DT_VENCIMENTO'
        FieldType = fftDateTime
      end
      item
        FieldName = 'DT_PAGAMENTO'
        FieldType = fftDateTime
      end
      item
        FieldName = 'ATRASO'
      end
      item
        FieldName = 'JUROS'
      end
      item
        FieldName = 'VL_JUROS'
      end
      item
        FieldName = 'TOTAL_PAGAR'
      end
      item
        FieldName = 'STATUS'
        FieldType = fftString
        Size = 30
      end>
  end
  object frxEmpresa: TfrxDBDataset
    UserName = 'frxEmpresa'
    CloseDataSource = False
    DataSet = QueryEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 608
    Top = 80
    FieldDefs = <
      item
        FieldName = 'ID_EMPRESA'
      end
      item
        FieldName = 'RAZAO_SOCIAL'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'N_FANTASIA'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'ENDERECO'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'NUMERO'
      end
      item
        FieldName = 'BAIRRO'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'CIDADE'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'UF'
        FieldType = fftString
      end
      item
        FieldName = 'CEP'
        FieldType = fftString
        Size = 14
      end
      item
        FieldName = 'TELEFONE'
        FieldType = fftString
        Size = 15
      end
      item
        FieldName = 'CNPJ'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'EMAIL'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'LOGO'
      end
      item
        FieldName = 'CADASTRO'
        FieldType = fftDateTime
      end>
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
    Left = 802
    Top = 80
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
    OnDataChange = DSEmpresaDataChange
    Left = 882
    Top = 80
  end
end
