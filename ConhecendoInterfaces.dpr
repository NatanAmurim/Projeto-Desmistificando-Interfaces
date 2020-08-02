program ConhecendoInterfaces;

uses
  Vcl.Forms,
  eInterface.View.Principal in 'eInterface.View.Principal.pas' {frmPrincipal},
  eInterface.Model.Interfaces in 'eInterface.Model.Interfaces.pas',
  eInterface.Model.PessoaFisica in 'eInterface.Model.PessoaFisica.pas',
  eInterface.Model.PessoaJuridica in 'eInterface.Model.PessoaJuridica.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.