unit UProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrmProduto = class(TFrmPadraoCadastro)
    QueryPadraoPRODUTO_DESCRICAO: TStringField;
    QueryPadraoVL_CUSTO: TFMTBCDField;
    QueryPadraoVL_VENDA: TFMTBCDField;
    QueryPadraoESTOQUE: TFMTBCDField;
    QueryPadraoESTOQUE_MIN: TFMTBCDField;
    QueryPadraoUNIDADE: TStringField;
    QueryPadraoCADASTRO: TDateField;
    QueryPadraoID_FORNECEDOR: TIntegerField;
    QueryPadraoNOME: TStringField;
    Label1: TLabel;
    DBIdProduto: TDBEdit;
    Label2: TLabel;
    DBDescricaoProduto: TDBEdit;
    Label3: TLabel;
    DBCustoProduto: TDBEdit;
    Label4: TLabel;
    DBVendaProduto: TDBEdit;
    Label5: TLabel;
    DBEstoqueProduto: TDBEdit;
    Label6: TLabel;
    DBEstoqueMinProduto: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBCadastroProduto: TDBEdit;
    Label9: TLabel;
    DBIdFornecedorProduto: TDBEdit;
    Label10: TLabel;
    DBNomeFornecedorProduto: TDBEdit;
    DBUnidadeProduto: TDBComboBox;
    QueryPadraoID_PRODUTO: TIntegerField;
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProduto: TFrmProduto;

implementation

{$R *.dfm}

procedure TFrmProduto.btNovoClick(Sender: TObject);
begin
  inherited;

  DBCadastroProduto.Text:= DateToStr(now);
  DBIdProduto.SetFocus
end;

end.
