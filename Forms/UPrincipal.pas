unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Menus;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    btUsuario: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Usurio1: TMenuItem;
    Empresa1: TMenuItem;
    Cliente1: TMenuItem;
    Fornecedor1: TMenuItem;
    Produto1: TMenuItem;
    Formasdepgto1: TMenuItem;
    Movimentos1: TMenuItem;
    Compras1: TMenuItem;
    Vendas1: TMenuItem;
    Relatrios1: TMenuItem;
    Listadeusurios1: TMenuItem;
    Listadefornecedores1: TMenuItem;
    Listadefornecedores2: TMenuItem;
    Listadeprodutos1: TMenuItem;
    Listadeprodutos2: TMenuItem;
    Listadevendas1: TMenuItem;
    Sobreosistema1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure btUsuarioClick(Sender: TObject);

    procedure AbreTelaUsuario();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UUsuario;

procedure TFrmPrincipal.AbreTelaUsuario;
begin
  FrmUsuario:= TFrmUsuario.Create(self);
  FrmUsuario.ShowModal;

  try

  finally
    FrmUsuario.Free;
    FrmUsuario:= nil;
  end;

end;

procedure TFrmPrincipal.btUsuarioClick(Sender: TObject);
begin
  AbreTelaUsuario;
end;

procedure TFrmPrincipal.SpeedButton10Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure TFrmPrincipal.Timer1Timer(Sender: TObject);
begin
  Statusbar1.Panels[0].Text := DateToStr(now);
  Statusbar1.Panels[1].Text := TimeToStr(now);
  Statusbar1.Panels[2].Text := 'Salve salve, rapaziada!';
end;

end.
