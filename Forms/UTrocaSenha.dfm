object FrmTrocaSenha: TFrmTrocaSenha
  Left = 0
  Top = 0
  Hint = 'Cancelar a troca da senha'
  Caption = 'Trocar Senha'
  ClientHeight = 351
  ClientWidth = 753
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  TextHeight = 15
  object Label1: TLabel
    Left = 64
    Top = 36
    Width = 37
    Height = 17
    Caption = 'Nome'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 64
    Top = 89
    Width = 37
    Height = 17
    Caption = 'Senha'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 64
    Top = 145
    Width = 73
    Height = 17
    Caption = 'Nova Senha'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 64
    Top = 201
    Width = 101
    Height = 17
    Caption = 'Confirmar Senha'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Image1: TImage
    Left = 480
    Top = 54
    Width = 185
    Height = 185
    Stretch = True
  end
  object EDNome: TEdit
    Left = 64
    Top = 54
    Width = 300
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object EDSenha: TEdit
    Left = 64
    Top = 107
    Width = 300
    Height = 23
    CharCase = ecUpperCase
    PasswordChar = '*'
    TabOrder = 1
  end
  object btCancelar: TBitBtn
    Left = 168
    Top = 271
    Width = 90
    Height = 35
    Hint = 'Cancelar a troca da senha'
    Caption = '&Cancelar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = btCancelarClick
  end
  object btTrocarSenha: TBitBtn
    Left = 64
    Top = 271
    Width = 90
    Height = 35
    Hint = 'Confirmar a troca da senha'
    Caption = '&Trocar Senha'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = btTrocarSenhaClick
  end
  object EDNovaSenha: TEdit
    Left = 64
    Top = 163
    Width = 300
    Height = 23
    CharCase = ecUpperCase
    PasswordChar = '*'
    TabOrder = 2
  end
  object EDConfirmarSenha: TEdit
    Left = 64
    Top = 219
    Width = 300
    Height = 23
    CharCase = ecUpperCase
    PasswordChar = '*'
    TabOrder = 3
  end
end
