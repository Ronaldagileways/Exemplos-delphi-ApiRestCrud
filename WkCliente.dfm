object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 496
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMenu: TPanel
    Left = 0
    Top = 0
    Width = 89
    Height = 496
    Align = alLeft
    TabOrder = 0
    ExplicitLeft = -6
    ExplicitTop = -8
  end
  object pnlmain: TPanel
    Left = 89
    Top = 0
    Width = 676
    Height = 496
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 224
    ExplicitTop = 160
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Splitter1: TSplitter
      Left = 1
      Top = 281
      Width = 674
      Height = 9
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 42
    end
    object pnlGrid: TPanel
      Left = 1
      Top = 1
      Width = 674
      Height = 280
      Align = alTop
      Caption = 'Grid'
      TabOrder = 0
      ExplicitLeft = 6
      ExplicitTop = 4
      object DBGrid1: TDBGrid
        Left = 5
        Top = 40
        Width = 320
        Height = 120
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object pnlEdicao: TPanel
      Left = 1
      Top = 331
      Width = 674
      Height = 164
      Align = alClient
      Caption = 'Edicao'
      TabOrder = 1
      ExplicitLeft = 264
      ExplicitTop = 320
      ExplicitWidth = 185
      ExplicitHeight = 41
    end
    object pnlBrowser: TPanel
      Left = 1
      Top = 290
      Width = 674
      Height = 41
      Align = alTop
      Caption = 'Browser'
      TabOrder = 2
      ExplicitLeft = 6
      ExplicitTop = 287
      object DBNavigator1: TDBNavigator
        Left = 5
        Top = 10
        Width = 240
        Height = 25
        TabOrder = 0
      end
    end
  end
  object NetHTTPClient1: TNetHTTPClient
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 602
    Top = 161
  end
end
