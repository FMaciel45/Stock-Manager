unit UTrocaSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmTrocaSenha = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    EDNome: TEdit;
    EDSenha: TEdit;
    btCancelar: TBitBtn;
    btTrocarSenha: TBitBtn;
    Label2: TLabel;
    EDNovaSenha: TEdit;
    Label4: TLabel;
    EDConfirmarSenha: TEdit;
    Image1: TImage;
    procedure btCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btTrocarSenhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTrocaSenha: TFrmTrocaSenha;

implementation

{$R *.dfm}

uses ULogin, UDataM;

procedure TFrmTrocaSenha.btTrocarSenhaClick(Sender: TObject);
begin
  if EDNome.Text = '' then
    begin
      MessageDlg('"Nome" precisa ser preenchido!', mtInformation, [mbOk], 0);
      EDNome.SetFocus;

      Abort;
    end

  else
    if EDSenha.Text = '' then
      begin
        MessageDlg('"Senha" precisa ser preenchido!', mtInformation, [mbOk], 0);
        EDSenha.SetFocus;

        Abort;
      end

  else
    if EDNovaSenha.Text = '' then
      begin
        MessageDlg('"Nova Senha" precisa ser preenchida!', mtInformation, [mbOk], 0);
        EDNovaSenha.SetFocus;

        Abort;
      end

  else
    if EDConfirmarSenha.Text = '' then
      begin
        MessageDlg('"Confirmar Senha" precisa ser preenchido!', mtInformation, [mbOk], 0);
        EDConfirmarSenha.SetFocus;

        Abort;
      end;

  if EDConfirmarSenha.Text <> EDNovaSenha.Text then
    begin
      MessageDlg('As senhas não coincidem', mtInformation, [mbOk], 0);
      EDConfirmarSenha.SetFocus;

      Abort;
    end

  else
    begin
      DM.QueryLogin.Close;

      DM.QueryLogin.SQL.Add('');
      DM.QueryLogin.SQL.Clear;
      DM.QueryLogin.Params.Clear;

      DM.QueryLogin.SQL.Add('SELECT * FROM USUARIO');
      DM.QueryLogin.SQL.Add('WHERE NOME =:PNOME AND SENHA =:PSENHA');
      DM.QueryLogin.ParamByName('PNOME').AsString:=EDNome.Text;
      DM.QueryLogin.ParamByName('PSENHA').AsString:=EDSenha.Text;

      DM.QueryLogin.Open;

      if DM.QueryLogin.RecordCount > 0 then
        begin
          DM.QueryLogin.Edit;
          DM.QueryLogin.FieldByName('SENHA').AsString:=EDConfirmarSenha.Text;
          DM.QueryLogin.Refresh;

          MessageDlg('Senha alterada com sucesso!', mtInformation, [mbOk], 0);

          FrmTrocaSenha.Close;

          FrmLogin.EDNome.SetFocus;
        end

      else
        begin
          MessageDlg('Nome, senha e/ou tipo incorretos!', mtInformation, [mbOk], 0);

          EDNome.SetFocus;
        end;
    end;
end;

procedure TFrmTrocaSenha.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmTrocaSenha.FormKeyPress(Sender: TObject; var Key: Char);
begin // Enter = TAB
  if Key=#13 then
    begin
      Key:=#0;
      Perform(wm_nextdlgCtl,0,0);
    end;
end;

end.
