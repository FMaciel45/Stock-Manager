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
    DBCliente: TDBEdit;
    QueryPadraoDESCRICAO: TStringField;
    Label8: TLabel;
    DBDescricaoPgto: TDBEdit;
    QueryPadraoPARCELA: TIntegerField;
    QueryPadraoDINHEIRO: TFMTBCDField;
    QueryPadraoTROCO: TFMTBCDField;
    Label9: TLabel;
    DBParcela: TDBEdit;
    Label10: TLabel;
    DBIdProduto: TDBEdit;
    DBQuantidade: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBCusto: TDBEdit;
    DBDesconto: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBTotalItem: TDBEdit;
    QueryPadraoItemID_SEQUENCIA: TIntegerField;
    QueryPadraoItemID_VENDA: TIntegerField;
    QueryPadraoItemID_PRODUTO: TIntegerField;
    QueryPadraoItemQTDE: TFMTBCDField;
    QueryPadraoItemVL_VENDA: TFMTBCDField;
    QueryPadraoItemDESCONTO: TFMTBCDField;
    QueryPadraoItemTOTAL_ITEM: TFMTBCDField;
    QueryProduto: TFDQuery;
    DSProduto: TDataSource;
    QueryProdutoID_PRODUTO: TIntegerField;
    QueryProdutoPRODUTO_DESCRICAO: TStringField;
    QueryProdutoESTOQUE: TFMTBCDField;
    QueryProdutoESTOQUE_MIN: TFMTBCDField;
    QueryProdutoVL_VENDA: TFMTBCDField;
    QueryPadraoItemSUBTOTAL: TAggregateField;
    DBEdit3: TDBEdit;
    QueryContaReceber: TFDQuery;
    DSContaReceber: TDataSource;
    QueryContaReceberID_SEQUENCIA: TIntegerField;
    QueryContaReceberID_VENDA: TIntegerField;
    QueryContaReceberVALOR_PARCELA: TFMTBCDField;
    QueryContaReceberDT_VENCIMENTO: TDateField;
    QueryContaReceberDT_PAGAMENTO: TDateField;
    QueryContaReceberJUROS: TFMTBCDField;
    QueryContaReceberVL_JUROS: TFMTBCDField;
    QueryContaReceberTOTAL_PAGAR: TFMTBCDField;
    QueryContaReceberSTATUS: TStringField;
    QueryContaReceberATRASO: TIntegerField;
    procedure btNovoClick(Sender: TObject);
    procedure DBIdClienteExit(Sender: TObject);
    procedure DBIdFormaPgtoExit(Sender: TObject);
    procedure btItemClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure DBIdProdutoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btDeletarClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure DBDescontoClick(Sender: TObject);
    procedure DBDescontoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVenda: TFrmVenda;

implementation

{$R *.dfm}

uses UDataM, UPesqVenda;

procedure TFrmVenda.btNovoClick(Sender: TObject);
begin
  inherited;
  DBCadastro.Text:=DateToStr(now);

  QueryCliente.Open;
  QueryProduto.Open;
  QueryFormaPgto.Open;

  DBUsuario.Text:=DM.usuario;
  DBValor.Text:=IntToStr(0);
  DBParcela.Text:=IntToStr(0);
  DBIdCliente.SetFocus;
end;

procedure TFrmVenda.btOkClick(Sender: TObject);
var parcela:integer;
var diferenca, soma:Real;

