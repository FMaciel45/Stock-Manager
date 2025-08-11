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
  Position = poScreenCenter
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
    ExplicitLeft = -128
    ExplicitTop = -16
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
    object Label2: TLabel
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
    object Label3: TLabel
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
    object Label4: TLabel
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
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
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
    ExplicitLeft = 312
    ExplicitTop = 448
    ExplicitWidth = 185
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
end
