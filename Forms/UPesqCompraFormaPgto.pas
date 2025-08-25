unit UPesqCompraFormaPgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFormPesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxSmartMemo, frxClass, frxExportBaseDialog,
  frxExportPDF, frxDBSet, frCoreClasses, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrmPesqCompraFormaPgto = class(TFrmPesquisaPadrao)
    QueryPesqPadraoID_FORMA_PGTO: TIntegerField;
    QueryPesqPadraoDESCRICAO: TStringField;
    QueryPesqPadraoQTDE_COMPRA: TIntegerField;
    QueryPesqPadraoVALOR_COMPRA: TFMTBCDField;
    lbValorCompras: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btPesquisaClick(Sender: TObject);
    procedure somaCompra();
    procedure btImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqCompraFormaPgto: TFrmPesqCompraFormaPgto;

implementation

{$R *.dfm}

uses UDataM;

procedure TFrmPesqCompraFormaPgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  QueryPesqPadrao.Close;
end;

procedure TFrmPesqCompraFormaPgto.FormShow(Sender: TObject);
begin
  mkInicio.SetFocus;

  lbResultado.Hide;
  lbValorCompras.Hide;
end;

procedure TFrmPesqCompraFormaPgto.somaCompra;
var soma:Currency;

begin
  soma:=0;
  QueryPesqPadrao.First;

  while not QueryPesqPadrao.Eof do
    begin
      soma:=soma + QueryPesqPadraoVALOR_COMPRA.AsCurrency;
      QueryPesqPadrao.Next;
    end;

  lbValorCompras.Show;
  lbValorCompras.Caption:='Total em compras: R$' + FormatFloat('##,##0.00',(soma));
end;

procedure TFrmPesqCompraFormaPgto.btPesquisaClick(Sender: TObject);
begin
  QueryPesqPadrao.Close;

  QueryPesqPadrao.SQL.Add('');
  QueryPesqPadrao.Params.Clear;
  QueryPesqPadrao.SQL.Clear;

  QueryPesqPadrao.SQL.Add('SELECT A.ID_FORMA_PGTO, '
                          +'B.DESCRICAO, '
                          +'COUNT(A.ID_COMPRA) AS QTDE_COMPRA, '
                          +'SUM(A.VALOR) AS VALOR_TOTAL '
                        +'FROM COMPRA A');
  QueryPesqPadrao.SQL.Add('INNER JOIN FORMA_PGTO B ON B.ID_FORMA_PGTO=A.ID_FORMA_PGTO');
  QueryPesqPadrao.SQL.Add('WHERE A.CADASTRO BETWEEN :PDATA_INI AND :PDATA_FIM');
  QueryPesqPadrao.ParamByName('PDATA_INI').AsDate:=StrToDate(mkInicio.Text);
  QueryPesqPadrao.ParamByName('PDATA_FIM').AsDate:=StrToDate(mkFim.Text);
  QueryPesqPadrao.SQL.Add('GROUP BY A.ID_FORMA_PGTO, B.DESCRICAO');
  QueryPesqPadrao.SQL.Add('ORDER BY A.ID_FORMA_PGTO, B.DESCRICAO');

  QueryPesqPadrao.Open; // Mostrar o resultado da consulta

  lbResultado.Show;
  lbResultado.Caption:='Total de registros: ' +
  IntToStr(QueryPesqPadrao.RecordCount); // Mostra quantos resultados foram encontrados

  somaCompra; // procedure que soma os valores das compras

  if QueryPesqPadrao.IsEmpty then
    begin
      MessageDlg('Nenhum registro encontrado!', mtInformation, [mbOk], 0);
    end;

end;

procedure TFrmPesqCompraFormaPgto.btImprimirClick(Sender: TObject);
var caminho: string;

begin
  caminho:=ExtractFilePath(Application.ExeName);

  if FrmPesqCompraFormaPgto.RelPesqPadrao.LoadFromFile(caminho + 'RelCompraFormaPgto.fr3') then
    begin
      RelPesqPadrao.Clear;
      RelPesqPadrao.LoadFromFile(extractfilepath(application.ExeName) + 'RelCompraFormaPgto.fr3');
      RelPesqPadrao.Variables['DataIni']:=QuotedStr(mkInicio.Text);
      RelPesqPadrao.Variables['DataFim']:=QuotedStr(mkFim.Text);
      RelPesqPadrao.Variables['Qtde.']:=QuotedStr(lbResultado.Caption);
      RelPesqPadrao.Variables['ValorCompra']:=QuotedStr(lbValorCompras.Caption);
      RelPesqPadrao.Variables['Nome']:=QuotedStr(DM.Usuario);
      RelPesqPadrao.PrepareReport(true);
      RelPesqPadrao.ShowPreparedReport;
    end

    else
      MessageDlg('Relatório não encontrado!', mtError, [mbOk], 0);

end;

end.
