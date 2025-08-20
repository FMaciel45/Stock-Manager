unit UCompra1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UMovimentoPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, frxSmartMemo, frxClass, frxDBSet, frCoreClasses, Vcl.ComCtrls;

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
    QueryPadraoCOND_PGTO: TIntegerField;
    Label14: TLabel;
    DBCondPgto: TDBEdit;
    QueryContaPagar: TFDQuery;
    DSContaPagar: TDataSource;
    QueryContaPagarID_SEQUENCIA: TIntegerField;
    QueryContaPagarID_COMPRA: TIntegerField;
    QueryContaPagarVALOR_PARCELA: TFMTBCDField;
    QueryContaPagarDT_VENCIMENTO: TDateField;
    QueryContaPagarDT_PAGAMENTO: TDateField;
    QueryContaPagarATRASO: TIntegerField;
    QueryContaPagarJUROS: TFMTBCDField;
    QueryContaPagarVL_JUROS: TFMTBCDField;
    QueryContaPagarTOTAL_PAGAR: TFMTBCDField;
    QueryContaPagarSTATUS: TStringField;
    btBuscaCliente: TBitBtn;
    btBuscaFormaPgto: TBitBtn;
    procedure btNovoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBIdProdutoExit(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure DBIdFormaPgtoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btExcluirClick(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
    procedure DBDescontoClick(Sender: TObject);
    procedure DBDescontoExit(Sender: TObject);
    procedure DBQuantidadeClick(Sender: TObject);
    procedure DBQuantidadeExit(Sender: TObject);
    procedure btBuscaClienteClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCompra1: TFrmCompra1;

implementation

{$R *.dfm}

uses UDataM, UPesqCompra, UPesqFornecedor;

procedure TFrmCompra1.btNovoClick(Sender: TObject);
begin
  inherited;

  QueryPadraoCADASTRO.AsDateTime:=Date;
  QueryPadraoUSUARIO.AsString:=DM.usuario;
  QueryPadraoVALOR.AsCurrency:=0;
  DBIdFornecedor.SetFocus;
end;

procedure TFrmCompra1.btDeletarClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir todo o registro?', mtInformation, [mbOk, mbNo], 0)=mrOk then
    begin
      QueryContaPagar.First;

      while not QueryContaPagar.Eof do
        begin
          QueryContaPagar.Delete;
          QueryContaPagar.Next;
        end;

      QueryPadraoItem.First;

      while QueryPadraoItem.RecordCount > 0 do
        begin
          if QueryProduto.Locate('ID_PRODUTO', QueryPadraoItemID_PRODUTO.AsInteger, []) then
            begin
              QueryProduto.Edit;

              QueryProduto.FieldByName('ESTOQUE').AsFloat:=
              QueryProduto.FieldByName('ESTOQUE').AsFloat-QueryPadraoItemQTDE.AsFloat;

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

procedure TFrmCompra1.btBuscaClienteClick(Sender: TObject);
begin
  if QueryPadrao.State in [dsEdit, dsInsert] then
    begin
      FrmPesqFornecedor:= TFrmPesqFornecedor.Create(self);
      FrmPesqFornecedor.ShowModal;

      try
        if FrmPesqFornecedor.codigo > 0 then
          begin
            QueryPadraoID_FORNECEDOR.AsInteger:=FrmPesqFornecedor.codigo;
          end;

      finally
        FrmPesqFornecedor.Free;
        FrmPesqFornecedor:= nil;
      end;

    end;

end;

procedure TFrmCompra1.btCancelarClick(Sender: TObject);
begin

end;

// Criar formulário de pesquisa de Formas de Pagamento depois

{ procedure TFrmCompra1.btBuscaFormaPgtoClick(Sender: TObject);
begin
  if QueryPadrao.State in [dsEdit, dsInsert] then
    begin
      FrmPesqFormasPgto:= TFrmPesqFormasPgto.Create(self);
      FrmPesqFormasPgto.ShowModal;

      try
        if FrmPesqFormasPgto.codigo > 0 then
          begin
            QueryPadraoID_FORMA_PGTO.AsInteger:=FrmPesqFormasPgto.codigo;
          end;

      finally
        FrmPesqFormasPgto.Free;
        FrmPesqFormasPgto:= nil;
      end;

    end;

end; }

procedure TFrmCompra1.DBIdFormaPgtoExit(Sender: TObject); // Usar essa ou a procedure abaixo
begin
  if not QueryFormaPgto.Locate('ID_FORMA_PGTO', QueryFormaPgto.FieldByName('ID_FORMA_PGTO').AsInteger, []) then
    begin
      MessageDlg('Forma de pagamento não encontrada!', mtInformation, [mbOk], 0);
      DBIdFormaPgto.SetFocus;
      Abort;
    end;

  if (DBIdFormaPgto.Text=IntToStr(1)) or (DBIdFormaPgto.Text=IntToStr(2)) then
    begin
      DBCondPgto.Text:=IntToStr(1);
    end

  else
    begin
      DBCondPgto.SetFocus;
    end;

end;

{ procedure TFrmCompra1.DBIdFormaPgtoExit(Sender: TObject); // Usar esse ou a procedure acima
begin
  if (DBIdFormaPgto.Text=IntToStr(1)) or (DBIdFormaPgto.Text=IntToStr(2)) then
    begin
      DBCondPgto.Text:=IntToStr(1);
    end

  else
    DBCondPgto.SetFocus;

end; }

procedure TFrmCompra1.BitBtn1Click(Sender: TObject); // Botão ITEM
var proximo:integer;

begin
  QueryPadraoItem.Open;
  QueryPadraoItem.Last;

  proximo:=QueryPadraoItemID_SEQUENCIA.AsInteger + 1;
  QueryPadraoItem.Append;
  QueryPadraoItemID_SEQUENCIA.AsInteger:=proximo;

  DBIdProduto.SetFocus;
end;

procedure TFrmCompra1.btOkClick(Sender: TObject);
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
          QueryProduto.FieldByName('ESTOQUE').AsFloat +
          QueryPadraoItemQTDE.AsFloat;

          QueryPadraoItem.Next;
        end;
    end;

  QueryProduto.Refresh;
  MessageDlg('Estoque atualizado!', mtInformation, [mbOk], 0);

  QueryContaPagar.Open;

  parcela:=1;

  if (QueryPadraoID_FORMA_PGTO.Value=1) or (QueryPadraoID_FORMA_PGTO.Value=2) then // À vista
    begin
      while parcela <= QueryPadraoCOND_PGTO.AsInteger do
        begin
          QueryContaPagar.Insert;

          QueryContaPagarID_SEQUENCIA.AsInteger:=parcela;

          QueryContaPagar.FieldByName('VALOR_PARCELA').AsFloat:=QueryPadraoVALOR.AsFloat/QueryPadraoCOND_PGTO.Value;
          QueryContaPagar.FieldByName('DT_VENCIMENTO').Value:=date;
          QueryContaPagar.FieldByName('DT_PAGAMENTO').Value:=date;
          QueryContaPagar.FieldByName('ATRASO').AsFloat:=0;
          QueryContaPagar.FieldByName('JUROS').AsFloat:=0;
          QueryContaPagar.FieldByName('VL_JUROS').AsFloat:=0;
          QueryContaPagar.FieldByName('TOTAL_PAGAR').AsFloat:=QueryContaPagar.FieldByName('VALOR_PARCELA').AsFloat;
          QueryContaPagar.FieldByName('STATUS').AsString:='Recebido';

          QueryContaPagar.Post;

          MessageDlg('Parcelas geradas!', mtInformation, [mbOk], 0);

          inc(parcela);
          QueryContaPagar.Next;
        end;

    end

    else // Parcelado
      QueryContaPagar.First;

      while parcela <= QueryPadraoCOND_PGTO.AsInteger do
        begin
          QueryContaPagar.Insert;

          QueryContaPagarID_SEQUENCIA.AsInteger:=parcela;

          QueryContaPagar.FieldByName('VALOR_PARCELA').AsFloat:=QueryPadraoVALOR.AsFloat/QueryPadraoCOND_PGTO.Value;
          QueryContaPagar.FieldByName('DT_VENCIMENTO').Value:=date+(parcela*30);
          QueryContaPagar.FieldByName('ATRASO').AsFloat:=0;
          QueryContaPagar.FieldByName('JUROS').AsFloat:=0;
          QueryContaPagar.FieldByName('VL_JUROS').AsFloat:=0;
          QueryContaPagar.FieldByName('TOTAL_PAGAR').AsFloat:=QueryContaPagar.FieldByName('VALOR_PARCELA').AsFloat;
          QueryContaPagar.FieldByName('STATUS').AsString:='Em aberto';

          QueryContaPagar.Post;
          inc(parcela);
        end;

      // Tratamento de diferença entre valores quando pagamento é parcelado
      soma:=soma+QueryPadraoCOND_PGTO.Value*QueryContaPagar.FieldByName('VALOR_PARCELA').AsFloat;
      if soma > QueryPadraoVALOR.AsFloat then
        begin
          diferenca:=soma-QueryPadraoVALOR.AsFloat;

          QueryContaPagar.Last;
          QueryContaPagar.Edit;

          QueryContaPagar.FieldByName('VALOR_PARCELA').AsFloat:=QueryContaPagar.FieldByName('VALOR_PARCELA').AsFloat-diferenca;

          QueryContaPagar.Refresh;
        end;

end;

procedure TFrmCompra1.btExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir esse item?', mtInformation, [mbOk, mbNo], 0) = mrOk then
    begin
      if QueryProduto.Locate('ID_PRODUTO', QueryPadraoItemID_PRODUTO.AsInteger, []) then
        begin
          QueryProduto.Edit;

          QueryProduto.FieldByName('ESTOQUE').AsFloat:=
          QueryProduto.FieldByName('ESTOQUE').AsFloat -
          QueryPadraoItemQTDE.AsFloat;

          QueryProduto.Refresh;
          QueryPadraoItem.Delete;

          MessageDlg('Item excluido com sucesso!', mtInformation, [mbOk], 0);
        end;
    end

  else
    Abort;

end;

procedure TFrmCompra1.btImprimirClick(Sender: TObject);
var caminho: string;
var codigoCompra: integer;

begin
  codigoCompra:=QueryPadraoItemID_COMPRA.AsInteger;

  QueryPadrao.Close;
  QueryPadraoItem.Open;

  QueryPadrao.SQL.Add('');
  QueryPadrao.Params.Clear;
  QueryPadrao.SQL.Clear;

  QueryPadrao.SQL.Add('SELECT A.ID_COMPRA, '
                      +'A.ID_FORNECEDOR, '
                      +'B.NOME, '
                      +'A.ID_FORMA_PGTO, '
                      +'A.COND_PGTO, '
                      +'C.DESCRICAO, '
                      +'A.USUARIO, '
                      +'A.VALOR, '
                      +'A.CADASTRO '
                  + 'FROM COMPRA A, FORNECEDOR B, FORMA_PGTO C '
                  +'WHERE A.ID_FORNECEDOR=B.ID_FORNECEDOR '
                  +'AND C.ID_FORMA_PGTO=A.ID_FORMA_PGTO ');

  QueryPadrao.SQL.Add('AND A.ID_COMPRA =:ID_COMPRA');
  QueryPadrao.Params.ParamByName('ID_COMPRA').AsInteger:=codigoCompra;

  QueryPadrao.Open;
  QueryPadraoItem.Open;

  FrmCompra1.Close;

  caminho:=ExtractFilePath(Application.ExeName);

  if FrmCompra1.RelReciboCompra.LoadFromFile(caminho + 'RelReciboCompra.fr3') then
    begin
      RelReciboCompra.Clear;
      RelReciboCompra.LoadFromFile(extractfilepath(application.ExeName) + 'RelReciboCompra.fr3');
      RelReciboCompra.PrepareReport(true);
      RelReciboCompra.ShowPreparedReport;
    end

    else
      MessageDlg('Relatório não encontrado!', mtError, [mbOk], 0);

end;

{ procedure TFrmCompra1.DBIdFormaPgtoExit(Sender: TObject);
begin
  if (DBIdFormaPgto.Text=IntToStr(1)) or (DBIdFormaPgto.Text=IntToStr(2)) then
    begin
      DBCondPgto.Text:=IntToStr(1);
    end

  else
    DBCondPgto.SetFocus;

end; }

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

procedure TFrmCompra1.DBQuantidadeClick(Sender: TObject);
begin
  QueryPadraoItem.Edit;
end;

procedure TFrmCompra1.DBQuantidadeExit(Sender: TObject);
begin
  QueryPadraoItemTOTAL_ITEM.AsFloat:=
  (QueryPadraoItemQTDE.AsFloat * QueryPadraoItemVL_CUSTO.AsFloat) + (QueryPadraoItemDESCONTO.AsFloat);

  QueryPadraoItem.Refresh;
end;

procedure TFrmCompra1.DBDescontoClick(Sender: TObject);
begin
  QueryPadraoItem.Edit;
end;

procedure TFrmCompra1.DBDescontoExit(Sender: TObject);
begin
  QueryPadraoItemTOTAL_ITEM.AsFloat:=
  (QueryPadraoItemQTDE.AsFloat * QueryPadraoItemVL_CUSTO.AsFloat) - (QueryPadraoItemDESCONTO.AsFloat);

  QueryPadraoItem.Refresh;
end;

procedure TFrmCompra1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QueryFornecedor.Close;
  QueryFormaPgto.Close;
  QueryContaPagar.Close;
  QueryPadrao.Close;
  QueryPadraoItem.Close;
end;

end.