begin
  QueryPadrao.Edit;
  QueryPadraoVALOR.AsFloat:=QueryPadraoItem.AggFields.FieldByName('SUBTOTAL').Value;
  QueryPadrao.Post;

  QueryPadraoItem.First;

  while not QueryPadraoItem.Eof do
    begin
      if QueryProduto.Locate('ID_PRODUTO', QueryPadraoItemID_PRODUTO.AsInteger, []) then
        begin
          QueryProduto.Edit;

          QueryProduto.FieldByName('ESTOQUE').AsFloat:=
          QueryProduto.FieldByName('ESTOQUE').AsFloat -
          QueryPadraoItemQTDE.AsFloat;

          QueryPadraoItem.Next;
        end;
    end;

  QueryProduto.Refresh;
  MessageDlg('Baixa no estoque realizada!', mtInformation, [mbOk], 0);

  QueryContaReceber.Open;

  parcela:=1;

  if (QueryPadraoID_FORMA_PGTO.Value=1) or (QueryPadraoID_FORMA_PGTO.Value=2) then // À vista
    begin
      while parcela <= QueryPadraoPARCELA.AsInteger do
        begin
          QueryContaReceber.Insert;

          QueryContaReceberID_SEQUENCIA.AsInteger:=parcela;

          QueryContaReceber.FieldByName('VALOR_PARCELA').AsFloat:=QueryPadraoVALOR.AsFloat;
          QueryContaReceber.FieldByName('DT_VENCIMENTO').Value:=date;
          QueryContaReceber.FieldByName('DT_PAGAMENTO').Value:=date;
          QueryContaReceber.FieldByName('ATRASO').AsFloat:=0;
          QueryContaReceber.FieldByName('JUROS').AsFloat:=0;
          QueryContaReceber.FieldByName('VL_JUROS').AsFloat:=0;
          QueryContaReceber.FieldByName('TOTAL_PAGAR').AsFloat:=QueryContaReceber.FieldByName('VL_PARCELA').AsFloat;
          QueryContaReceber.FieldByName('STATUS').AsString:='Recebido';

          QueryContaReceber.Post;

          MessageDlg('Parcelas geradas!', mtInformation, [mbOk], 0);

          Abort;
        end;

    end

    else // Parcelado
      QueryContaReceber.First;

      while parcela <= QueryPadraoPARCELA.AsInteger do
        begin
          QueryContaReceber.Insert;

          QueryContaReceberID_SEQUENCIA.AsInteger:=parcela;

          QueryContaReceber.FieldByName('VALOR_PARCELA').AsFloat:=
          (QueryPadraoVALOR.AsFloat)/(QueryPadraoPARCELA.Value);
          QueryContaReceber.FieldByName('DT_VENCIMENTO').Value:=date+(parcela*30);
          QueryContaReceber.FieldByName('ATRASO').AsFloat:=0;
          QueryContaReceber.FieldByName('JUROS').AsFloat:=0;
          QueryContaReceber.FieldByName('VL_JUROS').AsFloat:=0;
          QueryContaReceber.FieldByName('TOTAL_PAGAR').AsFloat:=QueryContaReceber.FieldByName('VALOR_PARCELA').AsFloat;
          QueryContaReceber.FieldByName('STATUS').AsString:='Em aberto';

          QueryContaReceber.Post;

          inc(parcela);

          QueryContaReceber.Next;
        end;

      // Tratamento de diferença entre valores quando pagamento é parcelado
      soma:=soma+QueryPadraoPARCELA.Value*QueryContaReceber.FieldByName('VALOR_PARCELA').AsFloat;
      if soma > QueryPadraoVALOR.AsFloat then
        begin
          diferenca:=soma-QueryPadraoVALOR.AsFloat;

          QueryContaReceber.Last;
          QueryContaReceber.Edit;

          QueryContaReceber.FieldByName('VALOR_PARCELA').AsFloat:=QueryContaReceber.FieldByName('VALOR_PARCELA').AsFloat-diferenca;

          QueryContaReceber.Refresh;
        end;

end;

procedure TFrmVenda.btPesquisarClick(Sender: TObject);
begin
  FrmPesqVenda:= TFrmPesqVenda.Create(self);
  FrmPesqVenda.ShowModal;

  try
    if FrmPesqVenda.codigo > 0 then
      begin
        QueryPadrao.Open;
        QueryPadrao.Locate('ID_VENDA', FrmPesqVenda.codigo, []);
      end;

  finally
    FrmPesqVenda.Free;
    FrmPesqVenda:= nil;
  end;

end;

procedure TFrmVenda.btItemClick(Sender: TObject);
var proximo:integer;

