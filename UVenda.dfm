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
    ExplicitTop = 448
    ExplicitHeight = 63
  end
  inherited Panel3: TPanel
    Height = 155
    StyleElements = [seFont, seClient, seBorder]
    ExplicitHeight = 155
    object Label1: TLabel
      Left = 16
      Top = 7
      Width = 62
      Height = 15
      Caption = 'ID da Venda'
      FocusControl = DBIdVenda
    end
    object Label2: TLabel
      Left = 16
      Top = 55
      Width = 68
      Height = 15
      Caption = 'ID do Cliente'
      FocusControl = DBIdCliente
    end
    object Label3: TLabel
      Left = 16
      Top = 103
      Width = 111
      Height = 15
      Caption = 'ID da Forma de Pgto.'
      FocusControl = DBIdFormaPgto
    end
    object Label4: TLabel
      Left = 243
      Top = 7
      Width = 40
      Height = 15
      Caption = 'Usu'#225'rio'
      FocusControl = DBUsuario
    end
    object Label5: TLabel
      Left = 573
      Top = 55
      Width = 77
      Height = 15
      Caption = 'Valor da Venda'
      FocusControl = DBValor
    end
    object Label6: TLabel
      Left = 872
      Top = 7
      Width = 47
      Height = 15
      Caption = 'Cadastro'
      FocusControl = DBCadastro
    end
    object Label7: TLabel
      Left = 243
      Top = 55
      Width = 37
      Height = 15
      Caption = 'Cliente'
      FocusControl = DBEdit1
    end
    object Label8: TLabel
      Left = 243
      Top = 103
      Width = 151
      Height = 15
      Caption = 'Descri'#231#227'o da Forma de Pgto.'
      FocusControl = DBEdit2
    end
    object DBIdVenda: TDBEdit
      Left = 16
      Top = 23
      Width = 154
      Height = 23
      DataField = 'ID_VENDA'
      DataSource = DSPadrao
      TabOrder = 0
    end
    object DBIdCliente: TDBEdit
      Left = 16
      Top = 71
      Width = 154
      Height = 23
      DataField = 'ID_CLIENTE'
      DataSource = DSPadrao
      TabOrder = 1
      OnExit = DBIdClienteExit
    end
    object DBIdFormaPgto: TDBEdit
      Left = 16
      Top = 119
      Width = 154
      Height = 23
      DataField = 'ID_FORMA_PGTO'
      DataSource = DSPadrao
      TabOrder = 2
      OnExit = DBIdFormaPgtoExit
    end
    object DBUsuario: TDBEdit
      Left = 243
      Top = 26
      Width = 550
      Height = 23
      DataField = 'USUARIO'
      DataSource = DSPadrao
      Enabled = False
      TabOrder = 3
    end
    object DBValor: TDBEdit
      Left = 573
      Top = 71
      Width = 220
      Height = 23
      DataField = 'VALOR'
      DataSource = DSPadrao
      TabOrder = 5
    end
    object DBCadastro: TDBEdit
      Left = 872
      Top = 23
      Width = 204
      Height = 23
      DataField = 'CADASTRO'
      DataSource = DSPadrao
      Enabled = False
      TabOrder = 6
    end
    object DBEdit1: TDBEdit
      Left = 243
      Top = 71
      Width = 300
      Height = 23
      DataField = 'CLIENTE'
      DataSource = DSPadrao
      TabOrder = 4
      OnChange = DBEdit1Change
    end
    object DBEdit2: TDBEdit
      Left = 243
      Top = 119
      Width = 550
      Height = 23
      DataField = 'DESCRICAO'
      DataSource = DSPadrao
      TabOrder = 7
    end
  end
  inherited Panel4: TPanel
    Top = 495
    Height = 64
    StyleElements = [seFont, seClient, seBorder]
    ExplicitHeight = 64
  end
  inherited PageControl1: TPageControl
    Top = 225
    Height = 270
    inherited ItemCompra: TTabSheet
      ExplicitHeight = 240
      inherited DBGrid1: TDBGrid
        Height = 240
      end
    end
    inherited ContasPagar: TTabSheet
      ExplicitHeight = 240
      inherited DBGrid2: TDBGrid
        Height = 240
      end
    end
  end
  inherited QueryPadrao: TFDQuery
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
      '  CADASTRO'
      'FROM VENDA'
      'ORDER BY ID_VENDA;')
    Left = 368
    Top = 568
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
    object QueryPadraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
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
  end
  inherited DSPadrao: TDataSource
    Left = 440
    Top = 568
  end
  inherited QueryPadraoItem: TFDQuery
    Left = 544
    Top = 568
  end
  inherited DSPadraoItem: TDataSource
    Left = 640
    Top = 568
  end
  object QueryCliente: TFDQuery
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
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT '
      '  ID_FORMA_PGTO,'
      '  DESCRICAO'
      'FROM FORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO;')
    Left = 932
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
end
