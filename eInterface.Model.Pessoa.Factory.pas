unit eInterface.Model.Pessoa.Factory;

interface

uses
  eInterface.Model.Interfaces, eInterface.Model.PessoaFisica,
  eInterface.Model.PessoaJuridica;
type
  TModelPessoaFactory = class (TInterfacedObject, iPessoaFactory)
    private
    public
      constructor Create;
      destructor Destroy;override;
      class function NewPessoaFactory : iPessoaFactory;

      function PessoaFisica : iPessoa;
      function PessoaJuridica : iPessoa;
  end;

implementation

{ TModelPessoaFactory }

constructor TModelPessoaFactory.Create;
begin

end;

destructor TModelPessoaFactory.Destroy;
begin
  inherited;
end;

class function TModelPessoaFactory.NewPessoaFactory: iPessoaFactory;
begin

end;

function TModelPessoaFactory.PessoaFisica: iPessoa;
begin
  Result := TModelPessoaFisica.NewPessoa;
end;

function TModelPessoaFactory.PessoaJuridica: iPessoa;
begin
  Result := TModelPessoaJuridica.NewPessoa;
end;

end.
