unit URecebimentoVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons;

type
  TFrmRecebimentoVenda = class(TForm)
    Panel1: TPanel;
    RGFormaPgto: TRadioGroup;
    DBDescricaoPgto: TDBEdit;
    DBParcela: TDBEdit;
    DBIdFormaPgto: TDBEdit;
    DBValor: TDBEdit;
    DBTroco: TDBEdit;
    DBValorPago: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btOk: TBitBtn;
    btImprimir: TBitBtn;
    procedure RGFormaPgtoClick(Sender: TObject);
    procedure DBValorPagoExit(Sender: TObject);
    procedure btOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRecebimentoVenda: TFrmRecebimentoVenda;

implementation

{$R *.dfm}

uses UVenda;

procedure TFrmRecebimentoVenda.RGFormaPgtoClick(Sender: TObject);
begin
  FrmVenda.QueryPadrao.Edit;
  //FrmVenda.QueryFormaPgto.Edit;

  case RGFormaPgto.ItemIndex of
    0:begin // Venda à vista (id = 1)
      FrmVenda.QueryPadraoID_FORMA_PGTO.AsInteger:=1;
      FrmVenda.QueryPadraoPARCELA.AsInteger:=1;

      DBValorPago.SetFocus;
    end;

    1:begin // Débito (id = 2)
      FrmVenda.QueryPadraoID_FORMA_PGTO.AsInteger:=2;
      FrmVenda.QueryPadraoPARCELA.AsInteger:=1;
      FrmVenda.QueryPadraoDINHEIRO.AsFloat:=FrmVenda.QueryPadraoVALOR.AsFloat;
      FrmVenda.QueryPadraoTROCO.AsFloat:=0;
    end;

    2:begin // Crédito (id = 3)
      FrmVenda.QueryPadraoID_FORMA_PGTO.AsInteger:=3;

      DBParcela.SetFocus;

      FrmVenda.QueryPadraoDINHEIRO.AsFloat:=FrmVenda.QueryPadraoVALOR.AsFloat;
      FrmVenda.QueryPadraoTROCO.AsFloat:=0;
    end;

    3:begin // Nota Promissória (id = 4)
      FrmVenda.QueryPadraoID_FORMA_PGTO.AsInteger:=4;

      DBParcela.SetFocus;

      FrmVenda.QueryPadraoDINHEIRO.AsFloat:=0;
      FrmVenda.QueryPadraoTROCO.AsFloat:=0;
    end;

  end;

end;

procedure TFrmRecebimentoVenda.DBValorPagoExit(Sender: TObject);
begin // Troco
  FrmVenda.QueryPadraoTROCO.AsFloat:=
  FrmVenda.QueryPadraoDINHEIRO.AsFloat-FrmVenda.QueryPadraoVALOR.AsFloat;
end;

procedure TFrmRecebimentoVenda.btOkClick(Sender: TObject);
var parcela:integer;
var diferenca, soma:Real;

