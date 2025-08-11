inherited FrmPesqUsuario: TFrmPesqUsuario
  Caption = 'Pesquisa de Usu'#225'rios'
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
      Width = 108
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 108
    end
    inherited mkFim: TMaskEdit
      Width = 112
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 112
    end
    inherited btPesquisa: TBitBtn
      OnClick = btPesquisaClick
    end
  end
  inherited DBGrid1: TDBGrid
    DataSource = dsPesqPadrao
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_USUARIO'
        Title.Caption = 'Id do Usu'#225'rio'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome do usu'#225'rio'
        Width = 616
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Title.Caption = 'Tipo de usu'#225'rio'
        Width = 249
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Title.Caption = 'Data de cadastro'
        Width = 210
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited QueryPesqPadrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      '  ID_USUARIO,'
      '  NOME,'
      '  TIPO, '
      '  CADASTRO'
      'FROM USUARIO'
      'ORDER BY ID_USUARIO;')
    Left = 744
    Top = 168
    object QueryPesqPadraoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryPesqPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QueryPesqPadraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object QueryPesqPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited dsPesqPadrao: TDataSource
    Left = 848
    Top = 168
  end
end
