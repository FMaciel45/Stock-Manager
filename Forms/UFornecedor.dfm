inherited FrmFornecedor: TFrmFornecedor
  Caption = 'Cadastro de Fornecedores'
  ClientHeight = 606
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 645
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 174
    Top = 91
    Width = 90
    Height = 15
    Caption = 'Id do Fornecedor'
    FocusControl = DBIdFornecedor
  end
  object Label2: TLabel [1]
    Left = 174
    Top = 147
    Width = 33
    Height = 15
    Caption = 'Nome'
    FocusControl = DBNomeFornecedor
  end
  object Label3: TLabel [2]
    Left = 174
    Top = 203
    Width = 49
    Height = 15
    Caption = 'Endere'#231'o'
    FocusControl = DBEnderecoFornecedor
  end
  object Label4: TLabel [3]
    Left = 790
    Top = 203
    Width = 44
    Height = 15
    Caption = 'N'#250'mero'
    FocusControl = DBNumeroFornecedor
  end
  object Label5: TLabel [4]
    Left = 174
    Top = 259
    Width = 31
    Height = 15
    Caption = 'Bairro'
    FocusControl = DBBairroFornecedor
  end
  object Label6: TLabel [5]
    Left = 174
    Top = 315
    Width = 37
    Height = 15
    Caption = 'Cidade'
    FocusControl = DBCidadeFornecedor
  end
  object Label7: TLabel [6]
    Left = 824
    Top = 315
    Width = 14
    Height = 15
    Caption = 'UF'
    FocusControl = DBUFFornecedor
  end
  object Label8: TLabel [7]
    Left = 174
    Top = 371
    Width = 21
    Height = 15
    Caption = 'CEP'
    FocusControl = DBCEPFornecedor
  end
  object Label9: TLabel [8]
    Left = 392
    Top = 371
    Width = 45
    Height = 15
    Caption = 'Telefone'
    FocusControl = DBTelefoneFornecedor
  end
  object Label10: TLabel [9]
    Left = 612
    Top = 371
    Width = 27
    Height = 15
    Caption = 'CNPJ'
    FocusControl = DBCNPJFornecedor
  end
  object Label11: TLabel [10]
    Left = 176
    Top = 427
    Width = 34
    Height = 15
    Caption = 'E-mail'
    FocusControl = DBEmailFornecedor
  end
  object Label12: TLabel [11]
    Left = 176
    Top = 483
    Width = 47
    Height = 15
    Caption = 'Cadastro'
    FocusControl = DBCadastroFornecedor
  end
  inherited Panel1: TPanel
    TabOrder = 12
    StyleElements = [seFont, seClient, seBorder]
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel2: TPanel
    Top = 566
    TabOrder = 13
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 566
  end
  object DBIdFornecedor: TDBEdit [14]
    Left = 174
    Top = 112
    Width = 154
    Height = 23
    DataField = 'ID_FORNECEDOR'
    DataSource = DSPadrao
    TabOrder = 0
  end
  object DBNomeFornecedor: TDBEdit [15]
    Left = 174
    Top = 163
    Width = 700
    Height = 23
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = DSPadrao
    TabOrder = 1
  end
  object DBEnderecoFornecedor: TDBEdit [16]
    Left = 174
    Top = 219
    Width = 600
    Height = 23
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = DSPadrao
    TabOrder = 2
  end
  object DBNumeroFornecedor: TDBEdit [17]
    Left = 790
    Top = 219
    Width = 84
    Height = 23
    DataField = 'NUMERO'
    DataSource = DSPadrao
    TabOrder = 3
  end
  object DBBairroFornecedor: TDBEdit [18]
    Left = 174
    Top = 275
    Width = 700
    Height = 23
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = DSPadrao
    TabOrder = 4
  end
  object DBCidadeFornecedor: TDBEdit [19]
    Left = 174
    Top = 331
    Width = 633
    Height = 23
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = DSPadrao
    TabOrder = 5
  end
  object DBUFFornecedor: TDBEdit [20]
    Left = 824
    Top = 331
    Width = 50
    Height = 23
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = DSPadrao
    TabOrder = 6
  end
  object DBCEPFornecedor: TDBEdit [21]
    Left = 174
    Top = 387
    Width = 200
    Height = 23
    DataField = 'CEP'
    DataSource = DSPadrao
    TabOrder = 7
  end
  object DBTelefoneFornecedor: TDBEdit [22]
    Left = 392
    Top = 387
    Width = 200
    Height = 23
    DataField = 'TELEFONE'
    DataSource = DSPadrao
    TabOrder = 8
  end
  object DBCNPJFornecedor: TDBEdit [23]
    Left = 612
    Top = 387
    Width = 262
    Height = 23
    DataField = 'CNPJ'
    DataSource = DSPadrao
    TabOrder = 9
  end
  object DBEmailFornecedor: TDBEdit [24]
    Left = 176
    Top = 443
    Width = 698
    Height = 23
    CharCase = ecUpperCase
    DataField = 'EMAIL'
    DataSource = DSPadrao
    TabOrder = 10
  end
  object DBCadastroFornecedor: TDBEdit [25]
    Left = 176
    Top = 499
    Width = 180
    Height = 23
    DataField = 'CADASTRO'
    DataSource = DSPadrao
    TabOrder = 11
  end
  inherited QueryPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORNECEDOR'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    SQL.Strings = (
      'SELECT'
      '  ID_FORNECEDOR,'
      '  NOME,'
      '  ENDERECO,'
      '  NUMERO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  TELEFONE,'
      '  CNPJ,'
      '  EMAIL,'
      '  CADASTRO'
      'FROM FORNECEDOR'
      'ORDER BY ID_FORNECEDOR;')
    Left = 384
    Top = 80
    object QueryPadraoID_FORNECEDOR: TFDAutoIncField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object QueryPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
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
      EditMask = '00\.000\-999;1;_'
      Size = 16
    end
    object QueryPadraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 16
    end
    object QueryPadraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00\.000\.000\/0000\-00;1;_'
    end
    object QueryPadraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
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
    Left = 472
    Top = 80
  end
end
