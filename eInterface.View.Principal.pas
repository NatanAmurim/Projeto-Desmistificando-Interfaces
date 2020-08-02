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
    procedure btnUnirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  eInterface.Model.Pessoa.Factory;

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

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  FPessoa := TModelPessoaFactory
                .NewPessoaFactory
                .PessoaFisica;
end;

end.
