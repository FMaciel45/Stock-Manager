inherited FrmEmpresa: TFrmEmpresa
  Caption = 'Cadastro de Empresas'
  ClientHeight = 604
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 643
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 168
    Top = 96
    Width = 75
    Height = 15
    Caption = 'ID da Empresa'
    FocusControl = DBIdEmpresa
  end
  object Label2: TLabel [1]
    Left = 169
    Top = 152
    Width = 65
    Height = 15
    Caption = 'Raz'#227'o Social'
    FocusControl = DBRazaoSocial
  end
  object Label3: TLabel [2]
    Left = 169
    Top = 208
    Width = 79
    Height = 15
    Caption = 'Nome Fantasia'
    FocusControl = DBFantasia
  end
  object Label4: TLabel [3]
    Left = 169
    Top = 264
    Width = 49
    Height = 15
    Caption = 'Endere'#231'o'
    FocusControl = DBEndereçoEmpresa
  end
  object Label5: TLabel [4]
    Left = 721
    Top = 264
    Width = 44
    Height = 15
    Caption = 'N'#250'mero'
    FocusControl = DBNumEnderecoEmpresa
  end
  object Label6: TLabel [5]
    Left = 169
    Top = 376
    Width = 31
    Height = 15
    Caption = 'Bairro'
    FocusControl = DBBairroEmpresa
  end
  object Label7: TLabel [6]
    Left = 169
    Top = 315
    Width = 37
    Height = 15
    Caption = 'Cidade'
    FocusControl = DBCidadeEmpresa
  end
  object Label8: TLabel [7]
    Left = 721
    Top = 315
    Width = 14
    Height = 15
    Caption = 'UF'
    FocusControl = DBUFEmpresa
  end
  object Label9: TLabel [8]
    Left = 169
    Top = 429
    Width = 21
    Height = 15
    Caption = 'CEP'
    FocusControl = DBCEPEmresa
  end
  object Label10: TLabel [9]
    Left = 392
    Top = 427
    Width = 45
    Height = 15
    Caption = 'Telefone'
    FocusControl = DBTelefoneEmpresa
  end
  object Label11: TLabel [10]
    Left = 578
    Top = 429
    Width = 27
    Height = 15
    Caption = 'CNPJ'
    FocusControl = DBCNPJEmpresa
  end
  object Label12: TLabel [11]
    Left = 170
    Top = 488
    Width = 34
    Height = 15
    Caption = 'E-mail'
    FocusControl = DBEmailEmpresa
  end
  object Label13: TLabel [12]
    Left = 833
    Top = 96
    Width = 27
    Height = 15
    Caption = 'Logo'
    FocusControl = DBImage1
  end
  object Label14: TLabel [13]
    Left = 629
    Top = 488
    Width = 47
    Height = 15
    Caption = 'Cadastro'
    FocusControl = DBCadastro
  end
  inherited Panel1: TPanel
    TabOrder = 14
    StyleElements = [seFont, seClient, seBorder]
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel2: TPanel
    Top = 564
    TabOrder = 15
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 564
  end
  object DBIdEmpresa: TDBEdit [16]
    Left = 168
    Top = 112
    Width = 154
    Height = 23
    DataField = 'ID_EMPRESA'
    DataSource = DSPadrao
    TabOrder = 0
  end
  object DBRazaoSocial: TDBEdit [17]
    Left = 169
    Top = 173
    Width = 610
    Height = 23
    CharCase = ecUpperCase
    DataField = 'RAZAO_SOCIAL'
    DataSource = DSPadrao
    TabOrder = 1
  end
  object DBFantasia: TDBEdit [18]
    Left = 169
    Top = 224
    Width = 610
    Height = 23
    CharCase = ecUpperCase
    DataField = 'N_FANTASIA'
    DataSource = DSPadrao
    TabOrder = 2
  end
  object DBEndereçoEmpresa: TDBEdit [19]
    Left = 169
    Top = 280
    Width = 530
    Height = 23
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = DSPadrao
    TabOrder = 3
  end
  object DBNumEnderecoEmpresa: TDBEdit [20]
    Left = 721
    Top = 280
    Width = 60
    Height = 23
    DataField = 'NUMERO'
    DataSource = DSPadrao
    TabOrder = 4
  end
  object DBBairroEmpresa: TDBEdit [21]
    Left = 169
    Top = 392
    Width = 612
    Height = 23
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = DSPadrao
    TabOrder = 7
  end
  object DBCidadeEmpresa: TDBEdit [22]
    Left = 169
    Top = 331
    Width = 530
    Height = 23
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = DSPadrao
    TabOrder = 5
  end
  object DBUFEmpresa: TDBEdit [23]
    Left = 721
    Top = 331
    Width = 60
    Height = 23
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = DSPadrao
    TabOrder = 6
  end
  object DBCEPEmresa: TDBEdit [24]
    Left = 169
    Top = 443
    Width = 200
    Height = 23
    DataField = 'CEP'
    DataSource = DSPadrao
    TabOrder = 8
  end
  object DBTelefoneEmpresa: TDBEdit [25]
    Left = 392
    Top = 443
    Width = 170
    Height = 23
    DataField = 'TELEFONE'
    DataSource = DSPadrao
    TabOrder = 9
  end
  object DBCNPJEmpresa: TDBEdit [26]
    Left = 578
    Top = 443
    Width = 205
    Height = 23
    DataField = 'CNPJ'
    DataSource = DSPadrao
    TabOrder = 10
  end
  object DBEmailEmpresa: TDBEdit [27]
    Left = 170
    Top = 504
    Width = 440
    Height = 23
    CharCase = ecUpperCase
    DataField = 'EMAIL'
    DataSource = DSPadrao
    TabOrder = 11
  end
  object DBImage1: TDBImage [28]
    Left = 833
    Top = 112
    Width = 105
    Height = 105
    DataField = 'LOGO'
    DataSource = DSPadrao
    Stretch = True
    TabOrder = 13
  end
  object DBCadastro: TDBEdit [29]
    Left = 629
    Top = 504
    Width = 154
    Height = 23
    DataField = 'CADASTRO'
    DataSource = DSPadrao
    Enabled = False
    TabOrder = 12
  end
  object btFoto: TBitBtn [30]
    Left = 833
    Top = 240
    Width = 75
    Height = 25
    Caption = '&Upload'
    TabOrder = 16
    OnClick = btFotoClick
  end
  object btClear: TBitBtn [31]
    Left = 833
    Top = 271
    Width = 75
    Height = 25
    Caption = '&Limpar'
    TabOrder = 17
    OnClick = btClearClick
  end
  inherited QueryPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_EMPRESA'
    UpdateOptions.AutoIncFields = 'ID_EMPRESA'
    SQL.Strings = (
      'SELECT '
      '  ID_EMPRESA,'
      '  RAZAO_SOCIAL,'
      '  N_FANTASIA,'
      '  ENDERECO,'
      '  NUMERO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  TELEFONE,'
      '  CNPJ,'
      '  EMAIL,'
      '  LOGO,'
      '  CADASTRO'
      'FROM EMPRESA;')
    Left = 488
    Top = 88
    object QueryPadraoID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object QueryPadraoRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 100
    end
    object QueryPadraoN_FANTASIA: TStringField
      FieldName = 'N_FANTASIA'
      Origin = 'N_FANTASIA'
      Required = True
      Size = 100
    end
    object QueryPadraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object QueryPadraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object QueryPadraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object QueryPadraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object QueryPadraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QueryPadraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      EditMask = '00000\-999;0;_'
      Size = 14
    end
    object QueryPadraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 15
    end
    object QueryPadraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00.000.000/0000-00;0;_'
    end
    object QueryPadraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object QueryPadraoLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object QueryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited DSPadrao: TDataSource
    Left = 584
    Top = 88
  end
  object OpenDialog1: TOpenDialog
    Left = 672
    Top = 88
  end
end
