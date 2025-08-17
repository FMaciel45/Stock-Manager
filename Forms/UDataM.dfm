object DM: TDM
  Height = 328
  Width = 640
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=D:\Backups_e_BDs\BD_StockManager\Banco\ESTOQUE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 40
  end
  object Transacao: TFDTransaction
    Connection = Conexao
    Left = 168
    Top = 40
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 288
    Top = 40
  end
  object QueryLogin: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT '
      '  ID_USUARIO,'
      '  NOME,'
      '  SENHA,'
      '  TIPO'
      'FROM USUARIO'
      'ORDER BY ID_USUARIO;')
    Left = 48
    Top = 160
    object QueryLoginID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryLoginNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QueryLoginSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object QueryLoginTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
  end
  object DSLogin: TDataSource
    DataSet = QueryLogin
    Left = 48
    Top = 232
  end
end
