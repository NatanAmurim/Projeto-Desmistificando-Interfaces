unit eInterface.Model.PessoaJuridica;

interface

uses eInterface.Model.Interfaces;
type
  TModelPessoaJuridica = class(TInterfacedObject, iPessoa)

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

constructor TModelPessoaJuridica.Create;
begin

end;

destructor TModelPessoaJuridica.Destroy;
begin

  inherited;
end;

class function TModelPessoaJuridica.NewPessoa: iPessoa;
begin
  Result := Self.Create;
end;

function TModelPessoaJuridica.Nome(Value: String): iPessoa;
begin
  Result := Self;
  FNome := Value;
end;

function TModelPessoaJuridica.NomeCompleto: String;
begin
  Result := FNome + ' ' + FSobreNome + 'LTDA';
end;

function TModelPessoaJuridica.SobreNome(Value: String): iPessoa;
begin
  Result := Self;
  FSobreNome := Value;
end;

end.
