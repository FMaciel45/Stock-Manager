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
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    btTransferir: TBitBtn;
    btImprimir: TBitBtn;
    btPesquisa: TBitBtn;
    QueryPesqPadrao: TFDQuery;
    dsPesqPadrao: TDataSource;
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

end.
