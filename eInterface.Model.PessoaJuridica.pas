unit eInterface.Model.PessoaJuridica;

interface

uses eInterface.Model.Interfaces;
type
  TModelPessoaJuridica = class(TInterfacedObject, iPessoa)

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

constructor TModelPessoaJuridica.Create;
begin

end;

destructor TModelPessoaJuridica.Destroy;
begin

  inherited;
end;

function TModelPessoaJuridica.Display(Value: TEvDisplay): iPessoa;
begin
  Result := Self;
  FDisplay := Value;
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



function TModelPessoaJuridica.Nome: String;
begin
  Result := Nome;
end;

function TModelPessoaJuridica.NomeCompleto: iPessoa;
begin
  Result := Self;
  FDisplay(FNome + ' ' + FSobreNome + 'LTDA');
end;

function TModelPessoaJuridica.SobreNome(Value: String): iPessoa;
begin
  Result := Self;
  FSobreNome := Value;
end;

end.
