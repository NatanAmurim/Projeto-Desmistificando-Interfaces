unit eInterface.Controller.Interfaces;

interface

uses
  eInterface.Model.Interfaces;

type

  TTypePessoa = (tpFisica, tpJuridica);

  iControllerPessoa = interface
    ['{9F7352C5-E82D-4D48-8843-4B5BF92EF1D1}']
    function Pessoa(Value : TTypePessoa): iPessoa;
  end;

implementation

end.
