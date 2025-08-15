unit UCompra1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UMovimentoPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, frxSmartMemo, frxClass, frxDBSet, frCoreClasses;

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
    DBIdProduto: TDBEdit;
    Label10: TLabel;
    DBQuantidade: TDBEdit;
    Label11: TLabel;
    DBCusto: TDBEdit;
    Label12: TLabel;
    DBTotalItem: TDBEdit;
    QueryPadraoItemDESCONTO: TFMTBCDField;
    Label13: TLabel;
    DBDesconto: TDBEdit;
    QueryProduto: TFDQuery;
    QueryPadraoItemDESCRICAO: TStringField;
    DBEdit1: TDBEdit;
    QueryPadraoItemSUBTOTAL: TAggregateField;
    RelReciboCompra: TfrxReport;
    frxDBQueryPadrao: TfrxDBDataset;
    QueryFdEmpresa: TFDQuery;
    DSEmpresa: TDataSource;
    QueryFdEmpresaID_EMPRESA: TIntegerField;
    QueryFdEmpresaRAZAO_SOCIAL: TStringField;
    QueryFdEmpresaN_FANTASIA: TStringField;
    QueryFdEmpresaENDERECO: TStringField;
    QueryFdEmpresaNUMERO: TIntegerField;
    QueryFdEmpresaBAIRRO: TStringField;
    QueryFdEmpresaCIDADE: TStringField;
    QueryFdEmpresaUF: TStringField;
    QueryFdEmpresaCEP: TStringField;
    QueryFdEmpresaTELEFONE: TStringField;
    QueryFdEmpresaCNPJ: TStringField;
    QueryFdEmpresaEMAIL: TStringField;
    QueryFdEmpresaLOGO: TBlobField;
    QueryFdEmpresaCADASTRO: TDateField;
    frxDBEmpresa: TfrxDBDataset;
    frxDBPadraoItem: TfrxDBDataset;
    procedure btNovoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBIdProdutoExit(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCompra1: TFrmCompra1;

implementation

{$R *.dfm}

uses UDataM, UPesqCompra;

procedure TFrmCompra1.BitBtn1Click(Sender: TObject);
var proximo:integer;

begin
  QueryPadraoItem.Open;
  QueryPadraoItem.Last;

  proximo:=QueryPadraoItemID_SEQUENCIA.AsInteger + 1;
  QueryPadraoItem.Append;
  QueryPadraoItemID_SEQUENCIA.AsInteger:=proximo;

  DBIdProduto.SetFocus;
end;

procedure TFrmCompra1.btNovoClick(Sender: TObject);
begin
  inherited;

  QueryPadraoCADASTRO.AsDateTime:=Date;
  QueryPadraoUSUARIO.AsString:='batata';
  QueryPadraoVALOR.AsCurrency:=0;
  DBIdFornecedor.SetFocus;
end;

procedure TFrmCompra1.btOkClick(Sender: TObject);
begin
  QueryPadrao .Edit;
  QueryPadraoVALOR.AsFloat:=QueryPadraoItem.AggFields.FieldByName('SUBTOTAL').Value;
  QueryPadrao.Post;

  QueryPadraoItem.First;

  while not QueryPadraoItem.Eof do
    begin
      if QueryProduto.Locate('ID_PRODUTO', QueryPadraoItemID_PRODUTO.AsInteger, []) then
        begin
          QueryProduto.Edit;
        
          QueryProduto.FieldByName('ESTOQUE').AsFloat:=
          QueryProduto.FieldByName('ESTOQUE').AsFloat +
          QueryPadraoItemQTDE.AsFloat;
          
          QueryPadraoItem.Next;
        end;
    end;

    QueryProduto.Refresh;
    MessageDlg('Estoque atualizado!', mtInformation, [mbOk], 0);
end;

procedure TFrmCompra1.btPesquisarClick(Sender: TObject);
begin
  FrmPesqCompra:= TFrmPesqCompra.Create(self);
  FrmPesqCompra.ShowModal;

  try
    if FrmPesqCompra.codigo > 0 then
      begin
        QueryPadrao.Open;
        QueryPadrao.Locate('ID_COMPRA', FrmPesqCompra.codigo, []);
      end;

  finally
    FrmPesqCompra.Free;
    FrmPesqCompra:= nil;
  end;
end;

procedure TFrmCompra1.DBIdProdutoExit(Sender: TObject);
begin
  if QueryPadraoItemID_PRODUTO.AsInteger > 0 then
    if QueryProduto.locate('ID_PRODUTO', QueryPadraoItem.FieldByName('ID_PRODUTO').AsInteger, []) then
      begin
        QueryPadraoItemQTDE.AsFloat:=1;
        QueryPadraoItemDESCONTO.AsFloat:=0;

        QueryPadraoItemVL_CUSTO.AsFloat:=QueryProduto.FieldByName('VL_CUSTO').AsFloat;

        QueryPadraoItemTOTAL_ITEM.AsFloat:=
        (QueryPadraoItemQTDE.AsFloat * QueryPadraoItemVL_CUSTO.AsFloat) - (QueryPadraoItemDESCONTO.AsFloat);

        QueryPadraoItem.Post;
        btItem.SetFocus;
      end

  else
    MessageDlg('Produto não encontrado!', mtInformation, [mbOk], 0);
    QueryPadraoItem.Cancel;
    btItem.SetFocus;

end;

end.
