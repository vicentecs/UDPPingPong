object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Server UDP'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 619
    Height = 283
    TabOrder = 0
  end
  object IdUDPServer1: TIdUDPServer
    Active = True
    BroadcastEnabled = True
    Bindings = <>
    DefaultPort = 5001
    OnUDPRead = IdUDPServer1UDPRead
    Left = 232
    Top = 112
  end
end
