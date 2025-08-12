unit UFormPesquisaPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Data.DB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmPesquisaPadrao = class(TForm)
    Panel1: TPanel;
    cbChavePesquisa: TComboBox;
    Label1: TLabel;
    edNome: TEdit;
    mkInicio: TMaskEdit;
    mkFim: TMaskEdit;
    lbNomePesq: TLabel;
    lbFimPesq: TLabel;
    lbInicioPesq: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    btTransferir: TBitBtn;
    btImprimir: TBitBtn;
    btPesquisa: TBitBtn;
    QueryPesqPadrao: TFDQuery;
    dsPesqPadrao: TDataSource;
    procedure cbChavePesquisaChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesquisaPadrao: TFrmPesquisaPadrao;

implementation

{$R *.dfm}

uses UDataM;

procedure TFrmPesquisaPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin

  // Faz com que Enter tenha a mesma função do TAB
  if key=#13  then
    begin
      Key:=#0;
      Perform(wm_nextDlgCtl,0,0);
    end;

end;

procedure TFrmPesquisaPadrao.cbChavePesquisaChange(Sender: TObject);
begin
  case cbChavePesquisa.ItemIndex of
    0: begin
      edNome.Visible:=true;
      edNome.SetFocus;

      mkInicio.Visible:=false;
      mkFim.Visible:=false;

      lbNomePesq.Visible:=true;
      lbInicioPesq.Visible:=false;
      lbFimPesq.Visible:=false;

      edNome.Clear;

      lbNomePesq.Caption:='Digite o código';
    end;

    1: begin
      edNome.Visible:=true;
      edNome.SetFocus;

      mkInicio.Visible:=false;
      mkFim.Visible:=false;

      lbNomePesq.Visible:=true;
      lbInicioPesq.Visible:=false;
      lbFimPesq.Visible:=false;

      edNome.Clear;

      lbNomePesq.Caption:='Digite o nome';
    end;

    2: begin
      edNome.Visible:=false;

      mkInicio.Visible:=true;
      mkInicio.SetFocus;
      mkFim.Visible:=false;

      lbNomePesq.Visible:=false;
      lbInicioPesq.Visible:=true;
      lbFimPesq.Visible:=false;

      mkInicio.Clear;

      lbInicioPesq.Caption:='Digite a data';
    end;

    3: begin
      edNome.Visible:=false;

      mkInicio.Visible:=true;
      mkFim.Visible:=true;
      mkInicio.SetFocus;

      lbNomePesq.Visible:=false;
      lbInicioPesq.Visible:=true;
      lbFimPesq.Visible:=false;

      mkInicio.Clear;
      mkFim.Clear;

      lbInicioPesq.Caption:='Digite o período';
    end;

    4: begin
      edNome.Visible:=false;

      mkInicio.Visible:=false;
      mkFim.Visible:=false;

      lbNomePesq.Visible:=false;
      lbInicioPesq.Visible:=true;
      lbFimPesq.Visible:=false;
      lbInicioPesq.Caption:='Selecione "Pesquisar"';
    end;

  end;

end;

end.
