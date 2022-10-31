object Form1: TForm1
  Left = 318
  Top = 160
  Caption = 'Form1'
  ClientHeight = 618
  ClientWidth = 1275
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  DesignSize = (
    1275
    618)
  TextHeight = 15
  object ScrollBox1: TScrollBox
    Left = 128
    Top = 8
    Width = 1136
    Height = 592
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
  end
  object Button1: TButton
    Left = 18
    Top = 23
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 19
    Top = 63
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
    OnClick = Button2Click
  end
end
