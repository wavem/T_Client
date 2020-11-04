object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'T_Client'
  ClientHeight = 736
  ClientWidth = 1213
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object __pnBase: TPanel
    Left = 0
    Top = 0
    Width = 1213
    Height = 736
    Align = alClient
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 216
    ExplicitTop = 224
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Notebook_Main: TNotebook
      Left = 0
      Top = 0
      Width = 1213
      Height = 736
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 128
      ExplicitTop = 192
      ExplicitWidth = 150
      ExplicitHeight = 150
      object TPage
        Left = 0
        Top = 0
        Caption = 'Login'
        ExplicitWidth = 150
        ExplicitHeight = 150
        object _pnBase_01_Login: TPanel
          Left = 0
          Top = 0
          Width = 1213
          Height = 736
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Login'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 320
          ExplicitTop = 232
          ExplicitWidth = 185
          ExplicitHeight = 41
          object btn_Enter: TButton
            Left = 568
            Top = 392
            Width = 75
            Height = 25
            Caption = 'ENTER'
            TabOrder = 0
            OnClick = btn_EnterClick
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        HelpContext = 1
        Caption = 'Lobby'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object _pnBase_02_Lobby: TPanel
          Left = 0
          Top = 0
          Width = 1213
          Height = 736
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Lobby'
          Color = clMaroon
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 400
          ExplicitTop = 232
          ExplicitWidth = 185
          ExplicitHeight = 41
        end
      end
      object TPage
        Left = 0
        Top = 0
        HelpContext = 2
        Caption = 'Game'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object _pnBase_03_Game: TPanel
          Left = 0
          Top = 0
          Width = 1213
          Height = 736
          Align = alClient
          BevelOuter = bvNone
          Caption = 'G'
          Color = clMedGray
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 1028
          ExplicitWidth = 736
          ExplicitHeight = 185
        end
      end
    end
  end
end
