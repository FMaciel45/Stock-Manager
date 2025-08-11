inherited FrmFormasPgto: TFrmFormasPgto
  Caption = 'Cadastro de Formas de Pagamento'
  ClientHeight = 341
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 380
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 168
    Top = 104
    Width = 143
    Height = 15
    Caption = 'Id da Forma de Pagamento'
    FocusControl = DBIdFormaPgto
  end
  object Label2: TLabel [1]
    Left = 168
    Top = 160
    Width = 51
    Height = 15
    Caption = 'Descri'#231#227'o'
    FocusControl = DBDescricaoFormaPgto
  end
  object Label3: TLabel [2]
    Left = 168
    Top = 216
    Width = 47
    Height = 15
    Caption = 'Cadastro'
    FocusControl = DBCadastroFormaPgto
  end
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel2: TPanel
    Top = 301
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 301
  end
  object DBIdFormaPgto: TDBEdit [5]
    Left = 168
    Top = 120
    Width = 154
    Height = 23
    DataField = 'ID_FORMA_PGTO'
    DataSource = DSPadrao
    TabOrder = 2
  end
  object DBDescricaoFormaPgto: TDBEdit [6]
    Left = 168
    Top = 176
    Width = 700
    Height = 23
    DataField = 'DESCRICAO'
    DataSource = DSPadrao
    TabOrder = 3
  end
  object DBCadastroFormaPgto: TDBEdit [7]
    Left = 168
    Top = 232
    Width = 154
    Height = 23
    DataField = 'CADASTRO'
    DataSource = DSPadrao
    TabOrder = 4
  end
  inherited QueryPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORMA_PGTO'
    UpdateOptions.AutoIncFields = 'ID_FORMA_PGTO'
    SQL.Strings = (
      'SELECT'
      '  ID_FORMA_PGTO,'
      '  DESCRICAO,'
      '  CADASTRO'
      'FROM FORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO;')
    Left = 400
    Top = 88
    object QueryPadraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object QueryPadraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object QueryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited DSPadrao: TDataSource
    Left = 488
    Top = 88
  end
end
