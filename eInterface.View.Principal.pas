unit eInterface.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  eInterface.Model.Interfaces;

type
  TfrmPrincipal = class(TForm)
    editNome: TEdit;
    editSobreNome: TEdit;
    btnUnir: TButton;
    memoNomeSobreNome: TMemo;
    cmbTipoPessoa: TComboBox;
    procedure btnUnirClick(Sender: TObject);
    procedure cmbTipoPessoaChange(Sender: TObject);
  private
    { Private declarations }
    FPessoa : iPessoa;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  eInterface.Controller.Pessoa,eInterface.Controller.Interfaces;

{$R *.dfm}

procedure TfrmPrincipal.btnUnirClick(Sender: TObject);
begin
  memoNomeSobreNome.Lines.Add(
    FPessoa
      .Nome(editNome.Text)
      .SobreNome(editSobreNome.Text)
      .NomeCompleto
  );
end;

procedure TfrmPrincipal.cmbTipoPessoaChange(Sender: TObject);
begin
  case cmbTipoPessoa.ItemIndex of
    0:  FPessoa := TControllerPessoa.newPessoa.Pessoa(tpFisica);
    1:  FPessoa := TControllerPessoa.newPessoa.Pessoa(tpJuridica);
  end;
end;

end.
