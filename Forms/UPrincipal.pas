unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Menus;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    btEmpresa: TSpeedButton;
    btClientes: TSpeedButton;
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
    procedure AbreTelaEmpresa();
    procedure AbreTelaClientes();

    procedure btEmpresaClick(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure Usurio1Click(Sender: TObject);
    procedure btClientesClick(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UUsuario, UEmpresa, UCliente;

procedure TFrmPrincipal.AbreTelaClientes;
begin
  FrmCliente:= TFrmCliente.Create(self);
  FrmCliente.ShowModal;

  try

  finally
    FrmCliente.Free;
    FrmCliente:= nil;
  end;
end;

procedure TFrmPrincipal.AbreTelaEmpresa;
begin
  FrmEmpresa:= TFrmEmpresa.Create(self);
  FrmEmpresa.ShowModal;

  try

  finally
    FrmEmpresa.Free;
    FrmEmpresa:= nil;
  end;
end;

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

procedure TFrmPrincipal.Usurio1Click(Sender: TObject);
begin
  AbreTelaUsuario;
end;

procedure TFrmPrincipal.btClientesClick(Sender: TObject);
begin
  AbreTelaClientes;
end;

procedure TFrmPrincipal.Cliente1Click(Sender: TObject);
begin
  AbreTelaClientes;
end;

procedure TFrmPrincipal.btEmpresaClick(Sender: TObject);
begin
  AbreTelaEmpresa;
end;

procedure TFrmPrincipal.Empresa1Click(Sender: TObject);
begin
  AbreTelaEmpresa;
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
