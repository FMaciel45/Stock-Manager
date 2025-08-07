unit UPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmPadrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btNovo: TBitBtn;
    btEditar: TBitBtn;
    btDeletar: TBitBtn;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    btAtualizar: TBitBtn;
    DBNavigator1: TDBNavigator;
    btPesquisar: TBitBtn;
    QueryPadrao: TFDQuery;
    DSPadrao: TDataSource;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btNovoClick(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);

    procedure TratarBotoes();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPadrao: TFrmPadrao;

implementation

{$R *.dfm}

uses UDataM;

procedure TFrmPadrao.btAtualizarClick(Sender: TObject); // Refresh nos registros
begin
  TratarBotoes;

  QueryPadrao.Refresh;
  messageDlg('Formulário atualizado com sucesso!', mtInformation, [mbOk], 0);
end;

procedure TFrmPadrao.btCancelarClick(Sender: TObject); // Cancela a ação atual
begin
  TratarBotoes;

  QueryPadrao.Cancel;
  messageDlg('Ação cancelada pelo usuário.', mtInformation, [mbOk], 0);
end;

procedure TFrmPadrao.btDeletarClick(Sender: TObject); // Deleta o registro selecionado
begin

  TratarBotoes;

  if messageDlg('Tem certeza que deseja deletar esse registro?', mtConfirmation, [mbOk,mbNo], 0) = mrOk then
    begin
      QueryPadrao.Delete;
      messageDlg('Registro deletado com sucesso!', mtInformation, [mbOk], 0);

      TratarBotoes;
    end

  else
    begin
      TratarBotoes;
      abort;
    end;

end;

procedure TFrmPadrao.btEditarClick(Sender: TObject); // Edita o registro selecionado
begin

  TratarBotoes;

  if messageDlg('Tem certeza que deseja editar esse registro?', mtConfirmation, [mbOk,mbNo], 0) = mrOk then
    begin
      QueryPadrao.Edit;
    end

  else
    begin
      TratarBotoes;
      abort;
    end;

end;

procedure TFrmPadrao.btGravarClick(Sender: TObject); // Persiste no BD o registro atual
begin
  TratarBotoes;

  QueryPadrao.Post;
  messageDlg('Registro salvo com sucesso!', mtInformation, [mbOk], 0);
end;

procedure TFrmPadrao.btNovoClick(Sender: TObject); // Cria o formulário para um novo registro
begin
  TratarBotoes;

  QueryPadrao.Append;
end;

procedure TFrmPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin

  // Faz com que Enter tenha a mesma função do TAB
  if key = #13  then
    begin
      Key:= #0;
      Perform(wm_nextDlgCtl,0,0);
    end;

end;

procedure TFrmPadrao.TratarBotoes;
begin

  btNovo.Enabled:= not btNovo.Enabled;
  btDeletar.Enabled:= not btDeletar.Enabled;
  btEditar.Enabled:= not btEditar.Enabled;
  btGravar.Enabled:= not btGravar.Enabled;
  btAtualizar.Enabled:= not btAtualizar.Enabled;

end;

end.
