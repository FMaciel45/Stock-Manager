inherited FrmPesqCompraFormaPgto: TFrmPesqCompraFormaPgto
  Caption = 'Pesquisa de Compras por Formas de Pagamento'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited Label1: TLabel
      Visible = False
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lbNomePesq: TLabel
      Visible = False
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lbFimPesq: TLabel
      Left = 142
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 142
    end
    inherited lbInicioPesq: TLabel
      Left = 16
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 16
    end
    inherited cbChavePesquisa: TComboBox
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited edNome: TEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited mkInicio: TMaskEdit
      Left = 16
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 16
    end
    inherited mkFim: TMaskEdit
      Left = 142
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 142
    end
    inherited btTransferir: TBitBtn
      Left = 376
      Visible = False
      ExplicitLeft = 376
    end
    inherited btImprimir: TBitBtn
      Left = 457
      OnClick = btImprimirClick
      ExplicitLeft = 457
    end
    inherited btPesquisa: TBitBtn
      Left = 295
      OnClick = btPesquisaClick
      ExplicitLeft = 295
    end
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORMA_PGTO'
        Title.Caption = 'ID Forma Pgto.'
        Width = 157
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o Forma Pgto.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE_COMPRA'
        Title.Caption = 'Qtde. Compra'
        Width = 185
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_COMPRA'
        Title.Caption = 'Valor Compra'
        Width = 202
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 0
    ExplicitTop = 440
    inherited lbResultado: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    object lbValorCompras: TLabel
      Left = 280
      Top = 6
      Width = 116
      Height = 21
      Caption = 'lbValorCompras'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  inherited DBNavigator1: TDBNavigator
    Hints.Strings = ()
  end
  inherited QueryPesqPadrao: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT '
      '  A.ID_FORMA_PGTO, '
      '  B.DESCRICAO, '
      '  COUNT(A.ID_COMPRA) AS QTDE_COMPRA, '
      '  SUM(A.VALOR) AS VALOR_COMPRA  '
      'FROM COMPRA A '
      'INNER JOIN FORMA_PGTO B ON B.ID_FORMA_PGTO=A.ID_FORMA_PGTO '
      'GROUP BY A.ID_FORMA_PGTO, B.DESCRICAO'
      'ORDER BY A.ID_FORMA_PGTO, B.DESCRICAO;')
    object QueryPesqPadraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object QueryPesqPadraoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QueryPesqPadraoQTDE_COMPRA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTDE_COMPRA'
      Origin = 'QTDE_COMPRA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryPesqPadraoVALOR_COMPRA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
  inherited RelPesqPadrao: TfrxReport
    ReportOptions.CreateDate = 45881.704703020800000000
    ReportOptions.LastChange = 45894.407150428240000000
    Datasets = <
      item
        DataSet = DataSetPesqPadrao
        DataSetName = 'DataSetPesqPadrao'
      end>
    Variables = <
      item
        Name = ' Data'
        Value = Null
      end
      item
        Name = 'DataIni'
        Value = ''
      end
      item
        Name = 'DataFim'
        Value = ''
      end
      item
        Name = 'Nome'
        Value = ''
      end
      item
        Name = 'Qtde.'
        Value = ''
      end
      item
        Name = 'ValorCompra'
        Value = ''
      end>
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
        Height = 98.267716540000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 49.354359920000000000
          Width = 718.110717773437500000
          Height = 22.677181670000000000
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
            'Relat'#243'rio de Compras Agrupadas por Forma de Pagamento')
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
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDataIni: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 18.897650000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DataIni]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDataFim: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 18.897650000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DataFim]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441256190000000000
          Top = -0.000000230000000000
          Width = 56.692920210000000000
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
            'Per'#237'odo:')
          ParentFont = False
          VAlign = vaCenter
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
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = -0.000000660000000000
          Top = 0.000002360000000007
          Width = 94.488248830000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            'ID Forma Pgto.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Width = 321.260048830000000000
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
            'Descri'#231#227'o Forma Pgto.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Width = 151.181198830000000000
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
            'Quantidade Compra')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Width = 151.181198830000000000
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
            'Valor Compra')
          ParentFont = False
          VAlign = vaCenter
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
        Width = 718.110700000000000000
        DataSet = DataSetPesqPadrao
        DataSetName = 'DataSetPesqPadrao'
        RowCount = 0
        object MemoDataSetPesqPadraoQTDE_COMPRA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 415.748300000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'QTDE_COMPRA'
          DataSet = DataSetPesqPadrao
          DataSetName = 'DataSetPesqPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[DataSetPesqPadrao."QTDE_COMPRA"]')
          ParentFont = False
        end
        object MemoDataSetPesqPadraoVALOR_COMPRA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 566.929500000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'VALOR_COMPRA'
          DataSet = DataSetPesqPadrao
          DataSetName = 'DataSetPesqPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[DataSetPesqPadrao."VALOR_COMPRA"]')
          ParentFont = False
        end
        object MemoDataSetPesqPadraoID_FORMA_PGTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ID_FORMA_PGTO'
          DataSet = DataSetPesqPadrao
          DataSetName = 'DataSetPesqPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[DataSetPesqPadrao."ID_FORMA_PGTO"]')
          ParentFont = False
        end
        object MemoDataSetPesqPadraoDESCRICAO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 94.488250000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'DESCRICAO'
          DataSet = DataSetPesqPadrao
          DataSetName = 'DataSetPesqPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[DataSetPesqPadrao."DESCRICAO"]')
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
        Height = 109.606370000000000000
        Top = 306.141930000000000000
        Width = 718.110700000000000000
        object MemoNome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 15.118120000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Nome]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoQtde: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 52.913420000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Qtde.]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoValorCompra: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 71.811070000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ValorCompra]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Top = 15.118110280000000000
          Width = 83.149660730000000000
          Height = 18.897674560000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Emitido por:')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDate: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoTime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  inherited DataSetPesqPadrao: TfrxDBDataset
    Left = 368
    Top = 360
    FieldDefs = <
      item
        FieldName = 'ID_FORMA_PGTO'
      end
      item
        FieldName = 'DESCRICAO'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'QTDE_COMPRA'
      end
      item
        FieldName = 'VALOR_COMPRA'
      end>
  end
end
