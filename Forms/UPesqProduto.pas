unit UPesqProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFormPesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrmPesqProduto = class(TFrmPesquisaPadrao)
    QueryPesqPadraoID_PRODUTO: TIntegerField;
    QueryPesqPadraoPRODUTO_DESCRICAO: TStringField;
    QueryPesqPadraoVL_CUSTO: TFMTBCDField;
    QueryPesqPadraoVL_VENDA: TFMTBCDField;
    QueryPesqPadraoESTOQUE: TFMTBCDField;
    QueryPesqPadraoESTOQUE_MIN: TFMTBCDField;
    QueryPesqPadraoUNIDADE: TStringField;
    QueryPesqPadraoID_FORNECEDOR: TIntegerField;
    QueryPesqPadraoNOME: TStringField;
    QueryPesqPadraoCADASTRO: TDateField;
    procedure btPesquisaClick(Sender: TObject);
    procedure btTransferirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqProduto: TFrmPesqProduto;

implementation

{$R *.dfm}

procedure TFrmPesqProduto.btPesquisaClick(Sender: TObject);
begin
  QueryPesqPadrao.Close;

  QueryPesqPadrao.SQL.Add('');
  QueryPesqPadrao.Params.Clear;
  QueryPesqPadrao.SQL.Clear;

  QueryPesqPadrao.SQL.Add('SELECT A.ID_PRODUTO, ' +
                         'A.PRODUTO_DESCRICAO, ' +
                         'A.VL_CUSTO, ' +
                         'A.VL_VENDA, ' +
                         'A.ESTOQUE, ' +
                         'A.ESTOQUE_MIN, ' +
                         'A.UNIDADE, ' +
                         'A.ID_FORNECEDOR, ' +
                         'A.CADASTRO, ' +
                         'B.NOME ' + // Adicionei o campo NOME que estava na definição mas não na consulta
                         'FROM PRODUTO A ' +
                         'INNER JOIN FORNECEDOR B ON B.ID_FORNECEDOR = A.ID_FORNECEDOR');

  case cbChavePesquisa.ItemIndex of
    0: begin // Pesquisa por ID
      QueryPesqPadrao.SQL.Add('WHERE A.ID_PRODUTO=:PID_PRODUTO');
      QueryPesqPadrao.ParamByName('PID_PRODUTO').AsString:=edNome.Text;
    end;

    1: begin // Pesquisa por Nome
      QueryPesqPadrao.SQL.Add('WHERE A.PRODUTO_DESCRICAO LIKE:P_DESCRICAO');
      QueryPesqPadrao.ParamByName('P_DESCRICAO').AsString:= '%' + edNome.Text + '%';
    end;

    2: begin // Pesquisa por data de cadastro
      QueryPesqPadrao.SQL.Add('WHERE A.CADASTRO=:PCADASTRO');
      QueryPesqPadrao.ParamByName('PCADASTRO').AsDate:=StrToDate(mkInicio.Text);
    end;

    3: begin // Pesquisa por período de tempo
      QueryPesqPadrao.SQL.Add('WHERE A.CADASTRO BETWEEN:PINICIO AND:PFIM');
      QueryPesqPadrao.ParamByName('PINICIO').AsDate:=StrToDate(mkInicio.Text);
      QueryPesqPadrao.ParamByName('PFIM').AsDate:= StrToDate(mkFim.Text);
    end;

    4: begin
      QueryPesqPadrao.SQL.Add('ORDER BY A.ID_PRODUTO');
    end;

    5: begin
      QueryPesqPadrao.SQL.Add('WHERE A.ID_FORNECEDOR=:PID_FORNECEDOR');
      QueryPesqPadrao.ParamByName('PID_FORNECEDOR').AsString:=edNome.Text;
    end;

  end;

  QueryPesqPadrao.Open; // Mostrar o resultado da consulta

  if QueryPesqPadrao.isEmpty then
    begin
      MessageDlg('Registro não encontrado', mtInformation, [mbOk], 0);
    end

  else
    abort;

end;

procedure TFrmPesqProduto.btTransferirClick(Sender: TObject);
begin
  if QueryPesqPadrao.RecordCount > 0 then
    begin
      codigo:=QueryPesqPadraoID_PRODUTO.AsInteger;
    end

  else
    abort;
end;

end.
