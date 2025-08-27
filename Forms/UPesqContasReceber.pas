unit UPesqContasReceber;

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
  TFrmPesqParcelasReceber = class(TFrmPesquisaPadrao)
    QueryPesqPadraoID_VENDA: TIntegerField;
    QueryPesqPadraoID_CLIENTE: TIntegerField;
    QueryPesqPadraoNOME: TStringField;
    QueryPesqPadraoCPF: TStringField;
    QueryPesqPadraoID_SEQUENCIA: TIntegerField;
    QueryPesqPadraoVALOR_PARCELA: TFMTBCDField;
    QueryPesqPadraoDT_VENCIMENTO: TDateField;
    QueryPesqPadraoDT_PAGAMENTO: TDateField;
    QueryPesqPadraoATRASO: TIntegerField;
    QueryPesqPadraoJUROS: TFMTBCDField;
    QueryPesqPadraoVL_JUROS: TFMTBCDField;
    QueryPesqPadraoTOTAL_PAGAR: TFMTBCDField;
    QueryPesqPadraoSTATUS: TStringField;
    procedure cbChavePesquisaClick(Sender: TObject);
    procedure btPesquisaClick(Sender: TObject);
    procedure btTransferirClick(Sender: TObject);
    procedure cbChavePesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    data:Tdate;
    sequencia:integer;
  end;

var
  FrmPesqParcelasReceber: TFrmPesqParcelasReceber;

implementation

{$R *.dfm}

procedure TFrmPesqParcelasReceber.btPesquisaClick(Sender: TObject);
begin
  QueryPesqPadrao.Close;

  QueryPesqPadrao.SQL.Add('');
  QueryPesqPadrao.Params.Clear;
  QueryPesqPadrao.SQL.Clear;

  QueryPesqPadrao.SQL.Add('SELECT A.ID_VENDA, '
                            +'A.ID_CLIENTE, '
                            +'B.NOME, '
                            +'B.CPF, '
                            +'C.ID_SEQUENCIA, '
                            +'C.VALOR_PARCELA, '
                            +'C.DT_VENCIMENTO, '
                            +'C.DT_PAGAMENTO, '
                            +'C.ATRASO, '
                            +'C.JUROS, '
                            +'C.VL_JUROS, '
                            +'C.TOTAL_PAGAR, '
                            +'C.STATUS '
                          +'FROM VENDA A ');
  QueryPesqPadrao.SQL.Add('INNER JOIN CLIENTES B ON B.ID_CLIENTE=A.ID_CLIENTE');
  QueryPesqPadrao.SQL.Add('INNER JOIN CONTAS_RECEBER C ON C.ID_VENDA=A.ID_VENDA ');

  case cbChavePesquisa.ItemIndex of
    0: begin
      QueryPesqPadrao.SQL.Add('WHERE A.ID_CLIENTE =:PID_CLIENTE');
      QueryPesqPadrao.ParamByName('PID_CLIENTE').AsString:=edNome.Text;
      QueryPesqPadrao.SQL.Add('AND C.STATUS=''Em aberto''');
    end;

    1: begin
      QueryPesqPadrao.SQL.Add('WHERE B.NOME LIKE :PNOME');
      QueryPesqPadrao.ParamByName('PNOME').AsString:='%' + edNome.Text + '%';
      QueryPesqPadrao.SQL.Add('AND C.STATUS=''Em aberto''');
    end;

    2: begin
      QueryPesqPadrao.SQL.Add('WHERE B.CPF =:PCPF');
      QueryPesqPadrao.ParamByName('PCPF').AsString:=edNome.Text;
      QueryPesqPadrao.SQL.Add('AND C.STATUS=''Em aberto''');
    end;

  end;

  QueryPesqPadrao.Open;

  lbResultado.Caption:=IntToStr(QueryPesqPadrao.RecordCount);

  if QueryPesqPadrao.IsEmpty then
    begin
      MessageDlg('Nenhum registro encontrado!', mtInformation, [mbOk], 0);
    end;

end;

procedure TFrmPesqParcelasReceber.btTransferirClick(Sender: TObject);
begin
  inherited;

  if QueryPesqPadrao.RecordCount > 0 then
    begin
      codigo:=QueryPesqPadraoID_VENDA.AsInteger;
      data:=QueryPesqPadraoDT_VENCIMENTO.AsDateTime;
      sequencia:=QueryPesqPadraoID_SEQUENCIA.AsInteger;
    end

  else
    abort;
end;

procedure TFrmPesqParcelasReceber.cbChavePesquisaChange(Sender: TObject);
begin
  //inherited;

end;

procedure TFrmPesqParcelasReceber.cbChavePesquisaClick(Sender: TObject);
begin
  inherited;

  edNome.Clear;
  edNome.SetFocus
end;

end.
