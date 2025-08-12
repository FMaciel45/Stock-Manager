unit UCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrmCliente = class(TFrmPadraoCadastro)
    Label1: TLabel;
    DBIdCliente: TDBEdit;
    Label2: TLabel;
    DBNomeCliente: TDBEdit;
    Label3: TLabel;
    DBEndereçoCliente: TDBEdit;
    Label4: TLabel;
    DBNumeroCliente: TDBEdit;
    Label5: TLabel;
    DBBairroCliente: TDBEdit;
    Label6: TLabel;
    DBCidadeCliente: TDBEdit;
    Label7: TLabel;
    DBUFCliente: TDBEdit;
    Label8: TLabel;
    DBCEPCliente: TDBEdit;
    Label9: TLabel;
    DBTelefoneCliente: TDBEdit;
    Label10: TLabel;
    DBCPFCliente: TDBEdit;
    Label12: TLabel;
    DBCadastroCliente: TDBEdit;
    QueryPadraoID_CLIENTE: TFDAutoIncField;
    QueryPadraoNOME: TStringField;
    QueryPadraoENDERECO: TStringField;
    QueryPadraoNUMERO: TIntegerField;
    QueryPadraoBAIRRO: TStringField;
    QueryPadraoCIDADE: TStringField;
    QueryPadraoUF: TStringField;
    QueryPadraoCEP: TStringField;
    QueryPadraoTELEFONE: TStringField;
    QueryPadraoCPF: TStringField;
    QueryPadraoCADASTRO: TDateField;
    procedure btNovoClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;

implementation

{$R *.dfm}

uses UPesqCliente;

procedure TFrmCliente.btNovoClick(Sender: TObject);
begin
  inherited;

  DBCadastroCliente.Text:=DateToStr(now);
  DBNomeCliente.SetFocus;
end;

procedure TFrmCliente.btPesquisarClick(Sender: TObject);
begin
  FrmPesqCliente:=TFrmPesqCliente.Create(self);
  FrmPesqCliente.ShowModal;

  try
    if FrmPesqCliente.codigo > 0 then
      begin
        QueryPadrao.Open;
        QueryPadrao.Locate('ID_CLIENTE', FrmPesqCliente.codigo, []);
      end;


  finally
    FrmPesqCliente.Free;
    FrmPesqCliente:=nil;
  end;
end;

end.
