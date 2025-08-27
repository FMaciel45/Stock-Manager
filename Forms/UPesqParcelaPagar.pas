unit UPesqParcelaPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFormPesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxSmartMemo, frxClass, frxExportBaseDialog,
  frxExportPDF, frxDBSet, frCoreClasses, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrmPesqParcelaPagar = class(TFrmPesquisaPadrao)
    QueryPesqPadraoID_COMPRA: TIntegerField;
    QueryPesqPadraoID_FORNECEDOR: TIntegerField;
    QueryPesqPadraoNOME: TStringField;
    QueryPesqPadraoCNPJ: TStringField;
    QueryPesqPadraoID_SEQUENCIA: TIntegerField;
    QueryPesqPadraoVALOR_PARCELA: TFMTBCDField;
    QueryPesqPadraoDT_VENCIMENTO: TDateField;
    QueryPesqPadraoDT_PAGAMENTO: TDateField;
    QueryPesqPadraoATRASO: TIntegerField;
    QueryPesqPadraoJUROS: TFMTBCDField;
    QueryPesqPadraoVL_JUROS: TFMTBCDField;
    QueryPesqPadraoTOTAL_PAGAR: TFMTBCDField;
    QueryPesqPadraoSTATUS: TStringField;
    procedure cbChavePesquisaChange(Sender: TObject);
    procedure btPesquisaClick(Sender: TObject);
    procedure btTransferirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    data:Tdate;
    sequencia:integer;
  end;

var
  FrmPesqParcelaPagar: TFrmPesqParcelaPagar;

implementation

{$R *.dfm}

procedure TFrmPesqParcelaPagar.btPesquisaClick(Sender: TObject);
begin
  QueryPesqPadrao.Close;

  QueryPesqPadrao.SQL.Add('');
  QueryPesqPadrao.Params.Clear;
  QueryPesqPadrao.SQL.Clear;

  QueryPesqPadrao.SQL.Add('SELECT A.ID_COMPRA, '
                            +'A.ID_FORNECEDOR, '
                            +'B.NOME, '
                            +'B.CNPJ, '
                            +'C.ID_SEQUENCIA, '
                            +'C.VALOR_PARCELA, '
                            +'C.DT_VENCIMENTO, '
                            +'C.DT_PAGAMENTO, '
                            +'C.ATRASO, '
                            +'C.JUROS, '
                            +'C.VL_JUROS, '
                            +'C.TOTAL_PAGAR, '
                            +'C.STATUS '
                          +'FROM COMPRA A ');
  QueryPesqPadrao.SQL.Add('INNER JOIN FORNECEDOR B ON B.ID_FORNECEDOR=A.ID_FORNECEDOR');
  QueryPesqPadrao.SQL.Add('INNER JOIN CONTAS_PAGAR C ON C.ID_COMPRA=A.ID_COMPRA ');

  case cbChavePesquisa.ItemIndex of
    0: begin
      QueryPesqPadrao.SQL.Add('WHERE A.ID_FORNECEDOR =:PID_FORNECEDOR');
      QueryPesqPadrao.ParamByName('PID_FORNECEDOR').AsString:=edNome.Text;
      QueryPesqPadrao.SQL.Add('AND C.STATUS=''Em aberto''');
    end;

    1: begin
      QueryPesqPadrao.SQL.Add('WHERE B.NOME LIKE :PNOME');
      QueryPesqPadrao.ParamByName('PNOME').AsString:='%' + edNome.Text + '%';
      QueryPesqPadrao.SQL.Add('AND C.STATUS=''Em aberto''');
    end;

    2: begin
      QueryPesqPadrao.SQL.Add('WHERE B.CNPJ =:PCNPJ');
      QueryPesqPadrao.ParamByName('PCNPJ').AsString:=edNome.Text;
      QueryPesqPadrao.SQL.Add('AND C.STATUS=''Em aberto''');
    end;

  end;

  QueryPesqPadrao.Open;

  lbResultado.Caption:=IntToStr(QueryPesqPadrao.RecordCount);

  if QueryPesqPadrao.IsEmpty then
    begin
      MessageDlg('Nenhum registro encontrado!', mtInformation, [mbOk], 0);
    end;

end;

procedure TFrmPesqParcelaPagar.cbChavePesquisaChange(Sender: TObject);
begin
  case cbChavePesquisa.ItemIndex of
    0: begin
      lbNomePesq.Caption:='Digite o nome do Fornecedor: ';
      edNome.SetFocus;
    end;

    1: begin
      lbNomePesq.Caption:='Digite o código do Fornecedor: ';
      edNome.SetFocus;
    end;

    2: begin
      lbNomePesq.Caption:='Digite o CNPJ do Fornecedor: ';
      edNome.SetFocus;
    end;

  end;

end;

procedure TFrmPesqParcelaPagar.btTransferirClick(Sender: TObject);
begin
  inherited;

  if QueryPesqPadrao.RecordCount > 0 then
    begin
      codigo:=QueryPesqPadraoID_COMPRA.AsInteger;
      data:=QueryPesqPadraoDT_VENCIMENTO.AsDateTime;
      sequencia:=QueryPesqPadraoID_SEQUENCIA.AsInteger;
    end

  else
    abort;
end;

end.
