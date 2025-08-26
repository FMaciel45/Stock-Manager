object FrmPesqGeralMes: TFrmPesqGeralMes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Formul'#225'rio de Pesquisa Geral por Per'#237'odo'
  ClientHeight = 519
  ClientWidth = 975
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnClose = FormClose
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 975
    Height = 123
    Align = alTop
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object lbFimPesq: TLabel
      Left = 477
      Top = 32
      Width = 26
      Height = 21
      Caption = 'Fim'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbInicioPesq: TLabel
      Left = 325
      Top = 32
      Width = 40
      Height = 21
      Caption = 'In'#237'cio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object mkInicio: TMaskEdit
      Left = 325
      Top = 53
      Width = 120
      Height = 23
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object mkFim: TMaskEdit
      Left = 477
      Top = 53
      Width = 120
      Height = 23
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object btImprimir: TBitBtn
      Left = 782
      Top = 42
      Width = 75
      Height = 40
      Caption = '&Imprimir'
      TabOrder = 2
      OnClick = btImprimirClick
    end
    object btPesquisa: TBitBtn
      Left = 694
      Top = 42
      Width = 75
      Height = 40
      Caption = '&Pesquisar'
      TabOrder = 3
      OnClick = btPesquisaClick
    end
    object RGOpcao: TRadioGroup
      Left = 16
      Top = 13
      Width = 241
      Height = 108
      Caption = 'Op'#231#245'es de Pesquisa'
      Items.Strings = (
        'Compras e Vendas por M'#234's'
        'Contas Pagas e Recebidas por M'#234's'
        'Contas a Pagar e a Receber por M'#234's')
      TabOrder = 4
      OnClick = RGOpcaoClick
    end
    object btSair: TBitBtn
      Left = 874
      Top = 42
      Width = 80
      Height = 40
      Caption = '&Sair'
      Layout = blGlyphRight
      TabOrder = 5
      OnClick = btSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 464
    Width = 975
    Height = 55
    Align = alBottom
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 1121
  end
  object QueryCompra: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT '
      '  EXTRACT (MONTH FROM A.CADASTRO) AS MES,'
      '  EXTRACT (YEAR FROM A.CADASTRO) AS ANO,'
      '  SUM (A.VALOR) AS VALOR_COMPRA'
      'FROM COMPRA A'
      'WHERE A.CADASTRO BETWEEN :PDATAINI AND :PDATAFIM'
      
        'GROUP BY EXTRACT (MONTH FROM A.CADASTRO), EXTRACT (YEAR FROM A.C' +
        'ADASTRO)'
      'ORDER BY EXTRACT (MONTH FROM A.CADASTRO);')
    Left = 32
    Top = 248
    ParamData = <
      item
        Name = 'PDATAINI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PDATAFIM'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QueryCompraMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryCompraANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
      Origin = 'ANO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryCompraVALOR_COMPRA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object QueryVenda: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT '
      '  EXTRACT (MONTH FROM A.CADASTRO) AS MES,'
      '  EXTRACT (YEAR FROM A.CADASTRO) AS ANO,'
      '  SUM (A.VALOR) AS VALOR_VENDA'
      'FROM VENDA A'
      'WHERE A.CADASTRO BETWEEN :PDATAINI AND :PDATAFIM'
      
        'GROUP BY EXTRACT (MONTH FROM A.CADASTRO), EXTRACT (YEAR FROM A.C' +
        'ADASTRO)'
      'ORDER BY EXTRACT (MONTH FROM A.CADASTRO);')
    Left = 120
    Top = 248
    ParamData = <
      item
        Name = 'PDATAINI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PDATAFIM'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QueryVendaMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryVendaANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
      Origin = 'ANO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryVendaVALOR_VENDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object QueryContasPagar: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT '
      '  EXTRACT (MONTH FROM A.DT_PAGAMENTO) AS MES,'
      '  EXTRACT (YEAR FROM A.DT_PAGAMENTO) AS ANO,'
      '  SUM (A.TOTAL_PAGAR) AS TOTAL_PAGO'
      'FROM CONTAS_PAGAR A'
      'WHERE A.DT_PAGAMENTO BETWEEN :PDATAINI AND :PDATAFIM'
      
        'GROUP BY EXTRACT (MONTH FROM A.DT_PAGAMENTO), EXTRACT (YEAR FROM' +
        ' A.DT_PAGAMENTO)'
      'ORDER BY EXTRACT (MONTH FROM A.DT_PAGAMENTO);')
    Left = 225
    Top = 248
    ParamData = <
      item
        Name = 'PDATAINI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PDATAFIM'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QueryContasPagarMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryContasPagarANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
      Origin = 'ANO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryContasPagarTOTAL_PAGO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_PAGO'
      Origin = 'TOTAL_PAGO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object QueryContasReceber: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT '
      '  EXTRACT (MONTH FROM A.DT_PAGAMENTO) AS MES,'
      '  EXTRACT (YEAR FROM A.DT_PAGAMENTO) AS ANO,'
      '  SUM (A.TOTAL_PAGAR) AS TOTAL_RECEBIDO'
      'FROM CONTAS_RECEBER A'
      'WHERE A.DT_PAGAMENTO BETWEEN :PDATAINI AND :PDATAFIM'
      
        'GROUP BY EXTRACT (MONTH FROM A.DT_PAGAMENTO), EXTRACT (YEAR FROM' +
        ' A.DT_PAGAMENTO)'
      'ORDER BY EXTRACT (MONTH FROM A.DT_PAGAMENTO);')
    Left = 352
    Top = 248
    ParamData = <
      item
        Name = 'PDATAINI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PDATAFIM'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QueryContasReceberMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryContasReceberANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
      Origin = 'ANO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryContasReceberTOTAL_RECEBIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_RECEBIDO'
      Origin = 'TOTAL_RECEBIDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object DSCompra: TDataSource
    DataSet = QueryCompra
    Left = 32
    Top = 312
  end
  object DSVenda: TDataSource
    DataSet = QueryVenda
    Left = 120
    Top = 312
  end
  object DSContasPagar: TDataSource
    DataSet = QueryContasPagar
    Left = 226
    Top = 312
  end
  object DSContasReceber: TDataSource
    DataSet = QueryContasReceber
    Left = 352
    Top = 312
  end
  object QueryContasPagarAPagar: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT '
      '  EXTRACT (MONTH FROM A.DT_VENCIMENTO) AS MES,'
      '  EXTRACT (YEAR FROM A.DT_VENCIMENTO) AS ANO,'
      '  SUM (A.VALOR_PARCELA) AS VALOR_A_PAGAR'
      'FROM CONTAS_PAGAR A'
      'WHERE A.DT_VENCIMENTO BETWEEN :PDATAINI AND :PDATAFIM'
      'AND A.STATUS='#39'Em aberto'#39
      
        'GROUP BY EXTRACT (MONTH FROM A.DT_VENCIMENTO), EXTRACT (YEAR FRO' +
        'M A.DT_VENCIMENTO)'
      'ORDER BY EXTRACT (MONTH FROM A.DT_VENCIMENTO);')
    Left = 504
    Top = 248
    ParamData = <
      item
        Name = 'PDATAINI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PDATAFIM'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QueryContasPagarAPagarMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryContasPagarAPagarANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
      Origin = 'ANO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryContasPagarAPagarVALOR_A_PAGAR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_A_PAGAR'
      Origin = 'VALOR_A_PAGAR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object DSContasPagarAPagar: TDataSource
    DataSet = QueryContasPagarAPagar
    Left = 505
    Top = 312
  end
  object QueryContasReceberAReceber: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT '
      '  EXTRACT (MONTH FROM A.DT_VENCIMENTO) AS MES,'
      '  EXTRACT (YEAR FROM A.DT_VENCIMENTO) AS ANO,'
      '  SUM (A.VALOR_PARCELA) AS VALOR_A_RECEBER'
      'FROM CONTAS_RECEBER A'
      'WHERE A.DT_VENCIMENTO BETWEEN :PDATAINI AND :PDATAFIM'
      'AND A.STATUS='#39'Em aberto'#39
      
        'GROUP BY EXTRACT (MONTH FROM A.DT_VENCIMENTO), EXTRACT (YEAR FRO' +
        'M A.DT_VENCIMENTO)'
      'ORDER BY EXTRACT (MONTH FROM A.DT_VENCIMENTO);')
    Left = 675
    Top = 248
    ParamData = <
      item
        Name = 'PDATAINI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PDATAFIM'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QueryContasReceberAReceberMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryContasReceberAReceberANO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
      Origin = 'ANO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QueryContasReceberAReceberVALOR_A_RECEBER: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_A_RECEBER'
      Origin = 'VALOR_A_RECEBER'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object DSContasReceberAReceber: TDataSource
    Left = 676
    Top = 312
  end
  object RelatorioGeral: TfrxReport
    Version = '2025.2.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection, pbWatermarks]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45894.430263032400000000
    ReportOptions.LastChange = 45895.448209143520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 816
    Top = 312
    Datasets = <
      item
        DataSet = frxContasPagar
        DataSetName = 'frxContasPagar'
      end
      item
        DataSet = frxContasReceber
        DataSetName = 'frxContasReceber'
      end>
    Variables = <
      item
        Name = ' Periodo'
        Value = Null
      end
      item
        Name = 'DataInicial'
        Value = ''
      end
      item
        Name = 'DataFinal'
        Value = ''
      end
      item
        Name = 'Usuario'
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
      DataSet = frxContasPagar
      DataSetName = 'frxContasPagar'
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
          Top = 49.133893300000000000
          Width = 718.110717773437500000
          Height = 22.677174040000000000
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
            'Relat'#243'rio de Contas Pagas e Recebidas por Per'#237'odo')
          ParentFont = False
        end
        object MemoDataInicial: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 555.590910000000000000
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
            '[DataInicial]')
          ParentFont = False
        end
        object MemoDataFinal: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 638.740570000000000000
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
            '[DataFinal]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677488600000000000
          Top = -0.000000660000000000
          Width = 52.913420730000000000
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
            'Per'#237'odo')
          ParentFont = False
        end
      end
      object MemoPage: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = -3.779530000000000000
        Top = 37.795300000000000000
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
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110717773437500000
          Height = 18.897659300000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dados de compras')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 0.000000050000000000
          Top = 30.236247420000000000
          Width = 151.181196440000000000
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
            'M'#234's')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 30.236240000000000000
          Width = 151.181196440000000000
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
            'Ano')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 30.236240000000000000
          Width = 415.748296440000000000
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
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        DataSet = frxContasPagar
        DataSetName = 'frxContasPagar'
        RowCount = 0
        object MemofrxCompraMES: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'MES'
          DataSet = frxContasPagar
          DataSetName = 'frxContasPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxContasPagar."MES"]')
          ParentFont = False
        end
        object MemofrxCompraANO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ANO'
          DataSet = frxContasPagar
          DataSetName = 'frxContasPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxContasPagar."ANO"]')
          ParentFont = False
        end
        object MemofrxCompraVALOR_COMPRA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 3.779530000000000000
          Width = 415.748300000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'TOTAL_PAGO'
          DataSet = frxContasPagar
          DataSetName = 'frxContasPagar'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxContasPagar."TOTAL_PAGO"]')
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
        Height = 26.456710000000000000
        Top = 381.732530000000000000
        Width = 718.110700000000000000
        DataSet = frxContasReceber
        DataSetName = 'frxContasReceber'
        RowCount = 0
        object MemofrxVendaMES: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'MES'
          DataSet = frxContasReceber
          DataSetName = 'frxContasReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxContasReceber."MES"]')
          ParentFont = False
        end
        object MemofrxVendaANO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ANO'
          DataSet = frxContasReceber
          DataSetName = 'frxContasReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxContasReceber."ANO"]')
          ParentFont = False
        end
        object MemofrxVendaVALOR_VENDA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 3.779530000000000000
          Width = 415.748300000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'TOTAL_RECEBIDO'
          DataSet = frxContasReceber
          DataSetName = 'frxContasReceber'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxContasReceber."TOTAL_RECEBIDO"]')
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
        Height = 30.236240000000000000
        Top = 468.661720000000000000
        Width = 718.110700000000000000
        object MemoUsuario: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 3.779530000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Usuario]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 0.000000100000000000
          Top = 3.779529500000000000
          Width = 83.149659780000000000
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
            'Emitido por:')
          ParentFont = False
        end
        object MemoDate: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 3.779530000000000000
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
        end
        object MemoTime: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 3.779530000000000000
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
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110717773437500000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dados de Vendas')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Top = 41.574830000000000000
          Width = 151.181196440000000000
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
            'M'#234's')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 41.574830000000000000
          Width = 151.181196440000000000
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
            'Ano')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 41.574830000000000000
          Width = 415.748296440000000000
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
      end
    end
  end
  object frxCompra: TfrxDBDataset
    UserName = 'frxCompra'
    CloseDataSource = False
    DataSet = QueryCompra
    BCDToCurrency = False
    DataSetOptions = []
    Left = 32
    Top = 376
    FieldDefs = <
      item
        FieldName = 'MES'
      end
      item
        FieldName = 'ANO'
      end
      item
        FieldName = 'VALOR_COMPRA'
      end>
  end
  object frxVenda: TfrxDBDataset
    UserName = 'frxVenda'
    CloseDataSource = False
    DataSet = QueryVenda
    BCDToCurrency = False
    DataSetOptions = []
    Left = 120
    Top = 376
    FieldDefs = <
      item
        FieldName = 'MES'
      end
      item
        FieldName = 'ANO'
      end
      item
        FieldName = 'VALOR_VENDA'
      end>
  end
  object frxContasPagar: TfrxDBDataset
    UserName = 'frxContasPagar'
    CloseDataSource = False
    DataSet = QueryContasPagar
    BCDToCurrency = False
    DataSetOptions = []
    Left = 224
    Top = 376
    FieldDefs = <
      item
        FieldName = 'MES'
      end
      item
        FieldName = 'ANO'
      end
      item
        FieldName = 'TOTAL_PAGO'
      end>
  end
  object frxContasReceber: TfrxDBDataset
    UserName = 'frxContasReceber'
    CloseDataSource = False
    DataSet = QueryContasReceber
    BCDToCurrency = False
    DataSetOptions = []
    Left = 352
    Top = 376
    FieldDefs = <
      item
        FieldName = 'MES'
      end
      item
        FieldName = 'ANO'
      end
      item
        FieldName = 'TOTAL_RECEBIDO'
      end>
  end
  object frxContasPagarAPagar: TfrxDBDataset
    UserName = 'frxContasPagarAPagar'
    CloseDataSource = False
    DataSet = QueryContasPagarAPagar
    BCDToCurrency = False
    DataSetOptions = []
    Left = 504
    Top = 376
  end
  object frxContasReceberAReceber: TfrxDBDataset
    UserName = 'frxContasReceberAReceber'
    CloseDataSource = False
    DataSet = QueryContasReceberAReceber
    BCDToCurrency = False
    DataSetOptions = []
    Left = 680
    Top = 376
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    PDFColorSpace = csDeviceRGB
    Left = 816
    Top = 376
  end
end
