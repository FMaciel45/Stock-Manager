unit UPesqGeralMes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxSmartMemo, frxClass, frxDBSet, frCoreClasses,
  frxExportBaseDialog, frxExportPDF;

type
  TFrmPesqGeralMes = class(TForm)
    Panel1: TPanel;
    lbFimPesq: TLabel;
    lbInicioPesq: TLabel;
    mkInicio: TMaskEdit;
    mkFim: TMaskEdit;
    btTransferir: TBitBtn;
    btImprimir: TBitBtn;
    btPesquisa: TBitBtn;
    RGOpcao: TRadioGroup;
    QueryCompra: TFDQuery;
    QueryVenda: TFDQuery;
    QueryContasPagar: TFDQuery;
    QueryContasReceber: TFDQuery;
    DSCompra: TDataSource;
    DSVenda: TDataSource;
    DSContasPagar: TDataSource;
    DSContasReceber: TDataSource;
    QueryContasPagarAPagar: TFDQuery;
    DSContasPagarAPagar: TDataSource;
    QueryContasReceberAReceber: TFDQuery;
    DSContasReceberAReceber: TDataSource;
    Panel2: TPanel;
    RelatorioGeral: TfrxReport;
    frxCompra: TfrxDBDataset;
    frxVenda: TfrxDBDataset;
    frxContasPagar: TfrxDBDataset;
    frxContasReceber: TfrxDBDataset;
    frxContasPagarAPagar: TfrxDBDataset;
    frxContasReceberAReceber: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    btSair: TBitBtn;
    QueryCompraMES: TSmallintField;
    QueryCompraANO: TSmallintField;
    QueryCompraVALOR_COMPRA: TFMTBCDField;
    QueryVendaMES: TSmallintField;
    QueryVendaANO: TSmallintField;
    QueryVendaVALOR_VENDA: TFMTBCDField;
    QueryContasPagarMES: TSmallintField;
    QueryContasPagarANO: TSmallintField;
    QueryContasPagarTOTAL_PAGO: TFMTBCDField;
    QueryContasReceberMES: TSmallintField;
    QueryContasReceberANO: TSmallintField;
    QueryContasReceberTOTAL_RECEBIDO: TFMTBCDField;
    QueryContasPagarAPagarMES: TSmallintField;
    QueryContasPagarAPagarANO: TSmallintField;
    QueryContasPagarAPagarVALOR_A_PAGAR: TFMTBCDField;
    QueryContasReceberAReceberMES: TSmallintField;
    QueryContasReceberAReceberANO: TSmallintField;
    QueryContasReceberAReceberVALOR_A_RECEBER: TFMTBCDField;
    procedure btSairClick(Sender: TObject);
    procedure btPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqGeralMes: TFrmPesqGeralMes;

implementation

{$R *.dfm}

uses UDataM;

