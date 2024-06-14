unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdUDPServer, IdGlobal, IdSocketHandle, Vcl.StdCtrls, IdBaseComponent,
  IdComponent, IdUDPBase;

type
  TForm1 = class(TForm)
    IdUDPServer1: TIdUDPServer;
    Memo1: TMemo;
    procedure IdUDPServer1UDPRead(AThread: TIdUDPListenerThread; const AData: TIdBytes; ABinding: TIdSocketHandle);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.IdUDPServer1UDPRead(AThread: TIdUDPListenerThread; const AData: TIdBytes; ABinding: TIdSocketHandle);
begin
  IdUDPServer1.SendBuffer(ABinding.PeerIP, ABinding.PeerPort, TIdBytes.Create(Ord('P'), Ord('O'), Ord('N'), Ord('G')));
end;

end.
