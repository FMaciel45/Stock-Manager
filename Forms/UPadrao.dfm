object FrmPadraoCadastro: TFrmPadraoCadastro
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Formul'#225'rio Padr'#227'o'
  ClientHeight = 609
  ClientWidth = 1090
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
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1090
    Height = 70
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object btNovo: TBitBtn
      Left = 16
      Top = 16
      Width = 80
      Height = 40
      Caption = '&Novo'
      Layout = blGlyphRight
      TabOrder = 0
      OnClick = btNovoClick
    end
    object btEditar: TBitBtn
      Left = 188
      Top = 16
      Width = 80
      Height = 40
      Caption = '&Editar'
      Layout = blGlyphRight
      TabOrder = 1
      OnClick = btEditarClick
    end
    object btDeletar: TBitBtn
      Left = 102
      Top = 16
      Width = 80
      Height = 40
      Caption = '&Deletar'
      Layout = blGlyphRight
      TabOrder = 2
      OnClick = btDeletarClick
    end
    object btGravar: TBitBtn
      Left = 274
      Top = 16
      Width = 80
      Height = 40
      Caption = '&Gravar'
      Enabled = False
      Layout = blGlyphRight
      TabOrder = 3
      OnClick = btGravarClick
    end
    object btCancelar: TBitBtn
      Left = 360
      Top = 16
      Width = 80
      Height = 40
      Caption = '&Cancelar'
      Layout = blGlyphRight
      TabOrder = 4
      OnClick = btCancelarClick
    end
    object btAtualizar: TBitBtn
      Left = 446
      Top = 16
      Width = 80
      Height = 40
      Caption = '&Atualizar'
      Enabled = False
      Layout = blGlyphRight
      TabOrder = 5
      OnClick = btAtualizarClick
    end
    object btPesquisar: TBitBtn
      Left = 532
      Top = 16
      Width = 80
      Height = 40
      Caption = '&Pesquisar'
      Layout = blGlyphRight
      TabOrder = 6
      OnClick = btPesquisarClick
    end
    object DBNavigator1: TDBNavigator
      Left = 736
      Top = 18
      Width = 340
      Height = 33
      DataSource = DSPadrao
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 7
    end
    object btSair: TBitBtn
      Left = 618
      Top = 16
      Width = 80
      Height = 40
      Caption = '&Sair'
      Layout = blGlyphRight
      TabOrder = 8
      OnClick = btSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 569
    Width = 1090
    Height = 40
    Align = alBottom
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 1
  end
  object QueryPadrao: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      '')
    Left = 32
    Top = 112
  end
  object DSPadrao: TDataSource
    DataSet = QueryPadrao
    Left = 120
    Top = 112
  end
end
