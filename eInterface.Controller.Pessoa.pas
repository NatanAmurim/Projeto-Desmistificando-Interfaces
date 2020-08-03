unit eInterface.Controller.Pessoa;

interface

uses
  eInterface.Controller.Interfaces, eInterface.Model.Interfaces;
type
  TControllerPessoa = class(TInterfacedObject, iControllerPessoa)
    private
    public
      constructor Create;
      destructor Destroy;override;
      class function newPessoa : iControllerPessoa;
      function Pessoa(Value : TTypePessoa): iPessoa;
  end;

implementation

uses
  eInterface.Model.Pessoa.Factory;

{ TControllerPessoa }

constructor TControllerPessoa.Create;
begin

end;

destructor TControllerPessoa.Destroy;
begin
  inherited;
end;

class function TControllerPessoa.newPessoa: iControllerPessoa;
begin
  Result := Self.Create;
end;

function TControllerPessoa.Pessoa(Value: TTypePessoa): iPessoa;
begin
  case Value of
    tpFisica:   Result := TModelPessoaFactory.NewPessoaFactory.PessoaFisica;
    tpJuridica: Result := TModelPessoaFactory.NewPessoaFactory.PessoaJuridica;
  end;
end;

end.
