program Controle_estoque;

uses
  Vcl.Forms,
  UPrincipal in '..\Forms\UPrincipal.pas' {FrmPrincipal},
  UDataM in '..\Forms\UDataM.pas' {DM: TDataModule},
  UPadrao in '..\Forms\UPadrao.pas' {FrmPadrao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmPadrao, FrmPadrao);
  Application.Run;
end.
