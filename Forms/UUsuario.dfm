inherited FrmUsuario: TFrmUsuario
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 439
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 478
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 160
    Top = 128
    Width = 65
    Height = 15
    Caption = 'ID_USUARIO'
    FocusControl = DBId
  end
  object Label2: TLabel [1]
    Left = 160
    Top = 184
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = DBNome
  end
  object Label3: TLabel [2]
    Left = 160
    Top = 240
    Width = 38
    Height = 15
    Caption = 'SENHA'
    FocusControl = DBSenha
  end
  object Label4: TLabel [3]
    Left = 429
    Top = 240
    Width = 26
    Height = 15
    Caption = 'TIPO'
  end
  object Label5: TLabel [4]
    Left = 704
    Top = 240
    Width = 61
    Height = 15
    Caption = 'CADASTRO'
    FocusControl = DBCadastro
  end
  inherited Panel1: TPanel
    Height = 75
    TabOrder = 5
    StyleElements = [seFont, seClient, seBorder]
    ExplicitHeight = 75
    inherited btNovo: TBitBtn
      Top = 19
      ExplicitTop = 19
    end
    inherited btEditar: TBitBtn
      Top = 19
      ExplicitTop = 19
    end
    inherited btDeletar: TBitBtn
      Top = 19
      ExplicitTop = 19
    end
    inherited btGravar: TBitBtn
      Top = 19
      ExplicitTop = 19
    end
    inherited btCancelar: TBitBtn
      Top = 19
      ExplicitTop = 19
    end
    inherited btAtualizar: TBitBtn
      Top = 19
      ExplicitTop = 19
    end
    inherited btPesquisar: TBitBtn
      Top = 19
      ExplicitTop = 19
    end
    inherited DBNavigator1: TDBNavigator
      Top = 21
      Hints.Strings = ()
      ExplicitTop = 21
    end
    inherited btSair: TBitBtn
      Top = 19
      ExplicitTop = 19
    end
  end
  inherited Panel2: TPanel
    Top = 389
    Height = 50
    TabOrder = 6
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 374
    ExplicitHeight = 50
  end
  object DBId: TDBEdit [7]
    Left = 160
    Top = 144
    Width = 75
    Height = 23
    DataField = 'ID_USUARIO'
    DataSource = DSPadrao
    TabOrder = 0
  end
  object DBNome: TDBEdit [8]
    Left = 160
    Top = 200
    Width = 745
    Height = 23
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = DSPadrao
    TabOrder = 1
  end
  object DBSenha: TDBEdit [9]
    Left = 160
    Top = 256
    Width = 200
    Height = 23
    DataField = 'SENHA'
    DataSource = DSPadrao
    PasswordChar = '*'
    TabOrder = 2
  end
  object DBCadastro: TDBEdit [10]
    Left = 704
    Top = 256
    Width = 200
    Height = 23
    DataField = 'CADASTRO'
    DataSource = DSPadrao
    Enabled = False
    TabOrder = 4
  end
  object DBTipo: TDBComboBox [11]
    Left = 429
    Top = 256
    Width = 200
    Height = 23
    DataField = 'TIPO'
    DataSource = DSPadrao
    Items.Strings = (
      'ADMINISTRADOR'
      'APOIO')
    TabOrder = 3
  end
  inherited QueryPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_USUARIO'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      'SELECT  '
      '  ID_USUARIO,'
      '  NOME, '
      '  SENHA,'
      '  TIPO,'
      '  CADASTRO'
      'FROM USUARIO'
      'ORDER BY ID_USUARIO')
    Left = 928
    Top = 88
    object QueryPadraoID_USUARIO: TFDAutoIncField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = False
      IdentityInsert = True
    end
    object QueryPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QueryPadraoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object QueryPadraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object QueryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited DSPadrao: TDataSource
    Left = 1008
    Top = 88
  end
end
