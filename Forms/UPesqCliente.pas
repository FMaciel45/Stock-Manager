unit UPesqCliente;

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
  TFrmPesqCliente = class(TFrmPesquisaPadrao)
    QueryPesqPadraoID_CLIENTE: TIntegerField;
    QueryPesqPadraoNOME: TStringField;
    QueryPesqPadraoENDERECO: TStringField;
    QueryPesqPadraoNUMERO: TIntegerField;
    QueryPesqPadraoBAIRRO: TStringField;
    QueryPesqPadraoCIDADE: TStringField;
    QueryPesqPadraoUF: TStringField;
    QueryPesqPadraoCEP: TStringField;
    QueryPesqPadraoTELEFONE: TStringField;
    QueryPesqPadraoCPF: TStringField;
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
  FrmPesqCliente: TFrmPesqCliente;

implementation

{$R *.dfm}

procedure TFrmPesqCliente.btImprimirClick(Sender: TObject);
var caminho: string;

begin
  caminho:=ExtractFilePath(Application.ExeName);

  if FrmPesqCliente.RelPesqPadrao.LoadFromFile(caminho + 'RelCliente.fr3') then
    begin
      RelPesqPadrao.Clear;
      RelPesqPadrao.LoadFromFile(extractfilepath(application.ExeName) + 'RelCliente.fr3');
      RelPesqPadrao.PrepareReport(true);
      RelPesqPadrao.ShowPreparedReport;

    end

    else
      MessageDlg('Relatório não encontrado!', mtError, [mbOk], 0);

end;

procedure TFrmPesqCliente.btPesquisaClick(Sender: TObject);
begin
  QueryPesqPadrao.Close;

  QueryPesqPadrao.SQL.Add('');
  QueryPesqPadrao.Params.Clear;
  QueryPesqPadrao.SQL.Clear;

  QueryPesqPadrao.SQL.Add('SELECT ID_CLIENTE, '
  + 'NOME, '
  + 'ENDERECO, '
  + 'NUMERO, '
  + 'BAIRRO, '
  + 'CIDADE, '
  + 'UF, '
  + 'CEP, '
  + 'TELEFONE, '
  + 'CPF, '
  + 'CADASTRO '
  + 'FROM CLIENTES');

  case cbChavePesquisa.ItemIndex of
    0: begin // Pesquisa por ID
      QueryPesqPadrao.SQL.Add('WHERE ID_CLIENTE=:PID_CLIENTE');
      QueryPesqPadrao.ParamByName('PID_CLIENTE').AsString:=edNome.Text;
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
      QueryPesqPadrao.ParamByName('PFIM').AsDate:= StrToDate(mkFim.Text);
    end;

    4: begin
      QueryPesqPadrao.SQL.Add('ORDER BY ID_CLIENTE');
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

procedure TFrmPesqCliente.btTransferirClick(Sender: TObject);
begin
  if QueryPesqPadrao.RecordCount > 0 then
    begin
      codigo:=QueryPesqPadraoID_CLIENTE.AsInteger;
    end

  else
    abort;

end;

end.
