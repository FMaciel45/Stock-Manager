unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmLogin = class(TForm)
    EDNome: TEdit;
    EDSenha: TEdit;
    CBTipo: TComboBox;
    btLogin: TBitBtn;
    btCancelar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses UDataM, UPrincipal;

procedure TFrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin // Enter = TAB
  if Key=#13 then
    begin
      Key:=#0;
      Perform(wm_nextdlgCtl,0,0);
    end;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
  EDNome.SetFocus;
end;

procedure TFrmLogin.btLoginClick(Sender: TObject);
begin
  DM.QueryLogin.Close;

  DM.QueryLogin.SQL.Add('');
  DM.QueryLogin.SQL.Clear;
  DM.QueryLogin.Params.Clear;

  DM.QueryLogin.SQL.Add('SELECT * FROM USUARIO');
  DM.QueryLogin.SQL.Add('WHERE NOME =:PNOME AND SENHA =:PSENHA AND TIPO =:PTIPO');
  DM.QueryLogin.ParamByName('PNOME').AsString:=EDNome.Text;
  DM.QueryLogin.ParamByName('PSENHA').AsString:=EDSenha.Text;
  DM.QueryLogin.ParamByName('PTIPO').AsString:=CBTipo.Text;

  DM.QueryLogin.Open;

  if DM.QueryLogin.RecordCount = 0 then
    begin
      MessageDlg('Nome, senha e/ou tipo incorretos!', mtInformation, [mbOk], 0);
      Abort;
    end

  else
    begin
      ShowMessage('Seja Bem-vindo(a), ' + EDNome.Text + '!');

      DM.usuario:=EDNome.Text;
      DM.tipoUsuario:=CBTipo.Text;

      FrmPrincipal:=TFrmPrincipal.Create(self);
      FrmPrincipal.ShowModal;

      FrmLogin.Hide;
    end;
end;

procedure TFrmLogin.btCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