begin
  FrmVenda.QueryPadrao.Refresh;
  FrmVenda.QueryContaReceber.Open;

  parcela:=1;

  if (DBIdFormaPgto.Text=IntToStr(1)) or (DBIdFormaPgto.Text=IntToStr(2)) then // À vista
    begin
      while parcela <= FrmVenda.QueryPadraoPARCELA.AsInteger do
        begin
          FrmVenda.QueryContaReceber.Insert;

          FrmVenda.QueryContaReceberID_SEQUENCIA.AsInteger:=parcela;

          FrmVenda.QueryContaReceber.FieldByName('VALOR_PARCELA').AsFloat:=FrmVenda.QueryPadraoVALOR.AsFloat;

          FrmVenda.QueryContaReceber.FieldByName('DT_VENCIMENTO').Value:=date;
          FrmVenda.QueryContaReceber.FieldByName('DT_PAGAMENTO').Value:=date;

          FrmVenda.QueryContaReceber.FieldByName('ATRASO').AsFloat:=0;
          FrmVenda.QueryContaReceber.FieldByName('JUROS').AsFloat:=0;
          FrmVenda.QueryContaReceber.FieldByName('VL_JUROS').AsFloat:=0;

          FrmVenda.QueryContaReceber.FieldByName('TOTAL_PAGAR').AsFloat:=FrmVenda.QueryContaReceber.FieldByName('VALOR_PARCELA').AsFloat;

          FrmVenda.QueryContaReceber.FieldByName('STATUS').AsString:='Recebido';

          FrmVenda.QueryContaReceber.Post;

          MessageDlg('Parcelas geradas!', mtInformation, [mbOk], 0);

          FrmRecebimentoVenda.Close;
          Abort;
        end;

    end

  else // Cartão de Crédito
    if DBIdFormaPgto.Text=IntToStr(3) then
      begin
        FrmVenda.QueryContaReceber.First;

        while parcela <= FrmVenda.QueryPadraoPARCELA.AsInteger do
          begin
            FrmVenda.QueryContaReceber.Insert;

            FrmVenda.QueryContaReceberID_SEQUENCIA.AsInteger:=parcela;

            FrmVenda.QueryContaReceber.FieldByName('VALOR_PARCELA').AsFloat:=
            (FrmVenda.QueryPadraoVALOR.AsFloat)/(FrmVenda.QueryPadraoPARCELA.Value);

            FrmVenda.QueryContaReceber.FieldByName('DT_VENCIMENTO').Value:=date+(parcela*1);
            FrmVenda.QueryContaReceber.FieldByName('DT_PAGAMENTO').Value:=date+1;

            FrmVenda.QueryContaReceber.FieldByName('ATRASO').AsFloat:=0;
            FrmVenda.QueryContaReceber.FieldByName('JUROS').AsFloat:=0;
            FrmVenda.QueryContaReceber.FieldByName('VL_JUROS').AsFloat:=0;

            FrmVenda.QueryContaReceber.FieldByName('TOTAL_PAGAR').AsFloat:=
            FrmVenda.QueryContaReceber.FieldByName('VALOR_PARCELA').AsFloat;

            FrmVenda.QueryContaReceber.FieldByName('STATUS').AsString:='Recebido';

            FrmVenda.QueryContaReceber.Post;

            inc(parcela);

            FrmVenda.QueryContaReceber.Next;

            MessageDlg('Parcelas geradas!', mtInformation, [mbOk], 0);

            FrmRecebimentoVenda.Close;
          end;
      end


  else // Nota Promissória
    FrmVenda.QueryContaReceber.First;

    while parcela <= FrmVenda.QueryPadraoPARCELA.AsInteger do
      begin
        FrmVenda.QueryContaReceber.Insert;

        FrmVenda.QueryContaReceberID_SEQUENCIA.AsInteger:=parcela;

        FrmVenda.QueryContaReceber.FieldByName('VALOR_PARCELA').AsFloat:=
        (FrmVenda.QueryPadraoVALOR.AsFloat)/(FrmVenda.QueryPadraoPARCELA.Value);

        FrmVenda.QueryContaReceber.FieldByName('DT_VENCIMENTO').Value:=date+(parcela*30);

        FrmVenda.QueryContaReceber.FieldByName('ATRASO').AsFloat:=0;
        FrmVenda.QueryContaReceber.FieldByName('JUROS').AsFloat:=0;
        FrmVenda.QueryContaReceber.FieldByName('VL_JUROS').AsFloat:=0;

        FrmVenda.QueryContaReceber.FieldByName('TOTAL_PAGAR').AsFloat:=FrmVenda.QueryContaReceber.FieldByName('VALOR_PARCELA').AsFloat;

        FrmVenda.QueryContaReceber.FieldByName('STATUS').AsString:='Em aberto';

        FrmVenda.QueryContaReceber.Post;

        inc(parcela);

        FrmVenda.QueryContaReceber.Next;

        MessageDlg('Parcelas geradas!', mtInformation, [mbOk], 0);

        FrmRecebimentoVenda.Close;
      end;


    // Tratamento de diferença entre valores quando pagamento é parcelado
  soma:=soma+FrmVenda.QueryPadraoPARCELA.Value*FrmVenda.QueryContaReceber.FieldByName('VALOR_PARCELA').AsFloat;
  if soma > FrmVenda.QueryPadraoVALOR.AsFloat then
    begin
      diferenca:=soma-FrmVenda.QueryPadraoVALOR.AsFloat;

      FrmVenda.QueryContaReceber.Last;
      FrmVenda.QueryContaReceber.Edit;

      FrmVenda.QueryContaReceber.FieldByName('VALOR_PARCELA').AsFloat:=
      FrmVenda.QueryContaReceber.FieldByName('VALOR_PARCELA').AsFloat-diferenca;

      FrmVenda.QueryContaReceber.Refresh;
    end;
end;

end.
