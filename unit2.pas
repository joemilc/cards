unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, ExtCtrls, StdCtrls, Dialogs, LCLType;

type

  { TFramePadrao }

  TFramePadrao = class(TFrame)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblNome: TLabel;
    Panel1: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    procedure FrameClick(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  private

  public
    FId: Integer;
  end;

implementation

{$R *.lfm}

{ TFramePadrao }

procedure TFramePadrao.FrameClick(Sender: TObject);
begin
  Panel1.Color := $00C1C184;
  ShowMessage('Selecionado: '+ IntToSTr(FId));
  Panel1.Color := $00FFFFFF;
end;

procedure TFramePadrao.Image4Click(Sender: TObject);
begin
  Application.MessageBox(PChar('Editar card nº '+IntToStr(FId)), 'MessageBoxDemo', MB_ICONEXCLAMATION + MB_OK);
end;

procedure TFramePadrao.Image5Click(Sender: TObject);
begin
  Application.MessageBox(PChar('Deseja excluir o card nº '+IntToStr(FId)), 'MessageBoxDemo', MB_ICONQUESTION + MB_YESNO);
end;

end.

