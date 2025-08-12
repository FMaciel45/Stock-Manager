unit UFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrmFornecedor = class(TFrmPadraoCadastro)
    QueryPadraoID_FORNECEDOR: TFDAutoIncField;
    QueryPadraoNOME: TStringField;
    QueryPadraoENDERECO: TStringField;
    QueryPadraoNUMERO: TIntegerField;
    QueryPadraoBAIRRO: TStringField;
    QueryPadraoCIDADE: TStringField;
    QueryPadraoUF: TStringField;
    QueryPadraoCEP: TStringField;
    QueryPadraoTELEFONE: TStringField;
    QueryPadraoCNPJ: TStringField;
    QueryPadraoEMAIL: TStringField;
    QueryPadraoCADASTRO: TDateField;
    Label1: TLabel;
    DBIdFornecedor: TDBEdit;
    Label2: TLabel;
    DBNomeFornecedor: TDBEdit;
    Label3: TLabel;
    DBEnderecoFornecedor: TDBEdit;
    Label4: TLabel;
    DBNumeroFornecedor: TDBEdit;
    Label5: TLabel;
    DBBairroFornecedor: TDBEdit;
    Label6: TLabel;
    DBCidadeFornecedor: TDBEdit;
    Label7: TLabel;
    DBUFFornecedor: TDBEdit;
    Label8: TLabel;
    DBCEPFornecedor: TDBEdit;
    Label9: TLabel;
    DBTelefoneFornecedor: TDBEdit;
    Label10: TLabel;
    DBCNPJFornecedor: TDBEdit;
    Label11: TLabel;
    DBEmailFornecedor: TDBEdit;
    Label12: TLabel;
    DBCadastroFornecedor: TDBEdit;
    procedure btNovoClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFornecedor: TFrmFornecedor;

implementation

{$R *.dfm}

uses UPesqFornecedor;

procedure TFrmFornecedor.btNovoClick(Sender: TObject);
begin
  inherited;

  DBCadastroFornecedor.Text:=DateToStr(now);
  DBNomeFornecedor.SetFocus;
end;

procedure TFrmFornecedor.btPesquisarClick(Sender: TObject);
begin
  FrmPesqFornecedor:= TFrmPesqFornecedor.Create(self);
  FrmPesqFornecedor.ShowModal;

  try

  finally
    FrmPesqFornecedor.Free;
    FrmPesqFornecedor:= nil;
  end;
end;

end.
