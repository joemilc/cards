program Project34;

uses
  Vcl.Forms,
  unit1 in 'unit1.pas' {Form1},
  unit2 in 'unit2.pas' {FramePadrao: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
