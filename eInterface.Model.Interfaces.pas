unit eInterface.Model.Interfaces;

interface

type
  TEvDisplay = procedure(Value : String) of Object;

  iPessoa = interface
    ['{566DC842-88A7-457B-ADBF-5A112F6F5021}']
    function Nome (Value : String) : iPessoa; overload;
    function Nome : String; overload;
    function SobreNome (Value : String) : iPessoa;
    function NomeCompleto : iPessoa;
    function Display (Value : TEvDisplay) : iPessoa;
    end;

  iPessoaFactory = interface
    ['{97D8D86E-EA87-4ADB-A7A5-364E86A82124}']
    function PessoaFisica : iPessoa;
    function PessoaJuridica : iPessoa;
  end;


implementation

end.