begin
  QueryPadraoItem.Open;
  QueryProduto.Open;
  QueryPadraoItem.Last;

  proximo:=QueryPadraoItemID_SEQUENCIA.AsInteger + 1;
  QueryPadraoItem.Append;
  QueryPadraoItemID_SEQUENCIA.AsInteger:=proximo;

  DBIdProduto.SetFocus;
end;

procedure TFrmVenda.btDeletarClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir todo o registro?', mtInformation, [mbOk, mbNo], 0)=mrOk then
    begin
      QueryContaReceber.First;

      while not QueryContaReceber.Eof do
        begin
          QueryContaReceber.Delete;
          QueryContaReceber.Next;
        end;

      QueryPadraoItem.First;

      while QueryPadraoItem.RecordCount > 0 do
        begin
          if QueryProduto.Locate('ID_PRODUTO', QueryPadraoItemID_PRODUTO.AsInteger, []) then
            begin
              QueryProduto.Edit;

              QueryProduto.FieldByName('ESTOQUE').AsFloat:=
              QueryProduto.FieldByName('ESTOQUE').AsFloat+QueryPadraoItemQTDE.AsFloat;

              QueryProduto.Refresh;
              QueryPadraoItem.Delete;
              QueryPadraoItem.Next;
            end;

        end;
        inherited;

    end
  else
    Abort;

end;

procedure TFrmVenda.btExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir esse item?', mtInformation, [mbOk, mbNo], 0) = mrOk then
    begin
      if QueryProduto.Locate('ID_PRODUTO', QueryPadraoItemID_PRODUTO.AsInteger, []) then
        begin
          QueryProduto.Edit;

          QueryProduto.FieldByName('ESTOQUE').AsFloat:=
          QueryProduto.FieldByName('ESTOQUE').AsFloat +
          QueryPadraoItemQTDE.AsFloat;

          QueryProduto.Refresh;
          QueryPadraoItem.Delete;

          MessageDlg('Item excluido com sucesso!', mtInformation, [mbOk], 0);
        end;
    end

  else
    Abort;

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

  if (DBIdFormaPgto.Text=IntToStr(1)) or (DBIdFormaPgto.Text=IntToStr(2)) then
    begin
      DBParcela.Text:=IntToStr(1);
    end

  else
    begin
      DBParcela.SetFocus;
    end;

end;

procedure TFrmVenda.DBIdProdutoExit(Sender: TObject);
begin
  if QueryPadraoItemID_PRODUTO.AsInteger > 0 then
    if QueryProduto.locate('ID_PRODUTO', QueryPadraoItem.FieldByName('ID_PRODUTO').AsInteger, []) then
      begin
        QueryPadraoItemQTDE.AsFloat:=1;
        QueryPadraoItemDESCONTO.AsFloat:=0;

        QueryPadraoItemVL_VENDA.AsFloat:=QueryProduto.FieldByName('VL_VENDA').AsFloat;

        QueryPadraoItemTOTAL_ITEM.AsFloat:=
        (QueryPadraoItemQTDE.AsFloat * QueryPadraoItemVL_VENDA.AsFloat) + (QueryPadraoItemDESCONTO.AsFloat);

        QueryPadraoItem.Post;
        btItem.SetFocus;
      end

  else
    MessageDlg('Produto não encontrado!', mtInformation, [mbOk], 0);
    QueryPadraoItem.Cancel;
    btItem.SetFocus;

end;

procedure TFrmVenda.DBDescontoClick(Sender: TObject);
begin
  QueryPadraoItem.Edit;
end;

procedure TFrmVenda.DBDescontoExit(Sender: TObject);
begin
  QueryPadraoItemTOTAL_ITEM.AsFloat:=
  (QueryPadraoItemQTDE.AsFloat * QueryPadraoItemVL_VENDA.AsFloat) + (QueryPadraoItemDESCONTO.AsFloat);

  QueryPadraoItem.Refresh;
end;

procedure TFrmVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  QueryCliente.Close;
  QueryProduto.Close;
  QueryFormaPgto.Close;
end;

end.
