object FrmPesquisaPadrao: TFrmPesquisaPadrao
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio de Pesquisa Padr'#227'o'
  ClientHeight = 495
  ClientWidth = 1197
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1197
    Height = 90
    Align = alTop
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 15
      Width = 146
      Height = 21
      Caption = 'Op'#231#245'es de Consulta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbNomePesq: TLabel
      Left = 280
      Top = 15
      Width = 45
      Height = 21
      Caption = 'Nome'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbFimPesq: TLabel
      Left = 790
      Top = 15
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
      Left = 664
      Top = 15
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
    object cbChavePesquisa: TComboBox
      Left = 16
      Top = 42
      Width = 233
      Height = 23
      TabOrder = 0
      OnChange = cbChavePesquisaChange
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'Cadastro'
        'Per'#237'odo')
    end
    object edNome: TEdit
      Left = 280
      Top = 42
      Width = 353
      Height = 23
      TabOrder = 1
    end
    object mkInicio: TMaskEdit
      Left = 664
      Top = 42
      Width = 120
      Height = 23
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
    end
    object mkFim: TMaskEdit
      Left = 790
      Top = 42
      Width = 120
      Height = 23
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 3
      Text = '  /  /    '
    end
    object btTransferir: TBitBtn
      Left = 1024
      Top = 27
      Width = 75
      Height = 40
      Caption = '&Transferir'
      ModalResult = 1
      TabOrder = 4
    end
    object btImprimir: TBitBtn
      Left = 1105
      Top = 26
      Width = 75
      Height = 40
      Caption = '&Imprimir'
      TabOrder = 5
    end
    object btPesquisa: TBitBtn
      Left = 943
      Top = 26
      Width = 75
      Height = 40
      Caption = '&Pesquisar'
      TabOrder = 6
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 90
    Width = 1197
    Height = 364
    Align = alClient
    DataSource = dsPesqPadrao
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object Panel2: TPanel
    Left = 0
    Top = 454
    Width = 1197
    Height = 41
    Align = alBottom
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 2
  end
  object QueryPesqPadrao: TFDQuery
    Connection = DM.Conexao
    Left = 688
    Top = 144
  end
  object dsPesqPadrao: TDataSource
    DataSet = QueryPesqPadrao
    Left = 688
    Top = 208
  end
  object RelPesqPadrao: TfrxReport
    Version = '2025.2.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection, pbWatermarks]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45881.704703020830000000
    ReportOptions.LastChange = 45881.704703020830000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 472
    Top = 144
    Datasets = <>
    Variables = <>
    Style = <>
    Watermarks = <>
  end
  object DataSetPesqPadrao: TfrxDBDataset
    UserName = 'DataSetPesqPadrao'
    CloseDataSource = False
    DataSet = QueryPesqPadrao
    BCDToCurrency = False
    DataSetOptions = []
    Left = 472
    Top = 208
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
    Left = 472
    Top = 288
  end
end
