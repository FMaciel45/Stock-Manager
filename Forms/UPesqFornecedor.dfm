inherited FrmPesqFornecedor: TFrmPesqFornecedor
  Caption = 'Pesquisa de Fornecedores'
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
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Title.Caption = 'Id do Fornecedor'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 661
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Caption = 'Endere'#231'o'
        Width = 781
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'N'#250'mero'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Title.Caption = 'Bairro'
        Width = 395
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Title.Caption = 'Cidade'
        Width = 550
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Width = 153
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Caption = 'Telefone'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Title.Caption = 'E-mail'
        Width = 584
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Title.Caption = 'Cadastro'
        Width = 136
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited QueryPesqPadrao: TFDQuery
    SQL.Strings = (
      'SELECT '
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
      'ORDER BY ID_FORNECEDOR;'
      '')
    Left = 384
    Top = 296
    object QueryPesqPadraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryPesqPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QueryPesqPadraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object QueryPesqPadraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object QueryPesqPadraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object QueryPesqPadraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object QueryPesqPadraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QueryPesqPadraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 16
    end
    object QueryPesqPadraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 16
    end
    object QueryPesqPadraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object QueryPesqPadraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object QueryPesqPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited dsPesqPadrao: TDataSource
    Left = 512
    Top = 296
  end
end
