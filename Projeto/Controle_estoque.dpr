program Controle_estoque;

uses
  Vcl.Forms,
  UPrincipal in '..\Forms\UPrincipal.pas' {FrmPrincipal},
  UDataM in '..\Forms\UDataM.pas' {DM: TDataModule},
  UPadrao in '..\Forms\UPadrao.pas' {FrmPadrao},
  UUsuario in '..\Forms\UUsuario.pas' {FrmUsuario},
  UEmpresa in '..\Forms\UEmpresa.pas' {FrmEmpresa},
  UCliente in '..\Forms\UCliente.pas' {FrmCliente},
  UFornecedor in '..\Forms\UFornecedor.pas' {FrmFornecedor},
  UProduto in '..\Forms\UProduto.pas' {FrmProduto};

{$R *.res}
{$IFDEF DEBUG}
{$ENDIF}

begin
  System.ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmProduto, FrmProduto);
  Application.Run;
end.