procedure TFrmPesqGeralMes.btPesquisaClick(Sender: TObject);
begin
  case RGOpcao.ItemIndex of
    0: begin // Compras e vendas por mês
      QueryCompra.Close;

      QueryCompra.SQL.Add('');
      QueryCompra.Params.Clear;
      QueryCompra.SQL.Clear;

      QueryCompra.SQL.Add('SELECT EXTRACT (MONTH FROM A.CADASTRO) AS MES, '
                            +'EXTRACT (YEAR FROM A.CADASTRO) AS ANO, '
                            +'SUM (A.VALOR) AS VALOR_COMPRA '
                          +'FROM COMPRA A');
      QueryCompra.SQL.Add('WHERE A.CADASTRO BETWEEN :PDATAINI AND :PDATAFIM');
      QueryCompra.ParamByName('PDATAINI').AsDate:=StrToDate(mkInicio.Text);
      QueryCompra.ParamByName('PDATAFIM').AsDate:=StrToDate(mkFim.Text);
      QueryCompra.SQL.Add('GROUP BY EXTRACT (MONTH FROM A.CADASTRO), EXTRACT (YEAR FROM A.CADASTRO)');
      QueryCompra.SQL.Add('ORDER BY EXTRACT (MONTH FROM A.CADASTRO)');

      QueryCompra.Open;

      QueryVenda.Close;

      QueryVenda.SQL.Add('');
      QueryVenda.Params.Clear;
      QueryVenda.SQL.Clear;

      QueryVenda.SQL.Add('SELECT EXTRACT (MONTH FROM A.CADASTRO) AS MES, '
                            +'EXTRACT (YEAR FROM A.CADASTRO) AS ANO, '
                            +'SUM (A.VALOR) AS VALOR_VENDA '
                          +'FROM VENDA A');
      QueryVenda.SQL.Add('WHERE A.CADASTRO BETWEEN :PDATAINI AND :PDATAFIM');
      QueryVenda.ParamByName('PDATAINI').AsDate:=StrToDate(mkInicio.Text);
      QueryVenda.ParamByName('PDATAFIM').AsDate:=StrToDate(mkFim.Text);
      QueryVenda.SQL.Add('GROUP BY EXTRACT (MONTH FROM A.CADASTRO), EXTRACT (YEAR FROM A.CADASTRO)');
      QueryVenda.SQL.Add('ORDER BY EXTRACT (MONTH FROM A.CADASTRO)');

      QueryVenda.Open;
    end;

    1: begin // Total pago e recebido por mês
      QueryContasPagar.Close;

      QueryContasPagar.SQL.Add('');
      QueryContasPagar.Params.Clear;
      QueryContasPagar.SQL.Clear;

      QueryContasPagar.SQL.Add('SELECT EXTRACT (MONTH FROM A.DATA_PAGAMENTO) AS MES, '
                            +'EXTRACT (YEAR FROM A.DATA_PAGAMENTO) AS ANO, '
                            +'SUM (A.TOTAL_PAGAR) AS TOTAL_PAGO '
                          +'FROM CONTAS_PAGAR A');
      QueryContasPagar.SQL.Add('WHERE A.DATA_PAGAMENTO BETWEEN :PDATAINI AND :PDATAFIM');
      QueryContasPagar.ParamByName('PDATAINI').AsDate:=StrToDate(mkInicio.Text);
      QueryContasPagar.ParamByName('PDATAFIM').AsDate:=StrToDate(mkFim.Text);
      QueryContasPagar.SQL.Add('GROUP BY EXTRACT (MONTH FROM A.DATA_PAGAMENTO), EXTRACT (YEAR FROM A.DATA_PAGAMENTO)');
      QueryContasPagar.SQL.Add('ORDER BY EXTRACT (MONTH FROM A.DATA_PAGAMENTO)');

      QueryContasPagar.Open;

      QueryContasReceber.Close;

      QueryContasReceber.SQL.Add('');
      QueryContasReceber.Params.Clear;
      QueryContasReceber.SQL.Clear;

      QueryContasReceber.SQL.Add('SELECT EXTRACT (MONTH FROM A.DATA_PAGAMENTO) AS MES, '
                            +'EXTRACT (YEAR FROM A.DATA_PAGAMENTO) AS ANO, '
                            +'SUM (A.TOTAL_PAGAR) AS TOTAL_RECEBIDO '
                          +'FROM CONTAS_RECEBER A');
      QueryContasReceber.SQL.Add('WHERE A.DATA_PAGAMENTO BETWEEN :PDATAINI AND :PDATAFIM');
      QueryContasReceber.ParamByName('PDATAINI').AsDate:=StrToDate(mkInicio.Text);
      QueryContasReceber.ParamByName('PDATAFIM').AsDate:=StrToDate(mkFim.Text);
      QueryContasReceber.SQL.Add('GROUP BY EXTRACT (MONTH FROM A.DATA_PAGAMENTO), EXTRACT (YEAR FROM A.DATA_PAGAMENTO)');
      QueryContasReceber.SQL.Add('ORDER BY EXTRACT (MONTH FROM A.DATA_PAGAMENTO)');

      QueryContasReceber.Open;
    end;

    2: begin // Total a ser pago e recebido por mês
      QueryContasPagarAPagar.Close;

      QueryContasPagarAPagar.SQL.Add('');
      QueryContasPagarAPagar.Params.Clear;
      QueryContasPagarAPagar.SQL.Clear;

      QueryContasPagarAPagar.SQL.Add('SELECT EXTRACT (MONTH FROM A.DT_VENCIMENTO) AS MES, '
                            +'EXTRACT (YEAR FROM A.DT_VENCIMENTO) AS ANO, '
                            +'SUM (A.VALOR_PARCELA) AS VALOR_A_PAGAR '
                          +'FROM CONTAS_PAGAR A');
      QueryContasPagarAPagar.SQL.Add('WHERE A.DT_VENCIMENTO BETWEEN :PDATAINI AND :PDATAFIM');
      //QueryContasPagarAPagar.SQL.Add('AND A.STATUS=Em aberto');
      QueryContasPagarAPagar.ParamByName('PDATAINI').AsDate:=StrToDate(mkInicio.Text);
      QueryContasPagarAPagar.ParamByName('PDATAFIM').AsDate:=StrToDate(mkFim.Text);
      QueryContasPagarAPagar.SQL.Add('GROUP BY EXTRACT (MONTH FROM A.DT_VENCIMENTO), EXTRACT (YEAR FROM A.DT_VENCIMENTO)');
      QueryContasPagarAPagar.SQL.Add('ORDER BY EXTRACT (MONTH FROM A.DT_VENCIMENTO)');

      QueryContasPagarAPagar.Open;

      QueryContasReceberAReceber.Close;

      QueryContasReceberAReceber.SQL.Add('');
      QueryContasReceberAReceber.Params.Clear;
      QueryContasReceberAReceber.SQL.Clear;

      QueryContasReceberAReceber.SQL.Add('SELECT EXTRACT (MONTH FROM A.DT_VENCIMENTO) AS MES, '
                            +'EXTRACT (YEAR FROM A.DT_VENCIMENTO) AS ANO, '
                            +'SUM (A.VALOR_PARCELA) AS VALOR_A_RECEBER '
                          +'FROM CONTAS_RECEBER A');
      QueryContasReceberAReceber.SQL.Add('WHERE A.DT_VENCIMENTO BETWEEN :PDATAINI AND :PDATAFIM');
      //QueryContasReceberAReceber.SQL.Add('AND A.STATUS=Em aberto');
      QueryContasReceberAReceber.ParamByName('PDATAINI').AsDate:=StrToDate(mkInicio.Text);
      QueryContasReceberAReceber.ParamByName('PDATAFIM').AsDate:=StrToDate(mkFim.Text);
      QueryContasReceberAReceber.SQL.Add('GROUP BY EXTRACT (MONTH FROM A.DT_VENCIMENTO), EXTRACT (YEAR FROM A.DT_VENCIMENTO)');
      QueryContasReceberAReceber.SQL.Add('ORDER BY EXTRACT (MONTH FROM A.DT_VENCIMENTO)');

      QueryContasReceberAReceber.Open;
    end;

  end;

end;

procedure TFrmPesqGeralMes.btSairClick(Sender: TObject);
begin
  Close;
end;

end.
