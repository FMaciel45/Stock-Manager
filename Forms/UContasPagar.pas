unit UContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, DateUtils;

type
  TFrmContasPagar = class(TFrmPadraoCadastro)
    Label1: TLabel;
    DBIdFornecedor: TDBEdit;
    Label2: TLabel;
    DBNome: TDBEdit;
    Label3: TLabel;
    DBCNPJ: TDBEdit;
    Label4: TLabel;
    DBIdSequencia: TDBEdit;
    Label5: TLabel;
    DBValorParcela: TDBEdit;
    Label6: TLabel;
    DBDtVencimento: TDBEdit;
    Label7: TLabel;
    DBDtPagamento: TDBEdit;
    Label8: TLabel;
    DBAtraso: TDBEdit;
    Label9: TLabel;
    DBJuros: TDBEdit;
    Label10: TLabel;
    DBVlJuros: TDBEdit;
    Label11: TLabel;
    DBTotalPagar: TDBEdit;
    Label12: TLabel;
    DBStatus: TDBEdit;
    Label13: TLabel;
    DBIdCompra: TDBEdit;
    QueryPagar: TFDQuery;
    DSPagar: TDataSource;
    QueryPagarID_SEQUENCIA: TIntegerField;
    QueryPagarID_COMPRA: TIntegerField;
    QueryPagarVALOR_PARCELA: TFMTBCDField;
    QueryPagarDT_VENCIMENTO: TDateField;
    QueryPagarDT_PAGAMENTO: TDateField;
    QueryPagarATRASO: TIntegerField;
    QueryPagarJUROS: TFMTBCDField;
    QueryPagarVL_JUROS: TFMTBCDField;
    QueryPagarTOTAL_PAGAR: TFMTBCDField;
    QueryPagarSTATUS: TStringField;
    QueryPadraoID_COMPRA: TIntegerField;
    QueryPadraoID_FORNECEDOR: TIntegerField;
    QueryPadraoNOME: TStringField;
    QueryPadraoCNPJ: TStringField;
    procedure btPesquisarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure DBDtPagamentoExit(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure DBJurosExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContasPagar: TFrmContasPagar;

implementation

{$R *.dfm}

uses UPesqParcelaPagar, UDataM;

procedure TFrmContasPagar.btAtualizarClick(Sender: TObject);
begin
  QueryPagar.Refresh;

  inherited;
end;

procedure TFrmContasPagar.btEditarClick(Sender: TObject);
begin
  inherited;

  QueryPagar.Edit;
  DBDtPagamento.SetFocus;

  FrmPesqParcelaPagar.QueryPesqPadrao.Close;
end;

procedure TFrmContasPagar.btPesquisarClick(Sender: TObject);
begin
  QueryPadrao.Close;

  FrmPesqParcelaPagar:= TFrmPesqParcelaPagar.Create(self);
  FrmPesqParcelaPagar.ShowModal;

  try
    if FrmPesqParcelaPagar.codigo > 0 then
      begin
        QueryPadrao.Open;
        QueryPagar.Open;
        QueryPadrao.Locate('ID_COMPRA', FrmPesqParcelaPagar.codigo, []);
        QueryPagar.Locate('DT_VENCIMENTO', FrmPesqParcelaPagar.data, []);
        QueryPagar.Locate('ID_SEQUENCIA', FrmPesqParcelaPagar.sequencia, []);
      end;

  finally
    FrmPesqParcelaPagar.Free;
    FrmPesqParcelaPagar:= nil;
  end;

end;

procedure TFrmContasPagar.DBDtPagamentoExit(Sender: TObject);
begin
  if QueryPagarDT_PAGAMENTO.AsDateTime > QueryPagarDT_VENCIMENTO.AsDateTime then
    begin
      QueryPagarATRASO.Value:=DaysBetween(QueryPagarDT_PAGAMENTO.AsDateTime, QueryPagarDT_VENCIMENTO.AsDateTime);
      DBJuros.SetFocus;
    end

  else
    begin
      QueryPagarATRASO.AsInteger:=0;
      QueryPagarSTATUS.AsString:='Pago';
      QueryPagarTOTAL_PAGAR.AsFloat:=QueryPagarVALOR_PARCELA.AsFloat;
    end;

end;

procedure TFrmContasPagar.DBJurosExit(Sender: TObject);
begin
  if QueryPagarATRASO.AsInteger > 0 then
    begin
      QueryPagarVL_JUROS.AsFloat:=
      (QueryPagarATRASO.AsInteger *
      QueryPagarJUROS.AsFloat *
      QueryPagarVALOR_PARCELA.AsFloat/100);

      QueryPagarTOTAL_PAGAR.AsFloat:=
      QueryPagarVL_JUROS.AsFloat +
      QueryPagarVALOR_PARCELA.AsFloat;

      QueryPagarSTATUS.AsString:='Pago';
    end;

  { else
    begin
      QueryPagarJUROS.AsFloat:=0;
      QueryPagarVL_JUROS.AsFloat:=0;
      QueryPagarTOTAL_PAGAR.AsFloat:=QueryPagarVALOR_PARCELA.AsFloat;
      QueryPagarSTATUS.AsString:='Pago';
    end; }

end;

end.
