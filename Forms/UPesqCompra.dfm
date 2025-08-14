inherited FrmPesqCompra: TFrmPesqCompra
  Caption = 'Pesquisa de Compras'
  Color = clWindow
  Ctl3D = False
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
        'C'#243'digo da compra'
        'Usu'#225'rio'
        'C'#243'digo do fornecedor'
        'C'#243'digo da forma de pgto.'
        'Cadastro'
        'Per'#237'odo'
        'Todos')
    end
    inherited edNome: TEdit
      Height = 21
      StyleElements = [seFont, seClient, seBorder]
      ExplicitHeight = 21
    end
    inherited mkInicio: TMaskEdit
      Height = 21
      StyleElements = [seFont, seClient, seBorder]
      ExplicitHeight = 21
    end
    inherited mkFim: TMaskEdit
      Height = 21
      StyleElements = [seFont, seClient, seBorder]
      ExplicitHeight = 21
    end
    inherited btTransferir: TBitBtn
      OnClick = btTransferirClick
    end
    inherited btPesquisa: TBitBtn
      OnClick = btPesquisaClick
    end
  end
  inherited Panel2: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited QueryPesqPadrao: TFDQuery
    SQL.Strings = (
      'SELECT'
      '  A.ID_COMPRA,'
      '  A.ID_FORNECEDOR,'
      '  B.NOME,'
      '  A.ID_FORMA_PGTO,'
      '  C.DESCRICAO,'
      '  A.USUARIO,'
      '  A.CADASTRO,'
      '  A.VALOR'
      'FROM COMPRA A, FORNECEDOR B, FORMA_PGTO C'
      'WHERE A.ID_FORNECEDOR=B.ID_FORNECEDOR'
      'AND C.ID_FORMA_PGTO=A.ID_FORMA_PGTO'
      'ORDER BY A.ID_COMPRA;'
      '  '
      '  ')
    object QueryPesqPadraoID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryPesqPadraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object QueryPesqPadraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QueryPesqPadraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object QueryPesqPadraoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QueryPesqPadraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object QueryPesqPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object QueryPesqPadraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
  inherited RelPesqPadrao: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
    Watermarks = <>
  end
  inherited DataSetPesqPadrao: TfrxDBDataset
    Left = 472
    Top = 208
  end
end
