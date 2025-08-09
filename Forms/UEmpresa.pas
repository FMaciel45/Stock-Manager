unit UEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrmEmpresa = class(TFrmPadrao)
    QueryPadraoID_EMPRESA: TIntegerField;
    QueryPadraoRAZAO_SOCIAL: TStringField;
    QueryPadraoN_FANTASIA: TStringField;
    QueryPadraoENDERECO: TStringField;
    QueryPadraoNUMERO: TIntegerField;
    QueryPadraoBAIRRO: TStringField;
    QueryPadraoCIDADE: TStringField;
    QueryPadraoUF: TStringField;
    QueryPadraoCEP: TStringField;
    QueryPadraoTELEFONE: TStringField;
    QueryPadraoCNPJ: TStringField;
    QueryPadraoEMAIL: TStringField;
    QueryPadraoLOGO: TBlobField;
    QueryPadraoCADASTRO: TDateField;
    Label1: TLabel;
    DBIdEmpresa: TDBEdit;
    Label2: TLabel;
    DBRazaoSocial: TDBEdit;
    Label3: TLabel;
    DBFantasia: TDBEdit;
    Label4: TLabel;
    DBEndereçoEmpresa: TDBEdit;
    Label5: TLabel;
    DBNumEnderecoEmpresa: TDBEdit;
    Label6: TLabel;
    DBBairroEmpresa: TDBEdit;
    Label7: TLabel;
    DBCidadeEmpresa: TDBEdit;
    Label8: TLabel;
    DBUFEmpresa: TDBEdit;
    Label9: TLabel;
    DBCEPEmresa: TDBEdit;
    Label10: TLabel;
    DBTelefoneEmpresa: TDBEdit;
    Label11: TLabel;
    DBCNPJEmpresa: TDBEdit;
    Label12: TLabel;
    DBEmailEmpresa: TDBEdit;
    Label13: TLabel;
    DBImage1: TDBImage;
    Label14: TLabel;
    DBCadastro: TDBEdit;
    btFoto: TBitBtn;
    btClear: TBitBtn;
    OpenDialog1: TOpenDialog;
    procedure btNovoClick(Sender: TObject);
    procedure btFotoClick(Sender: TObject);
    procedure btClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmpresa: TFrmEmpresa;

implementation

{$R *.dfm}

procedure TFrmEmpresa.btClearClick(Sender: TObject); // Limpa a imagem inserida (Logo)
begin
  QueryPadrao.Edit;
  QueryPadraoLOGO.AsVariant:= null;
  QueryPadrao.Refresh;
  MessageDlg('Imagem deletada!', mtInformation, [mbOk], 0);
end;

procedure TFrmEmpresa.btFotoClick(Sender: TObject); // Upload da foto (Logo)
begin
  QueryPadrao.Open;
  QueryPadrao.Edit;
  OpenDialog1.Execute;
  DBImage1.Picture.LoadFromFile(opendialog1.FileName);
  QueryPadrao.Refresh;
  MessageDlg('Imagem inserida!', mtInformation, [mbOk], 0);
end;

procedure TFrmEmpresa.btNovoClick(Sender: TObject);
begin
  inherited;

  DBCadastro.Text:= DateToStr(now);
  DBRazaoSocial.SetFocus;
end;

end.
