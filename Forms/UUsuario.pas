unit UUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrmUsuario = class(TFrmPadraoCadastro)
    Label1: TLabel;
    DBId: TDBEdit;
    Label2: TLabel;
    DBNome: TDBEdit;
    Label3: TLabel;
    DBSenha: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBCadastro: TDBEdit;
    DBTipo: TDBComboBox;
    QueryPadraoID_USUARIO: TFDAutoIncField;
    QueryPadraoNOME: TStringField;
    QueryPadraoSENHA: TStringField;
    QueryPadraoTIPO: TStringField;
    QueryPadraoCADASTRO: TDateField;
    procedure btNovoClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUsuario: TFrmUsuario;

implementation

{$R *.dfm}

uses UPesqUsuario;

procedure TFrmUsuario.btNovoClick(Sender: TObject);
begin
  inherited;

  DBCadastro.Text:= DateToStr(now);
  DBNome.SetFocus;
end;

procedure TFrmUsuario.btPesquisarClick(Sender: TObject);
begin
  FrmPesqUsuario:= TFrmPesqUsuario.Create(self);
  FrmPesqUsuario.ShowModal;

  try
  
  finally
    FrmPesqUsuario.Free;
    FrmPesqUsuario:= nil;
  end;

end;

end.
