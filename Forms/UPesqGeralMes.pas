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
    RadioGroup1: TRadioGroup;
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
    procedure btSairClick(Sender: TObject);
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

procedure TFrmPesqGeralMes.btSairClick(Sender: TObject);
begin
  Close;
end;

end.
