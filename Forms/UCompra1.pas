unit UCompra1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UMovimentoPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask;

type
  TFrmCompra1 = class(TFrmPadraoMovimento)
    QueryPadraoID_COMPRA: TFDAutoIncField;
    QueryPadraoID_FORNECEDOR: TIntegerField;
    QueryPadraoID_FORMA_PGTO: TIntegerField;
    QueryPadraoUSUARIO: TStringField;
    QueryPadraoCADASTRO: TDateField;
    QueryPadraoVALOR: TFMTBCDField;
    Label1: TLabel;
    DBIdCompra: TDBEdit;
    Label2: TLabel;
    DBIdFornecedor: TDBEdit;
    Label3: TLabel;
    DBIdFormaPgto: TDBEdit;
    Label4: TLabel;
    DBUsuario: TDBEdit;
    Label5: TLabel;
    DBCadastro: TDBEdit;
    Label6: TLabel;
    DBValorCompra: TDBEdit;
    QueryFornecedor: TFDQuery;
    QueryFormaPgto: TFDQuery;
    DSFornecedor: TDataSource;
    DSFormaPgto: TDataSource;
    QueryFornecedorID_FORNECEDOR: TIntegerField;
    QueryFornecedorNOME: TStringField;
    QueryFormaPgtoID_FORMA_PGTO: TIntegerField;
    QueryFormaPgtoDESCRICAO: TStringField;
    QueryPadraoNOME: TStringField;
    QueryPadraoDESCRICAO: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    DBNome: TDBLookupComboBox;
    DBDescricao: TDBLookupComboBox;
    QueryPadraoItemID_SEQUENCIA: TIntegerField;
    QueryPadraoItemID_COMPRA: TIntegerField;
    QueryPadraoItemID_PRODUTO: TIntegerField;
    QueryPadraoItemQTDE: TFMTBCDField;
    QueryPadraoItemVL_CUSTO: TFMTBCDField;
    QueryPadraoItemTOTAL_ITEM: TFMTBCDField;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    DBEdit3: TDBEdit;
    Label12: TLabel;
    DBEdit4: TDBEdit;
    QueryPadraoItemDESCONTO: TFMTBCDField;
    Label13: TLabel;
    DBEdit5: TDBEdit;
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCompra1: TFrmCompra1;

implementation

{$R *.dfm}

uses UDataM;

procedure TFrmCompra1.btNovoClick(Sender: TObject);
begin
  inherited;

  QueryPadraoCADASTRO.AsDateTime:=Date;
  QueryPadraoUSUARIO.AsString:='batata';
  QueryPadraoVALOR.AsCurrency:=0;
  DBIdFornecedor.SetFocus;
end;

end.
