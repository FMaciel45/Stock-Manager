unit UVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UMovimentoPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask;

type
  TFrmVenda = class(TFrmPadraoMovimento)
    QueryPadraoID_VENDA: TIntegerField;
    QueryPadraoID_CLIENTE: TIntegerField;
    QueryPadraoID_FORMA_PGTO: TIntegerField;
    QueryPadraoUSUARIO: TStringField;
    QueryPadraoVALOR: TFMTBCDField;
    QueryPadraoCADASTRO: TDateField;
    Label1: TLabel;
    DBIdVenda: TDBEdit;
    Label2: TLabel;
    DBIdCliente: TDBEdit;
    Label3: TLabel;
    DBIdFormaPgto: TDBEdit;
    Label4: TLabel;
    DBUsuario: TDBEdit;
    Label5: TLabel;
    DBValor: TDBEdit;
    Label6: TLabel;
    DBCadastro: TDBEdit;
    QueryCliente: TFDQuery;
    DSCliente: TDataSource;
    QueryFormaPgto: TFDQuery;
    DSFormaPgto: TDataSource;
    QueryClienteID_CLIENTE: TIntegerField;
    QueryClienteNOME: TStringField;
    QueryFormaPgtoID_FORMA_PGTO: TIntegerField;
    QueryFormaPgtoDESCRICAO: TStringField;
    QueryPadraoCLIENTE: TStringField;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    QueryPadraoDESCRICAO: TStringField;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    procedure btNovoClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBIdClienteExit(Sender: TObject);
    procedure DBIdFormaPgtoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVenda: TFrmVenda;

implementation

{$R *.dfm}

uses UDataM;

procedure TFrmVenda.btNovoClick(Sender: TObject);
begin
  inherited;
  DBCadastro.Text:=DateToStr(now);
  DBUsuario.Text:=DM.usuario;
  DBValor.Text:=IntToStr(0);
  DBIdCliente.SetFocus;
end;

procedure TFrmVenda.DBIdClienteExit(Sender: TObject);
begin
  if not QueryCliente.Locate('ID_CLIENTE', QueryPadrao.FieldByName('ID_CLIENTE').AsInteger, []) then
    begin
      MessageDlg('Cliente não encontrado!', mtInformation, [mbOk], 0);
      DBIdCliente.SetFocus;
      Abort;
    end;
end;

procedure TFrmVenda.DBIdFormaPgtoExit(Sender: TObject);
begin
  if not QueryFormaPgto.Locate('ID_FORMA_PGTO', QueryFormaPgto.FieldByName('ID_FORMA_PGTO').AsInteger, []) then
    begin
      MessageDlg('Forma de pagamento não encontrada!', mtInformation, [mbOk], 0);
      DBIdFormaPgto.SetFocus;
      Abort;
    end;
end;

end.
