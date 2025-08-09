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
    btFornecedor: TSpeedButton;
    btProduto: TSpeedButton;
    btFormaPgto: TSpeedButton;
    btCompra: TSpeedButton;
    btVenda: TSpeedButton;
    btTrocarUsuario: TSpeedButton;
    btSair: TSpeedButton;
    btUsuario: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    MenuUsuario: TMenuItem;
    MenuEmpresa: TMenuItem;
    MenuCliente: TMenuItem;
    MenuFornecedor: TMenuItem;
    MenuProduto: TMenuItem;
    MenuFormasPgto: TMenuItem;
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
    procedure btSairClick(Sender: TObject);
    procedure btUsuarioClick(Sender: TObject);

    procedure AbreTelaUsuario();
    procedure AbreTelaEmpresa();
    procedure AbreTelaClientes();
    procedure AbreTelaFornecedor();

    procedure btEmpresaClick(Sender: TObject);
    procedure MenuEmpresaClick(Sender: TObject);
    procedure MenuUsuarioClick(Sender: TObject);
    procedure btClientesClick(Sender: TObject);
    procedure MenuClienteClick(Sender: TObject);
    procedure btFornecedorClick(Sender: TObject);
    procedure MenuFornecedorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UUsuario, UEmpresa, UCliente, UFornecedor;

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

procedure TFrmPrincipal.AbreTelaFornecedor;
begin
  FrmFornecedor:= TFrmFornecedor.Create(self);
  FrmFornecedor.ShowModal;

  try

  finally
    FrmFornecedor.Free;
    FrmFornecedor:= nil;
  end;
end;

procedure TFrmPrincipal.btUsuarioClick(Sender: TObject);
begin
  AbreTelaUsuario;
end;

procedure TFrmPrincipal.MenuUsuarioClick(Sender: TObject);
begin
  AbreTelaUsuario;
end;

procedure TFrmPrincipal.btClientesClick(Sender: TObject);
begin
  AbreTelaClientes;
end;

procedure TFrmPrincipal.MenuClienteClick(Sender: TObject);
begin
  AbreTelaClientes;
end;

procedure TFrmPrincipal.btEmpresaClick(Sender: TObject);
begin
  AbreTelaEmpresa;
end;

procedure TFrmPrincipal.MenuEmpresaClick(Sender: TObject);
begin
  AbreTelaEmpresa;
end;

procedure TFrmPrincipal.btFornecedorClick(Sender: TObject);
begin
  AbreTelaFornecedor;
end;

procedure TFrmPrincipal.MenuFornecedorClick(Sender: TObject);
begin
  AbreTelaFornecedor
end;

procedure TFrmPrincipal.btSairClick(Sender: TObject);
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
