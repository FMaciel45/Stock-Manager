unit UContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrmContasPagar = class(TFrmPadraoCadastro)
    QueryPadraoID_COMPRA: TIntegerField;
    QueryPadraoID_FORNECEDOR: TIntegerField;
    QueryPadraoNOME: TStringField;
    QueryPadraoCNPJ: TStringField;
    QueryPadraoID_SEQUENCIA: TIntegerField;
    QueryPadraoVALOR_PARCELA: TFMTBCDField;
    QueryPadraoDT_VENCIMENTO: TDateField;
    QueryPadraoDT_PAGAMENTO: TDateField;
    QueryPadraoATRASO: TIntegerField;
    QueryPadraoJUROS: TFMTBCDField;
    QueryPadraoVL_JUROS: TFMTBCDField;
    QueryPadraoTOTAL_PAGAR: TFMTBCDField;
    QueryPadraoSTATUS: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContasPagar: TFrmContasPagar;

implementation

{$R *.dfm}

end.
