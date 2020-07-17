unit uServeNFe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.SvcMgr,
   Vcl.Dialogs, Horse, Horse.Jhonson;

type
  TServeHorpe = class(TService)
    procedure ServiceExecute(Sender: TService);
  private
    { Private declarations }
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  ServeHorpe: TServeHorpe;

  var
  App: THorse;

implementation

{$R *.dfm}


uses uNFe;
procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  ServeHorpe.Controller(CtrlCode);
end;

function TServeHorpe.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TServeHorpe.ServiceExecute(Sender: TService);
begin
  App := THorse.Create(9000);
  App.Use(Jhonson);

  uNFe.Registry(App);


  App.Start;

end;

end.
