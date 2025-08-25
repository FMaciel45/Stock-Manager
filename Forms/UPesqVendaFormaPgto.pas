unit UPesqVendaFormaPgto;

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
  TFrmPesqVendaFormaPgto = class(TFrmPesquisaPadrao)
    QueryPesqPadraoID_FORMA_PGTO: TIntegerField;
    QueryPesqPadraoDESCRICAO: TStringField;
    QueryPesqPadraoQTDE_VENDA: TIntegerField;
    QueryPesqPadraoVALOR_VENDA: TFMTBCDField;
    lbValorVendas: TLabel;
    procedure btPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure somaVenda();
    procedure btImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqVendaFormaPgto: TFrmPesqVendaFormaPgto;

implementation

{$R *.dfm}

uses UDataM;

procedure TFrmPesqVendaFormaPgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  QueryPesqPadrao.Close;
end;

procedure TFrmPesqVendaFormaPgto.FormShow(Sender: TObject);
begin
  mkInicio.SetFocus;

  lbResultado.Hide;
  lbValorVendas.Hide;
end;

procedure TFrmPesqVendaFormaPgto.somaVenda;
var soma:Currency;

begin
  soma:=0;
  QueryPesqPadrao.First;

  while not QueryPesqPadrao.Eof do
    begin
      soma:=soma + QueryPesqPadraoVALOR_VENDA.AsCurrency;
      QueryPesqPadrao.Next;
    end;

  lbValorVendas.Show;
  lbValorVendas.Caption:='Total em vendas: R$' + FormatFloat('##,##0.00',(soma));
end;

procedure TFrmPesqVendaFormaPgto.btPesquisaClick(Sender: TObject);
begin
  QueryPesqPadrao.Close;

  QueryPesqPadrao.SQL.Add('');
  QueryPesqPadrao.Params.Clear;
  QueryPesqPadrao.SQL.Clear;

  QueryPesqPadrao.SQL.Add('SELECT A.ID_FORMA_PGTO, '
                          +'B.DESCRICAO, '
                          +'COUNT(A.ID_VENDA) AS QTDE_VENDA, '
                          +'SUM(A.VALOR) AS VALOR_TOTAL '
                        +'FROM VENDA A');
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

  somaVenda; // procedure que soma os valores das vendas

  if QueryPesqPadrao.IsEmpty then
    begin
      MessageDlg('Nenhum registro encontrado!', mtInformation, [mbOk], 0);
    end;

end;

procedure TFrmPesqVendaFormaPgto.btImprimirClick(Sender: TObject);
var caminho: string;

begin
  caminho:=ExtractFilePath(Application.ExeName);

  if FrmPesqVendaFormaPgto.RelPesqPadrao.LoadFromFile(caminho + 'RelVendaFormaPgto.fr3') then
    begin
      RelPesqPadrao.Clear;
      RelPesqPadrao.LoadFromFile(extractfilepath(application.ExeName) + 'RelVendaFormaPgto.fr3');
      RelPesqPadrao.Variables['DataIni']:=QuotedStr(mkInicio.Text);
      RelPesqPadrao.Variables['DataFim']:=QuotedStr(mkFim.Text);
      RelPesqPadrao.Variables['Qtde.']:=QuotedStr(lbResultado.Caption);
      RelPesqPadrao.Variables['ValorVenda']:=QuotedStr(lbValorVendas.Caption);
      RelPesqPadrao.Variables['Nome']:=QuotedStr(DM.Usuario);
      RelPesqPadrao.PrepareReport(true);
      RelPesqPadrao.ShowPreparedReport;
    end

    else
      MessageDlg('Relatório não encontrado!', mtError, [mbOk], 0);

end;

end.
