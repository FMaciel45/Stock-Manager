inherited FrmPesqCliente: TFrmPesqCliente
  Caption = 'Pesquisa de Clientes'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited Label1: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lbNomePesq: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lbFimPesq: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lbInicioPesq: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited cbChavePesquisa: TComboBox
      StyleElements = [seFont, seClient, seBorder]
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'Cadastro'
        'Per'#237'odo'
        'Todos')
    end
    inherited edNome: TEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited mkInicio: TMaskEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited mkFim: TMaskEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited btTransferir: TBitBtn
      OnClick = btTransferirClick
    end
    inherited btPesquisa: TBitBtn
      OnClick = btPesquisaClick
    end
  end
  inherited DBGrid1: TDBGrid
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Caption = 'Id do Cliente'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome do Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Caption = 'Endere'#231'o do Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'N'#250'mero '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Title.Caption = 'Bairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Title.Caption = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Caption = 'Telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Title.Caption = 'Data de cadastro'
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited QueryPesqPadrao: TFDQuery
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
    Left = 496
    Top = 328
    object QueryPesqPadraoID_CLIENTE: TIntegerField
      DisplayWidth = 11
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryPesqPadraoNOME: TStringField
      DisplayWidth = 54
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QueryPesqPadraoENDERECO: TStringField
      DisplayWidth = 93
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object QueryPesqPadraoNUMERO: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object QueryPesqPadraoBAIRRO: TStringField
      DisplayWidth = 42
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object QueryPesqPadraoCIDADE: TStringField
      DisplayWidth = 56
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object QueryPesqPadraoUF: TStringField
      DisplayWidth = 8
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QueryPesqPadraoCEP: TStringField
      DisplayWidth = 15
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 16
    end
    object QueryPesqPadraoTELEFONE: TStringField
      DisplayWidth = 18
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 16
    end
    object QueryPesqPadraoCPF: TStringField
      DisplayWidth = 19
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      Size = 16
    end
    object QueryPesqPadraoCADASTRO: TDateField
      DisplayWidth = 27
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited dsPesqPadrao: TDataSource
    Left = 608
    Top = 328
  end
end
