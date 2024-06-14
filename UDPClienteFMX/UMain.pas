unit UMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, IdBaseComponent, IdComponent, IdUDPBase, IdUDPClient,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    IdUDPClient1: TIdUDPClient;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
var
  ret: string;
  ip: string;
  port: word;
begin
  IdUDPClient1.Broadcast('Test', 5001);
  IdUDPClient1.ReceiveTimeout := 1000;
  ret := IdUDPClient1.ReceiveString(ip, port);
  Edit1.Text := ip;
end;

end.
