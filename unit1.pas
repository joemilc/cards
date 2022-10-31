unit Unit1;

{$IFDEF FPC}
{$mode objfpc}{$H+}
{$ENDIF}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBGrids, Grids,
  StdCtrls, ExtCtrls, Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ScrollBox1: TScrollBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$IFDEF FPC}
{$R *.lfm}
{$ELSE}
{$R *.dfm}
{$ENDIF}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var x: Integer;
  Largura, Altura, iLeft, iTopo: Integer;
  Frame: TFramePadrao;
begin
  ScrollBox1.DestroyComponents;
  iLeft := 0;
  iTopo := 0;
  for x := 1 to 8 do
  begin
    Frame := TFramePadrao.Create(ScrollBox1);
    Frame.Name := 'frame'+IntToStr(x);
    Frame.Parent := ScrollBox1;
    Frame.FId := x;
    Frame.lblNome.Caption := 'Nome do Caboclo nº '+IntToStr(x);

    Largura := Frame.Width;
    Altura := Frame.Height;
    if (iLeft + Largura + 3) > ScrollBox1.Width then
    begin
      iLeft := 0;
      iTopo := iTopo + Altura + 5;
    end;
    Frame.Left := iLeft;
    Frame.Top := iTopo;
    iLeft := iLeft + Largura + 3;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var Id, Texto: String;
  c: TComponent;
begin
  Id := '';
  Texto := '';
  InputQuery('Localizar','Informe ID', id);
  InputQuery('Texto','Digite texto', Texto);
  c := ScrollBox1.FindComponent('frame' + Id);
  if Assigned(c) then
  begin
    TFramePadrao(c).lblNome.Caption := Texto;
    TFramePadrao(c).Panel1.Color := $00C1C184;
  end;
end;

end.

