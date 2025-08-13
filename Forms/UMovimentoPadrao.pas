unit UMovimentoPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrmPadraoMovimento = class(TFrmPadraoCadastro)
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    QueryPadraoItem: TFDQuery;
    DSPadraoItem: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPadraoMovimento: TFrmPadraoMovimento;

implementation

{$R *.dfm}

end.
