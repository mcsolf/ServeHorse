program teste;

uses
  Vcl.Forms,
  uFrmTeste in 'uFrmTeste.pas' {Form2},
  uNFe in 'uNFe.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
