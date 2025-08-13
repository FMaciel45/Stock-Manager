inherited FrmPesqCliente: TFrmPesqCliente
  Caption = 'Pesquisa de Clientes'
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
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lbInicioPesq: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited cbChavePesquisa: TComboBox
      StyleElements = [seFont, seClient, seBorder]
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'Cadastro'
        'Per'#237'odo'
        'Todos')
    end
    inherited edNome: TEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited mkInicio: TMaskEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited mkFim: TMaskEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited btTransferir: TBitBtn
      OnClick = btTransferirClick
    end
    inherited btImprimir: TBitBtn
      OnClick = btImprimirClick
    end
    inherited btPesquisa: TBitBtn
      OnClick = btPesquisaClick
    end
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Caption = 'Id do Cliente'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome do Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Caption = 'Endere'#231'o do Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'N'#250'mero '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Title.Caption = 'Bairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Title.Caption = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Caption = 'Telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Title.Caption = 'Data de cadastro'
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited QueryPesqPadrao: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT '
      '  ID_CLIENTE,'
      '  NOME,'
      '  ENDERECO,'
      '  NUMERO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  TELEFONE,'
      '  CPF,'
      '  CADASTRO'
      'FROM CLIENTES'
      'ORDER BY ID_CLIENTE;'
      '')
    Left = 496
    Top = 328
    object QueryPesqPadraoID_CLIENTE: TIntegerField
      DisplayWidth = 11
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryPesqPadraoNOME: TStringField
      DisplayWidth = 54
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QueryPesqPadraoENDERECO: TStringField
      DisplayWidth = 93
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object QueryPesqPadraoNUMERO: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object QueryPesqPadraoBAIRRO: TStringField
      DisplayWidth = 42
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object QueryPesqPadraoCIDADE: TStringField
      DisplayWidth = 56
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object QueryPesqPadraoUF: TStringField
      DisplayWidth = 8
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QueryPesqPadraoCEP: TStringField
      DisplayWidth = 15
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 16
    end
    object QueryPesqPadraoTELEFONE: TStringField
      DisplayWidth = 18
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 16
    end
    object QueryPesqPadraoCPF: TStringField
      DisplayWidth = 19
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      Size = 16
    end
    object QueryPesqPadraoCADASTRO: TDateField
      DisplayWidth = 27
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited dsPesqPadrao: TDataSource
    Left = 608
    Top = 328
  end
  inherited RelPesqPadrao: TfrxReport
    ReportOptions.CreateDate = 45881.704703020800000000
    ReportOptions.LastChange = 45881.704703020800000000
    Datasets = <
      item
        DataSet = DataSetPesqPadrao
        DataSetName = 'frxDB_clientes'
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
      LeftMargin = 20.000000000000000000
      RightMargin = 20.000000000000000000
      TopMargin = 20.000000000000000000
      BottomMargin = 20.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 98.267716535433100000
        Top = 18.897650000000000000
        Width = 642.520100000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 49.133889060000000000
          Width = 642.520080566406300000
          Height = 22.677181670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Clientes do Sistema')
          ParentFont = False
        end
        object MemoDate: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object MemoTime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 525.354670000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object MemoPage: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 139.842610000000000000
        Width = 642.520100000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 68.031520570000000000
          Height = 18.897659300000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            'ID ')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031520570000000000
          Top = 0.000011020000000001
          Width = 181.417448080000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 249.448968650000000000
          Width = 185.196968940000000000
          Height = 18.897659300000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 434.645937590000000000
          Top = 0.000011020000000001
          Width = 207.874142976406300000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            'Data de cadastro')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 222.992270000000000000
        Width = 642.520100000000000000
        DataSet = DataSetPesqPadrao
        DataSetName = 'frxDB_clientes'
        RowCount = 0
        object MemofrxDB_clientesID_CLIENTE: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ID_CLIENTE'
          DataSet = DataSetPesqPadrao
          DataSetName = 'frxDB_clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDB_clientes."ID_CLIENTE"]')
          ParentFont = False
        end
        object MemofrxDB_clientesNOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 68.031540000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOME'
          DataSet = DataSetPesqPadrao
          DataSetName = 'frxDB_clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_clientes."NOME"]')
          ParentFont = False
        end
        object MemofrxDB_clientesCADASTRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 434.645950000000000000
          Width = 207.874130570000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'CADASTRO'
          DataSet = DataSetPesqPadrao
          DataSetName = 'frxDB_clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDB_clientes."CADASTRO"]')
          ParentFont = False
        end
        object MemofrxDB_clientesTELEFONE: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 249.448980000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'TELEFONE'
          DataSet = DataSetPesqPadrao
          DataSetName = 'frxDB_clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDB_clientes."TELEFONE"]')
          ParentFont = False
        end
      end
    end
  end
  inherited DataSetPesqPadrao: TfrxDBDataset
    UserName = 'frxDB_clientes'
    Left = 472
    Top = 208
    FieldDefs = <
      item
        FieldName = 'ID_CLIENTE'
      end
      item
        FieldName = 'NOME'
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
        Size = 16
      end
      item
        FieldName = 'TELEFONE'
        FieldType = fftString
        Size = 16
      end
      item
        FieldName = 'CPF'
        FieldType = fftString
        Size = 16
      end
      item
        FieldName = 'CADASTRO'
        FieldType = fftDateTime
      end>
  end
end
