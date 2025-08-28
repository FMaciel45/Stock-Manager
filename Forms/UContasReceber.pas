unit UContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, DateUtils, frxSmartMemo, frxClass,
  frxDBSet, frCoreClasses;

type
  TFrmContasReceber = class(TFrmPadraoCadastro)
    QueryPadraoID_VENDA: TIntegerField;
    QueryPadraoID_CLIENTE: TIntegerField;
    QueryPadraoNOME: TStringField;
    QueryPadraoCPF: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBIdCliente: TDBEdit;
    DBNome: TDBEdit;
    DBCPF: TDBEdit;
    DBIdSequencia: TDBEdit;
    DBValorParcela: TDBEdit;
    DBDtVencimento: TDBEdit;
    DBDtPagamento: TDBEdit;
    DBAtraso: TDBEdit;
    DBJuros: TDBEdit;
    DBVlJuros: TDBEdit;
    DBTotalPagar: TDBEdit;
    DBStatus: TDBEdit;
    DBIdVenda: TDBEdit;
    QueryReceber: TFDQuery;
    DSReceber: TDataSource;
    QueryReceberID_SEQUENCIA: TIntegerField;
    QueryReceberID_VENDA: TIntegerField;
    QueryReceberVALOR_PARCELA: TFMTBCDField;
    QueryReceberDT_VENCIMENTO: TDateField;
    QueryReceberDT_PAGAMENTO: TDateField;
    QueryReceberATRASO: TIntegerField;
    QueryReceberJUROS: TFMTBCDField;
    QueryReceberVL_JUROS: TFMTBCDField;
    QueryReceberTOTAL_PAGAR: TFMTBCDField;
    QueryReceberSTATUS: TStringField;
    btImprimir: TBitBtn;
    Recibo: TfrxReport;
    frxPadrao: TfrxDBDataset;
    frxReceber: TfrxDBDataset;
    frxEmpresa: TfrxDBDataset;
    QueryEmpresa: TFDQuery;
    DSEmpresa: TDataSource;
    QueryEmpresaID_EMPRESA: TIntegerField;
    QueryEmpresaRAZAO_SOCIAL: TStringField;
    QueryEmpresaN_FANTASIA: TStringField;
    QueryEmpresaENDERECO: TStringField;
    QueryEmpresaNUMERO: TIntegerField;
    QueryEmpresaBAIRRO: TStringField;
    QueryEmpresaCIDADE: TStringField;
    QueryEmpresaUF: TStringField;
    QueryEmpresaCEP: TStringField;
    QueryEmpresaTELEFONE: TStringField;
    QueryEmpresaCNPJ: TStringField;
    QueryEmpresaEMAIL: TStringField;
    QueryEmpresaLOGO: TBlobField;
    QueryEmpresaCADASTRO: TDateField;
    procedure btPesquisarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure DBDtPagamentoExit(Sender: TObject);
    procedure DBJurosExit(Sender: TObject);
    procedure DSEmpresaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContasReceber: TFrmContasReceber;

implementation

{$R *.dfm}

uses UDataM, UPesqContasReceber;

procedure TFrmContasReceber.btAtualizarClick(Sender: TObject);
begin
  QueryReceber.Post;

  inherited;
end;

procedure TFrmContasReceber.btCancelarClick(Sender: TObject);
begin
  inherited;

  QueryReceber.CancelUpdates;
end;

procedure TFrmContasReceber.btEditarClick(Sender: TObject);
begin
  QueryReceber.Edit;
  DBDtPagamento.SetFocus;

  inherited;
end;

procedure TFrmContasReceber.btPesquisarClick(Sender: TObject);
begin
  QueryPadrao.Close;

  FrmPesqParcelasReceber:= TFrmPesqParcelasReceber.Create(self); // UPesqContasReceber
  FrmPesqParcelasReceber.ShowModal;

  try
    if FrmPesqParcelasReceber.codigo > 0 then
      begin
        QueryPadrao.Open;
        QueryReceber.Open;
        QueryReceber.Locate('ID_VENDA', FrmPesqParcelasReceber.codigo, []);
        QueryReceber.Locate('DT_VENCIMENTO', FrmPesqParcelasReceber.data, []);
        QueryReceber.Locate('ID_SEQUENCIA', FrmPesqParcelasReceber.sequencia, []);

      end;

  finally
    FrmPesqParcelasReceber.Free;
    FrmPesqParcelasReceber:= nil;

  end;

end;

procedure TFrmContasReceber.DBDtPagamentoExit(Sender: TObject);
begin
  if QueryReceberDT_PAGAMENTO.AsDateTime > QueryReceberDT_VENCIMENTO.AsDateTime then
    begin
      QueryReceberATRASO.Value:=DaysBetween(QueryReceberDT_PAGAMENTO.AsDateTime, QueryReceberDT_VENCIMENTO.AsDateTime);
      DBJuros.SetFocus;
    end

  else
    begin
      QueryReceberATRASO.AsInteger:=0;
      QueryReceberSTATUS.AsString:='Recebido';
      QueryReceberTOTAL_PAGAR.AsFloat:=QueryReceberVALOR_PARCELA.AsFloat;
    end;

end;

procedure TFrmContasReceber.DBJurosExit(Sender: TObject);
begin
  if QueryReceberATRASO.AsInteger > 0 then
    begin
      QueryReceberVL_JUROS.AsFloat:=
      (QueryReceberATRASO.AsInteger *
      QueryReceberJUROS.AsFloat *
      QueryReceberVALOR_PARCELA.AsFloat/100);

      QueryReceberTOTAL_PAGAR.AsFloat:=
      QueryReceberVL_JUROS.AsFloat +
      QueryReceberVALOR_PARCELA.AsFloat;

      QueryReceberSTATUS.AsString:='Recebido';
    end;

end;

end.
