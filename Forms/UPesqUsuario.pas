unit UPesqUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFormPesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  frxSmartMemo, frxClass, frxDBSet, frCoreClasses, frxExportBaseDialog,
  frxExportPDF, Vcl.DBCtrls;

type
  TFrmPesqUsuario = class(TFrmPesquisaPadrao)
    QueryPesqPadraoID_USUARIO: TIntegerField;
    QueryPesqPadraoNOME: TStringField;
    QueryPesqPadraoTIPO: TStringField;
    QueryPesqPadraoCADASTRO: TDateField;
    procedure btPesquisaClick(Sender: TObject);
    procedure btTransferirClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqUsuario: TFrmPesqUsuario;

implementation

{$R *.dfm}

procedure TFrmPesqUsuario.btImprimirClick(Sender: TObject);
var caminho: string;

begin
  caminho:=ExtractFilePath(Application.ExeName);

  if FrmPesqUsuario.RelPesqPadrao.LoadFromFile(caminho + 'RelUsuario.fr3') then
    begin
      RelPesqPadrao.Clear;
      RelPesqPadrao.LoadFromFile(extractfilepath(application.ExeName) + 'RelUsuario.fr3');
      RelPesqPadrao.PrepareReport(true);
      RelPesqPadrao.ShowPreparedReport;

    end

    else
      MessageDlg('Relatório não encontrado!', mtError, [mbOk], 0);

end;

procedure TFrmPesqUsuario.btPesquisaClick(Sender: TObject);
begin
  QueryPesqPadrao.Close;

  QueryPesqPadrao.SQL.Add('');
  QueryPesqPadrao.Params.Clear;
  QueryPesqPadrao.SQL.Clear;

  QueryPesqPadrao.SQL.Add('SELECT ID_USUARIO, NOME, TIPO, CADASTRO FROM USUARIO');

  case cbChavePesquisa.ItemIndex of
    0: begin // Pesquisa por ID
      QueryPesqPadrao.SQL.Add('WHERE ID_USUARIO=:PID_USUARIO');
      QueryPesqPadrao.ParamByName('PID_USUARIO').AsString:=edNome.Text;
    end;

    1: begin // Pesquisa por Nome
      QueryPesqPadrao.SQL.Add('WHERE NOME LIKE:PNOME');
      QueryPesqPadrao.ParamByName('PNOME').AsString:= '%' + edNome.Text + '%';
    end;

    2: begin // Pesquisa por data de cadastro
      QueryPesqPadrao.SQL.Add('WHERE CADASTRO=:PCADASTRO');
      QueryPesqPadrao.ParamByName('PCADASTRO').AsDate:=StrToDate(mkInicio.Text);
    end;

    3: begin // Pesquisa por período de tempo
      QueryPesqPadrao.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM');
      QueryPesqPadrao.ParamByName('PINICIO').AsDate:=StrToDate(mkInicio.Text);
      QueryPesqPadrao.ParamByName('PFIM').AsDate:=StrToDate(mkFim.Text);
    end;

    4: begin
      QueryPesqPadrao.SQL.Add('ORDER BY ID_USUARIO');
    end;

  end;

  QueryPesqPadrao.Open; // Mostrar o resultado da consulta

  lbResultado.Caption:='Total de registros: ' +
  IntToStr(QueryPesqPadrao.RecordCount); // Mostra quantos resultados foram encontrados

  if QueryPesqPadrao.isEmpty then
    begin
      MessageDlg('Registro não encontrado', mtInformation, [mbOk], 0);
    end

  else
    abort;

end;

procedure TFrmPesqUsuario.btTransferirClick(Sender: TObject);
begin
  if QueryPesqPadrao.RecordCount > 0 then
    begin
      codigo:=QueryPesqPadraoID_USUARIO.AsInteger;
    end

  else
    abort;
end;

end.
