unit UPesqVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFormPesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxSmartMemo, frxClass, frxExportBaseDialog,
  frxExportPDF, frxDBSet, frCoreClasses, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.ExtCtrls;

type
  TFrmPesqVenda = class(TFrmPesquisaPadrao)
    QueryPesqPadraoID_VENDA: TIntegerField;
    QueryPesqPadraoID_CLIENTE: TIntegerField;
    QueryPesqPadraoNOME: TStringField;
    QueryPesqPadraoID_FORMA_PGTO: TIntegerField;
    QueryPesqPadraoDESCRICAO: TStringField;
    QueryPesqPadraoUSUARIO: TStringField;
    QueryPesqPadraoCADASTRO: TDateField;
    QueryPesqPadraoVALOR: TFMTBCDField;
    procedure cbChavePesquisaChange(Sender: TObject);
    procedure btPesquisaClick(Sender: TObject);
    procedure btTransferirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqVenda: TFrmPesqVenda;

implementation

{$R *.dfm}

procedure TFrmPesqVenda.btPesquisaClick(Sender: TObject);
begin
  QueryPesqPadrao.Close;

  QueryPesqPadrao.SQL.Add('');
  QueryPesqPadrao.Params.Clear;
  QueryPesqPadrao.SQL.Clear;

  QueryPesqPadrao.SQL.Add('SELECT A.ID_VENDA, ' +
                         'A.ID_CLIENTE, ' +
                         'B.NOME, ' +
                         'A.ID_FORMA_PGTO, ' +
                         'C.DESCRICAO, ' +
                         'A.USUARIO, ' +
                         'A.VALOR, ' +
                         'A.CADASTRO ' +
                         'FROM VENDA A ' +
                         'INNER JOIN CLIENTES B ON B.ID_CLIENTE = A.ID_CLIENTE ' +
                         'INNER JOIN FORMA_PGTO C ON C.ID_FORMA_PGTO = A.ID_FORMA_PGTO');

  case cbChavePesquisa.ItemIndex of
    0: begin // Pesquisa por ID
      QueryPesqPadrao.SQL.Add('WHERE A.ID_VENDA=:PID_VENDA');
      QueryPesqPadrao.ParamByName('PID_VENDA').AsString:=edNome.Text;
    end;

    1: begin // Pesquisa por Nome
      QueryPesqPadrao.SQL.Add('WHERE A.USUARIO LIKE :PUSUARIO');
      QueryPesqPadrao.ParamByName('PUSUARIO').AsString:= '%' + edNome.Text + '%';
    end;

    2: begin
      QueryPesqPadrao.SQL.Add('WHERE A.ID_CLIENTE=:PID_CLIENTE');
      QueryPesqPadrao.ParamByName('PID_CLIENTE').AsString:=edNome.Text;
    end;

    3: begin // Pesquisa por ID do pagamento
      QueryPesqPadrao.SQL.Add('WHERE A.ID_FORMA_PGTO=:PID_FORMA_PGTO');
      QueryPesqPadrao.ParamByName('PID_FORMA_PGTO').AsString:=edNome.Text;
    end;

    4: begin // Pesquisa por data de cadastro
      QueryPesqPadrao.SQL.Add('WHERE A.CADASTRO=:PCADASTRO');
      QueryPesqPadrao.ParamByName('PCADASTRO').AsDate:=StrToDate(mkInicio.Text);
    end;

    5: begin // Pesquisa por período de tempo
      QueryPesqPadrao.SQL.Add('WHERE A.CADASTRO BETWEEN :PINICIO AND :PFIM');
      QueryPesqPadrao.ParamByName('PINICIO').AsDate:=StrToDate(mkInicio.Text);
      QueryPesqPadrao.ParamByName('PFIM').AsDate:= StrToDate(mkFim.Text);
    end;

    6: begin
      QueryPesqPadrao.SQL.Add('ORDER BY A.ID_VENDA');
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

procedure TFrmPesqVenda.btTransferirClick(Sender: TObject);
begin
  if QueryPesqPadrao.RecordCount > 0 then
    begin
      codigo:=QueryPesqPadraoID_VENDA.AsInteger;
    end

  else
    abort;
end;

procedure TFrmPesqVenda.cbChavePesquisaChange(Sender: TObject);
begin
  case cbChavePesquisa.ItemIndex of
    0: begin
      edNome.Visible:=true;
      edNome.SetFocus;

      mkInicio.Visible:=false;
      mkFim.Visible:=false;

      lbNomePesq.Visible:=true;
      lbInicioPesq.Visible:=false;
      lbFimPesq.Visible:=false;

      edNome.Clear;
      edNome.SetFocus;

      lbNomePesq.Caption:='Digite o código da venda';
    end;

    1: begin
      edNome.Visible:=true;
      edNome.SetFocus;

      mkInicio.Visible:=false;
      mkFim.Visible:=false;

      lbNomePesq.Visible:=true;
      lbInicioPesq.Visible:=false;
      lbFimPesq.Visible:=false;

      edNome.Clear;
      edNome.SetFocus;

      lbNomePesq.Caption:='Digite o nome do usuário';
    end;

    2: begin
      edNome.Visible:=true;
      edNome.SetFocus;

      mkInicio.Visible:=false;
      mkFim.Visible:=false;

      lbNomePesq.Visible:=true;
      lbInicioPesq.Visible:=false;
      lbFimPesq.Visible:=false;

      edNome.Clear;
      edNome.SetFocus;

      lbNomePesq.Caption:='Digite o código do cliente';
    end;

    3: begin
      edNome.Visible:=true;
      edNome.SetFocus;

      mkInicio.Visible:=false;
      mkFim.Visible:=false;

      lbNomePesq.Visible:=true;
      lbInicioPesq.Visible:=false;
      lbFimPesq.Visible:=false;

      edNome.Clear;
      edNome.SetFocus;

      lbNomePesq.Caption:='Digite o código do pagamento';
    end;

    4: begin
      edNome.Visible:=false;

      mkInicio.Visible:=true;
      mkInicio.SetFocus;
      mkFim.Visible:=false;

      lbNomePesq.Visible:=false;
      lbInicioPesq.Visible:=true;
      lbFimPesq.Visible:=false;

      mkInicio.Clear;
      mkInicio.SetFocus;

      lbInicioPesq.Caption:='Digite a data';
    end;

    5: begin
      edNome.Visible:=false;

      mkInicio.Visible:=true;
      mkFim.Visible:=true;
      mkInicio.SetFocus;

      lbNomePesq.Visible:=false;
      lbInicioPesq.Visible:=true;
      lbFimPesq.Visible:=false;

      mkInicio.Clear;
      mkFim.Clear;

      mkInicio.SetFocus;

      lbInicioPesq.Caption:='Digite o período';
    end;

    6: begin
      edNome.Visible:=false;

      mkInicio.Visible:=false;
      mkFim.Visible:=false;

      lbNomePesq.Visible:=true;
      lbInicioPesq.Visible:=false;
      lbFimPesq.Visible:=false;

      lbNomePesq.Caption:='Selecione "Pesquisar"';
    end;

  end;

end;

end.
