unit eInterface.Model.Interfaces;

interface

type
  iPessoa = interface
    ['{566DC842-88A7-457B-ADBF-5A112F6F5021}']
    function Nome (Value : String) : iPessoa;
    function SobreNome (Value : String) : iPessoa;
    function NomeCompleto : String;
    end;

  iPessoaFactory = interface
    ['{97D8D86E-EA87-4ADB-A7A5-364E86A82124}']
    function PessoaFisica : iPessoa;
    function PessoaJuridica : iPessoa;
  end;


implementation

end.
