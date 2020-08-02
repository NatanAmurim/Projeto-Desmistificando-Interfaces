unit eInterface.Model.PessoaFisica;

interface

uses eInterface.Model.Interfaces;
type
  TModelPessoaFisica = class(TInterfacedObject, iPessoa)

  private

  {Variáveis}
    FNome : String;
    FSobreNome : String;

  {Procedures e funções}
    function Nome (Value : String) : iPessoa;
    function SobreNome (Value : String) : iPessoa;
    function NomeCompleto : String;

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

class function TModelPessoaFisica.NewPessoa: iPessoa;
begin
  Result := Self.Create;
end;

function TModelPessoaFisica.Nome(Value: String): iPessoa;
begin
  Result := Self;
  FNome := Value;
end;

function TModelPessoaFisica.NomeCompleto: String;
begin
  Result := FNome + ' ' + FSobreNome;
end;

function TModelPessoaFisica.SobreNome(Value: String): iPessoa;
begin
  Result := Self;
  FSobreNome := Value;
end;

end.
