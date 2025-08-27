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
    ListaCompras: TMenuItem;
    ListaVendas: TMenuItem;
    Relatrios1: TMenuItem;
    ListaUsuario: TMenuItem;
    ListaFornecedor: TMenuItem;
    ListaCliente: TMenuItem;
    ListaProduto: TMenuItem;
    ListaCompra: TMenuItem;
    ListaVenda: TMenuItem;
    Sobreosistema1: TMenuItem;
    MenuFechar: TMenuItem;
    C1: TMenuItem;
    VendasFormasdePgto1: TMenuItem;
    RelatrioGeralporMs1: TMenuItem;
    btContasPagar: TSpeedButton;
    btContasReceber: TSpeedButton;
    ListaContasPagar: TMenuItem;
    ListaContasReceber: TMenuItem;
    ListaContasPagarMenu: TMenuItem;
    ListadeContasaReceber1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure btUsuarioClick(Sender: TObject);

    procedure AbreTelaUsuario();
    procedure AbreTelaEmpresa();
    procedure AbreTelaClientes();
    procedure AbreTelaFornecedor();
    procedure AbreTelaProduto();
    procedure AbreTelaFormasPgto();
    procedure AbreTelaCompra1();
    procedure AbreTelaVenda();
    procedure AbreTelaContasPagar();
    procedure AbreTelaContasReceber();

    procedure btEmpresaClick(Sender: TObject);
    procedure MenuEmpresaClick(Sender: TObject);
    procedure MenuUsuarioClick(Sender: TObject);
    procedure btClientesClick(Sender: TObject);
    procedure MenuClienteClick(Sender: TObject);
    procedure btFornecedorClick(Sender: TObject);
    procedure MenuFornecedorClick(Sender: TObject);
    procedure btProdutoClick(Sender: TObject);
    procedure MenuProdutoClick(Sender: TObject);
    procedure btFormaPgtoClick(Sender: TObject);
    procedure MenuFormasPgtoClick(Sender: TObject);

    procedure btCompraClick(Sender: TObject);
    procedure ListaComprasClick(Sender: TObject);
    procedure ListaUsuarioClick(Sender: TObject);
    procedure ListaFornecedorClick(Sender: TObject);
    procedure ListaClienteClick(Sender: TObject);
    procedure ListaProdutoClick(Sender: TObject);
    procedure ListaCompraClick(Sender: TObject);
    procedure Sobreosistema1Click(Sender: TObject);
    procedure btTrocarUsuarioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btVendaClick(Sender: TObject);
    procedure ListaVendasClick(Sender: TObject);
    procedure ListaVendaClick(Sender: TObject);
    procedure MenuFecharClick(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure VendasFormasdePgto1Click(Sender: TObject);
    procedure RelatrioGeralporMs1Click(Sender: TObject);
    procedure btContasPagarClick(Sender: TObject);
    procedure ListaContasPagarClick(Sender: TObject);
    procedure ListaContasPagarMenuClick(Sender: TObject);
    procedure btContasReceberClick(Sender: TObject);
    procedure ListaContasReceberClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UUsuario, UEmpresa, UCliente, UFornecedor, UProduto, UFormasPgto, UCompra1,
  UPesqUsuario, UPesqFornecedor, UPesqCliente, UPesqProduto, UPesqCompra,
  UAbout, UDataM, ULogin, UVenda, UPesqVenda, UPesqCompraFormaPgto,
  UPesqVendaFormaPgto, UPesqGeralMes, UContasPagar, UPesqParcelaPagar,
  UContasReceber;



  //PROCURAR IMAGENS MELHORES E ORGANIZAR CÓDIGO



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

procedure TFrmPrincipal.AbreTelaProduto;
begin
  FrmProduto:= TFrmProduto.Create(self);
  FrmProduto.ShowModal;

  try

  finally
    FrmProduto.Free;
    FrmProduto:= nil;
  end;
end;

procedure TFrmPrincipal.AbreTelaFormasPgto;
begin
  FrmFormasPgto:= TFrmFormasPgto.Create(self);
  FrmFormasPgto.ShowModal;

  try

  finally
    FrmFormasPgto.Free;
    FrmFormasPgto:= nil;
  end;
end;

procedure TFrmPrincipal.AbreTelaCompra1;
begin
  FrmCompra1:= TFrmCompra1.Create(self);
  FrmCompra1.ShowModal;

  try

  finally
    FrmCompra1.Free;
    FrmCompra1:= nil;
  end;
end;

procedure TFrmPrincipal.AbreTelaVenda;
begin
  FrmVenda:= TFrmVenda.Create(self);
  FrmVenda.ShowModal;

  try

  finally
    FrmVenda.Free;
    FrmVenda:= nil;
  end;
end;

procedure TFrmPrincipal.AbreTelaContasPagar;
begin
  FrmContasPagar:= TFrmContasPagar.Create(self);
  FrmContasPagar.ShowModal;

  try

  finally
    FrmContasPagar.Free;
    FrmContasPagar:= nil;
  end;
end;

procedure TFrmPrincipal.AbreTelaContasReceber;
begin
  FrmContasReceber:= TFrmContasReceber.Create(self);
  FrmContasReceber.ShowModal;

  try

  finally
    FrmContasReceber.Free;
    FrmContasReceber:= nil;
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
  AbreTelaFornecedor;
end;

procedure TFrmPrincipal.btProdutoClick(Sender: TObject);
begin
  AbreTelaProduto;
end;

procedure TFrmPrincipal.MenuProdutoClick(Sender: TObject);
begin
  AbreTelaProduto;
end;

procedure TFrmPrincipal.btFormaPgtoClick(Sender: TObject);
begin
  AbreTelaFormasPgto;
end;

procedure TFrmPrincipal.MenuFormasPgtoClick(Sender: TObject);
begin
  AbreTelaFormasPgto;
end;

procedure TFrmPrincipal.btCompraClick(Sender: TObject);
begin
  AbreTelaCompra1;
end;

procedure TFrmPrincipal.ListaComprasClick(Sender: TObject);
begin
  AbreTelaCompra1;
end;

procedure TFrmPrincipal.btVendaClick(Sender: TObject);
begin
  AbreTelaVenda;
end;

procedure TFrmPrincipal.ListaVendasClick(Sender: TObject);
begin
  AbreTelaVenda;
end;

procedure TFrmPrincipal.btContasPagarClick(Sender: TObject);
begin
  AbreTelaContasPagar;
end;

procedure TFrmPrincipal.ListaContasPagarClick(Sender: TObject);
begin
  AbreTelaContasPagar;
end;

procedure TFrmPrincipal.btContasReceberClick(Sender: TObject);
begin
  AbreTelaContasReceber;
end;

procedure TFrmPrincipal.ListaContasReceberClick(Sender: TObject);
begin
  AbreTelaContasReceber;
end;

procedure TFrmPrincipal.btTrocarUsuarioClick(Sender: TObject);
begin
  FrmPrincipal.Hide;

  FrmLogin.EDNome.Clear;
  FrmLogin.EDSenha.Clear;
  FrmLogin.EDNome.SetFocus;
end;


procedure TFrmPrincipal.ListaUsuarioClick(Sender: TObject);
begin
  FrmPesqUsuario:= TFrmPesqUsuario.Create(self);
  FrmPesqUsuario.ShowModal;

  try

  finally
    FrmPesqUsuario.Free;
    FrmPesqUsuario:= nil;
  end;
end;

procedure TFrmPrincipal.ListaFornecedorClick(Sender: TObject);
begin
  FrmPesqFornecedor:= TFrmPesqFornecedor.Create(self);
  FrmPesqFornecedor.ShowModal;

  try

  finally
    FrmPesqFornecedor.Free;
    FrmPesqFornecedor:= nil;
  end;
end;

procedure TFrmPrincipal.ListaClienteClick(Sender: TObject);
begin
  FrmPesqCliente:= TFrmPesqCliente.Create(self);
  FrmPesqCliente.ShowModal;

  try

  finally
    FrmPesqCliente.Free;
    FrmPesqCliente:= nil;
  end;
end;

procedure TFrmPrincipal.ListaProdutoClick(Sender: TObject);
begin
  FrmPesqProduto:= TFrmPesqProduto.Create(self);
  FrmPesqProduto.ShowModal;

  try

  finally
    FrmPesqProduto.Free;
    FrmPesqProduto:= nil;
  end;
end;

procedure TFrmPrincipal.ListaCompraClick(Sender: TObject);
begin
  FrmPesqCompra:= TFrmPesqCompra.Create(self);
  FrmPesqCompra.ShowModal;

  try

  finally
    FrmPesqCompra.Free;
    FrmPesqCompra:= nil;
  end;
end;

procedure TFrmPrincipal.ListaVendaClick(Sender: TObject);
begin
  FrmPesqVenda:= TFrmPesqVenda.Create(self);
  FrmPesqVenda.ShowModal;

  try

  finally
    FrmPesqVenda.Free;
    FrmPesqVenda:= nil;
  end;
end;

procedure TFrmPrincipal.C1Click(Sender: TObject); // Relatórios -> Compras/Formas de Pgto.
begin
  FrmPesqCompraFormaPgto:= TFrmPesqCompraFormaPgto.Create(self);
  FrmPesqCompraFormaPgto.ShowModal;

  try

  finally
    FrmPesqCompraFormaPgto.Free;
    FrmPesqCompraFormaPgto:= nil;
  end;
end;

procedure TFrmPrincipal.VendasFormasdePgto1Click(Sender: TObject); // Relatórios -> Vendas/Formas de Pgto.
begin
  FrmPesqVendaFormaPgto:= TFrmPesqVendaFormaPgto.Create(self);
  FrmPesqVendaFormaPgto.ShowModal;

  try

  finally
    FrmPesqVendaFormaPgto.Free;
    FrmPesqVendaFormaPgto:= nil;
  end;
end;

procedure TFrmPrincipal.ListaContasPagarMenuClick(Sender: TObject);
begin
  FrmPesqParcelaPagar:= TFrmPesqParcelaPagar.Create(self);
  FrmPesqParcelaPagar.ShowModal;

  try

  finally
    FrmPesqParcelaPagar.Free;
    FrmPesqParcelaPagar:= nil;
  end;
end;

procedure TFrmPrincipal.RelatrioGeralporMs1Click(Sender: TObject);
begin
  FrmPesqGeralMes:= TFrmPesqGeralMes.Create(self);
  FrmPesqGeralMes.ShowModal;

  try

  finally
    FrmPesqGeralMes.Free;
    FrmPesqGeralMes:= nil;
  end;
end;

procedure TFrmPrincipal.Sobreosistema1Click(Sender: TObject);
begin
  FrmAboutBox:= TFrmAboutBox.Create(self);
  FrmAboutBox.ShowModal;

  try

  finally
    FrmAboutBox.Free;
    FrmAboutBox:= nil;
  end;
end;

procedure TFrmPrincipal.btSairClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure TFrmPrincipal.MenuFecharClick(Sender: TObject);
begin
  btSair.Click;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  if DM.tipoUsuario='APOIO' then
    begin
      btEmpresa.Enabled:=false;
      btUsuario.Enabled:=false;
      MenuUsuario.Enabled:=false;
      MenuEmpresa.Enabled:=false;
      ListaUsuario.Enabled:=false;
    end;
end;

procedure TFrmPrincipal.Timer1Timer(Sender: TObject);
begin
  Statusbar1.Panels[0].Text := DateToStr(now);
  Statusbar1.Panels[1].Text := TimeToStr(now);
  Statusbar1.Panels[2].Text := 'Olá, ' + DM.usuario + '!';
  Statusbar1.Panels[3].Text := 'Tipo de usuário: ' + DM.tipoUsuario + '';
end;

end.
