unit UContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContasReceber: TFrmContasReceber;

implementation

{$R *.dfm}

uses UDataM;

end.
