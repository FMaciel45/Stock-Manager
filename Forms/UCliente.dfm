inherited FrmCliente: TFrmCliente
  Caption = 'Cadastro de Clientes'
  ClientHeight = 548
  ClientWidth = 1095
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1111
  ExplicitHeight = 587
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 176
    Top = 91
    Width = 67
    Height = 15
    Caption = 'Id do Cliente'
    FocusControl = DBIdCliente
  end
  object Label2: TLabel [1]
    Left = 176
    Top = 147
    Width = 33
    Height = 15
    Caption = 'Nome'
    FocusControl = DBNomeCliente
  end
  object Label3: TLabel [2]
    Left = 176
    Top = 203
    Width = 49
    Height = 15
    Caption = 'Endere'#231'o'
    FocusControl = DBEndereçoCliente
  end
  object Label4: TLabel [3]
    Left = 792
    Top = 203
    Width = 44
    Height = 15
    Caption = 'N'#250'mero'
    FocusControl = DBNumeroCliente
  end
  object Label5: TLabel [4]
    Left = 176
    Top = 259
    Width = 31
    Height = 15
    Caption = 'Bairro'
    FocusControl = DBBairroCliente
  end
  object Label6: TLabel [5]
    Left = 176
    Top = 315
    Width = 37
    Height = 15
    Caption = 'Cidade'
    FocusControl = DBCidadeCliente
  end
  object Label7: TLabel [6]
    Left = 824
    Top = 315
    Width = 14
    Height = 15
    Caption = 'UF'
    FocusControl = DBUFCliente
  end
  object Label8: TLabel [7]
    Left = 176
    Top = 368
    Width = 21
    Height = 15
    Caption = 'CEP'
    FocusControl = DBCEPCliente
  end
  object Label9: TLabel [8]
    Left = 405
    Top = 368
    Width = 45
    Height = 15
    Caption = 'Telefone'
    FocusControl = DBTelefoneCliente
  end
  object Label10: TLabel [9]
    Left = 632
    Top = 368
    Width = 21
    Height = 15
    Caption = 'CPF'
    FocusControl = DBCPFCliente
  end
  object Label12: TLabel [10]
    Left = 176
    Top = 427
    Width = 47
    Height = 15
    Caption = 'Cadastro'
    FocusControl = DBCadastroCliente
  end
  inherited Panel1: TPanel
    Width = 1095
    StyleElements = [seFont, seClient, seBorder]
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel2: TPanel
    Top = 508
    Width = 1095
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 508
  end
  object DBIdCliente: TDBEdit [13]
    Left = 176
    Top = 107
    Width = 154
    Height = 23
    DataField = 'ID_CLIENTE'
    DataSource = DSPadrao
    TabOrder = 2
  end
  object DBNomeCliente: TDBEdit [14]
    Left = 176
    Top = 163
    Width = 700
    Height = 23
    DataField = 'NOME'
    DataSource = DSPadrao
    TabOrder = 3
  end
  object DBEndereçoCliente: TDBEdit [15]
    Left = 176
    Top = 219
    Width = 593
    Height = 23
    DataField = 'ENDERECO'
    DataSource = DSPadrao
    TabOrder = 4
  end
  object DBNumeroCliente: TDBEdit [16]
    Left = 792
    Top = 219
    Width = 84
    Height = 23
    DataField = 'NUMERO'
    DataSource = DSPadrao
    TabOrder = 5
  end
  object DBBairroCliente: TDBEdit [17]
    Left = 176
    Top = 275
    Width = 700
    Height = 23
    DataField = 'BAIRRO'
    DataSource = DSPadrao
    TabOrder = 6
  end
  object DBCidadeCliente: TDBEdit [18]
    Left = 176
    Top = 331
    Width = 625
    Height = 23
    DataField = 'CIDADE'
    DataSource = DSPadrao
    TabOrder = 7
  end
  object DBUFCliente: TDBEdit [19]
    Left = 824
    Top = 331
    Width = 52
    Height = 23
    DataField = 'UF'
    DataSource = DSPadrao
    TabOrder = 8
  end
  object DBCEPCliente: TDBEdit [20]
    Left = 176
    Top = 389
    Width = 209
    Height = 23
    DataField = 'CEP'
    DataSource = DSPadrao
    TabOrder = 9
  end
  object DBTelefoneCliente: TDBEdit [21]
    Left = 405
    Top = 389
    Width = 207
    Height = 23
    DataField = 'TELEFONE'
    DataSource = DSPadrao
    TabOrder = 10
  end
  object DBCPFCliente: TDBEdit [22]
    Left = 632
    Top = 389
    Width = 244
    Height = 23
    DataField = 'CPF'
    DataSource = DSPadrao
    TabOrder = 11
  end
  object DBCadastroCliente: TDBEdit [23]
    Left = 176
    Top = 443
    Width = 178
    Height = 23
    DataField = 'CADASTRO'
    DataSource = DSPadrao
    TabOrder = 12
  end
  inherited QueryPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_CLIENTE'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'SELECT '
      '  ID_CLIENTE,'
      '  NOME,'
      '  ENDERECO,'
      '  NUMERO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  TELEFONE,'
      '  CPF,'
      '  CADASTRO'
      'FROM CLIENTES'
      'ORDER BY ID_CLIENTE;'
      '')
    Left = 408
    Top = 88
    object QueryPadraoID_CLIENTE: TFDAutoIncField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
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
    object QueryPadraoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      EditMask = '000\.000\.000\-00;1;_'
      Size = 16
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
