object FrmPesqGeralMes: TFrmPesqGeralMes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Formul'#225'rio de Pesquisa Geral por Per'#237'odo'
  ClientHeight = 519
  ClientWidth = 1121
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1121
    Height = 121
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
    object btTransferir: TBitBtn
      Left = 783
      Top = 42
      Width = 75
      Height = 40
      Caption = '&Transferir'
      ModalResult = 1
      TabOrder = 2
    end
    object btImprimir: TBitBtn
      Left = 870
      Top = 42
      Width = 75
      Height = 40
      Caption = '&Imprimir'
      TabOrder = 3
    end
    object btPesquisa: TBitBtn
      Left = 694
      Top = 42
      Width = 75
      Height = 40
      Caption = '&Pesquisar'
      TabOrder = 4
    end
    object RadioGroup1: TRadioGroup
      Left = 16
      Top = 13
      Width = 241
      Height = 108
      Caption = 'Op'#231#245'es de Pesquisa'
      Items.Strings = (
        'Compras e Vendas por M'#234's'
        'Contas Pagas e Recebidas por M'#234's'
        'Contas a Pagar e a Receber por M'#234's')
      TabOrder = 5
    end
    object btSair: TBitBtn
      Left = 962
      Top = 42
      Width = 80
      Height = 40
      Caption = '&Sair'
      Layout = blGlyphRight
      TabOrder = 6
      OnClick = btSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 464
    Width = 1121
    Height = 55
    Align = alBottom
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 1
  end
  object QueryCompra: TFDQuery
    Connection = DM.Conexao
    Left = 32
    Top = 248
  end
  object QueryVenda: TFDQuery
    Connection = DM.Conexao
    Left = 120
    Top = 248
  end
  object QueryContasPagar: TFDQuery
    Connection = DM.Conexao
    Left = 225
    Top = 248
  end
  object QueryContasReceber: TFDQuery
    Connection = DM.Conexao
    Left = 352
    Top = 248
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
    Left = 504
    Top = 248
  end
  object DSContasPagarAPagar: TDataSource
    DataSet = QueryContasPagarAPagar
    Left = 505
    Top = 312
  end
  object QueryContasReceberAReceber: TFDQuery
    Connection = DM.Conexao
    Left = 675
    Top = 248
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
    ReportOptions.CreateDate = 45894.430263032410000000
    ReportOptions.LastChange = 45894.430263032410000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 32
    Top = 176
    Datasets = <>
    Variables = <>
    Style = <>
    Watermarks = <>
  end
  object frxCompra: TfrxDBDataset
    UserName = 'frxCompra'
    CloseDataSource = False
    BCDToCurrency = False
    DataSetOptions = []
    Left = 32
    Top = 376
  end
  object frxVenda: TfrxDBDataset
    UserName = 'frxVenda'
    CloseDataSource = False
    BCDToCurrency = False
    DataSetOptions = []
    Left = 120
    Top = 376
  end
  object frxContasPagar: TfrxDBDataset
    UserName = 'frxContasPagar'
    CloseDataSource = False
    BCDToCurrency = False
    DataSetOptions = []
    Left = 224
    Top = 376
  end
  object frxContasReceber: TfrxDBDataset
    UserName = 'frxContasReceber'
    CloseDataSource = False
    BCDToCurrency = False
    DataSetOptions = []
    Left = 352
    Top = 376
  end
  object frxContasPagarAPagar: TfrxDBDataset
    UserName = 'frxContasPagarAPagar'
    CloseDataSource = False
    BCDToCurrency = False
    DataSetOptions = []
    Left = 504
    Top = 376
  end
  object frxContasReceberAReceber: TfrxDBDataset
    UserName = 'frxContasReceberAReceber'
    CloseDataSource = False
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
