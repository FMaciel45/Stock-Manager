object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Login do Usu'#225'rio'
  ClientHeight = 325
  ClientWidth = 670
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 40
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
  object Label2: TLabel
    Left = 40
    Top = 164
    Width = 26
    Height = 17
    Caption = 'Tipo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 100
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
  object Image1: TImage
    Left = 400
    Top = 54
    Width = 210
    Height = 210
    Stretch = True
  end
  object EDNome: TEdit
    Left = 40
    Top = 54
    Width = 300
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object EDSenha: TEdit
    Left = 40
    Top = 118
    Width = 300
    Height = 23
    CharCase = ecUpperCase
    PasswordChar = '*'
    TabOrder = 1
  end
  object CBTipo: TComboBox
    Left = 40
    Top = 182
    Width = 300
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 2
    Items.Strings = (
      'ADMINISTRADOR'
      'APOIO'
      '')
  end
  object btLogin: TBitBtn
    Left = 40
    Top = 229
    Width = 90
    Height = 35
    Caption = '&Login'
    TabOrder = 3
    OnClick = btLoginClick
  end
  object btCancelar: TBitBtn
    Left = 147
    Top = 229
    Width = 90
    Height = 35
    Caption = '&Cancelar'
    TabOrder = 4
    OnClick = btCancelarClick
  end
  object SBContagem: TStatusBar
    Left = 0
    Top = 300
    Width = 670
    Height = 25
    Panels = <
      item
        Width = 50
      end>
  end
  object btTrocarSenha: TBitBtn
    Left = 250
    Top = 229
    Width = 90
    Height = 35
    Caption = '&Trocar Senha'
    TabOrder = 6
    OnClick = btTrocarSenhaClick
  end
end
