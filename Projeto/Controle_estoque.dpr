program Controle_estoque;

uses
  Vcl.Forms,
  UPrincipal in '..\Forms\UPrincipal.pas' {FrmPrincipal},
  UDataM in '..\Forms\UDataM.pas' {DM: TDataModule},
  UPadrao in '..\Forms\UPadrao.pas' {FrmPadraoCadastro},
  UUsuario in '..\Forms\UUsuario.pas' {FrmUsuario},
  UEmpresa in '..\Forms\UEmpresa.pas' {FrmEmpresa},
  UCliente in '..\Forms\UCliente.pas' {FrmCliente},
  UFornecedor in '..\Forms\UFornecedor.pas' {FrmFornecedor},
  UProduto in '..\Forms\UProduto.pas' {FrmProduto},
  UFormasPgto in '..\Forms\UFormasPgto.pas' {FrmFormasPgto},
  UFormPesquisaPadrao in '..\Forms\UFormPesquisaPadrao.pas' {FrmPesquisaPadrao},
  UPesqUsuario in '..\Forms\UPesqUsuario.pas' {FrmPesqUsuario},
  UPesqCliente in '..\Forms\UPesqCliente.pas' {FrmPesqCliente},
  UPesqFornecedor in '..\Forms\UPesqFornecedor.pas' {FrmPesqFornecedor};

{$R *.res}
{$IFDEF DEBUG}
{$ENDIF}

begin
  System.ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
