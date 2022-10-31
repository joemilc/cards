unit Unit2;

{$IFDEF FPC}
{$mode objfpc}{$H+}
{$ENDIF}

interface

uses
  {$IFDEF FPC}
  LCLType,
  {$ELSE}
  WinAPI.Windows, Vcl.Imaging.pngimage,
  {$ENDIF}
  Classes, SysUtils, Forms, Controls, ExtCtrls, StdCtrls, Dialogs;

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

{$IFDEF FPC}
{$R *.lfm}
{$ELSE}
{$R *.dfm}
{$ENDIF}

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

