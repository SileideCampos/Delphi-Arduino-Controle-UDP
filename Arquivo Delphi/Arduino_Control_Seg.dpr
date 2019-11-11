program Arduino_Control_Seg;

uses
  Vcl.Forms,
  Arduino in 'Arduino.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
