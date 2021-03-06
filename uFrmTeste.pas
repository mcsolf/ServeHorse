unit uFrmTeste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Horse, Horse.Jhonson;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

  var
  App: THorse;

implementation

{$R *.dfm}

uses uNFe;

procedure TForm2.FormCreate(Sender: TObject);
var porta : integer;
begin

  porta := StrToInt(Edit1.Text);

  App := THorse.Create(porta);
  App.Use(Jhonson);

  uNFe.Registry(App);


  App.Start;

  Label1.Caption := 'Servidor rodando na porta: ' + Edit1.Text;

end;

end.
