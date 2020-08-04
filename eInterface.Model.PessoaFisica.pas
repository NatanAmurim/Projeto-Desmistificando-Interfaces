unit eInterface.Model.PessoaFisica;

interface

uses eInterface.Model.Interfaces;
type
  TModelPessoaFisica = class(TInterfacedObject, iPessoa)

  private

  {Variáveis}
    FNome : String;
    FSobreNome : String;
    FDisplay : TEvDisplay;

  {Procedures e funções}
    function Nome (Value : String) : iPessoa; overload;
    function Nome : String; overload;
    function SobreNome (Value : String) : iPessoa;
    function NomeCompleto : iPessoa;
    function Display (Value : TEvDisplay) : iPessoa;

  public
    constructor Create;
    destructor Destroy; Override;
    class function NewPessoa : iPessoa;
  end;
implementation

{ TModelPessoa }

constructor TModelPessoaFisica.Create;
begin

end;

destructor TModelPessoaFisica.Destroy;
begin

  inherited;
end;

function TModelPessoaFisica.Display(Value: TEvDisplay): iPessoa;
begin
  Result := Self;
  FDisplay := Value;
end;

class function TModelPessoaFisica.NewPessoa: iPessoa;
begin
  Result := Self.Create;
end;

function TModelPessoaFisica.Nome(Value: String): iPessoa;
begin
  Result := Self;
  FNome := Value;
end;

function TModelPessoaFisica.Nome: String;
begin
  Result := FNome;
end;

function TModelPessoaFisica.NomeCompleto: iPessoa;
begin
  Result := Self;
  FDisplay(FNome + ' ' + FSobreNome);
end;

function TModelPessoaFisica.SobreNome(Value: String): iPessoa;
begin
  Result := Self;
  FSobreNome := Value;
end;

end.
