unit UFormasPgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrmFormasPgto = class(TFrmPadraoCadastro)
    QueryPadraoID_FORMA_PGTO: TIntegerField;
    QueryPadraoDESCRICAO: TStringField;
    QueryPadraoCADASTRO: TDateField;
    Label1: TLabel;
    DBIdFormaPgto: TDBEdit;
    Label2: TLabel;
    DBDescricaoFormaPgto: TDBEdit;
    Label3: TLabel;
    DBCadastroFormaPgto: TDBEdit;
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFormasPgto: TFrmFormasPgto;

implementation

{$R *.dfm}

procedure TFrmFormasPgto.btNovoClick(Sender: TObject);
begin
  inherited;

  DBCadastroFormaPgto.Text:= DateToStr(now);
  DBDescricaoFormaPgto.SetFocus
end;

end.
