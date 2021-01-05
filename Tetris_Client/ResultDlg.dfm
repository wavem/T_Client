object FormGameResult: TFormGameResult
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormGameResult'
  ClientHeight = 164
  ClientWidth = 263
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Notebook_GameResult: TNotebook
    Left = 0
    Top = 0
    Width = 263
    Height = 164
    Align = alClient
    PageIndex = 1
    TabOrder = 0
    ExplicitLeft = 336
    ExplicitTop = 200
    ExplicitWidth = 385
    ExplicitHeight = 241
    object TPage
      Left = 0
      Top = 0
      Caption = 'Win'
      ExplicitWidth = 150
      ExplicitHeight = 150
      object _pnBase_01_Win: TAdvSmoothPanel
        Left = 0
        Top = 0
        Width = 263
        Height = 164
        Cursor = crDefault
        ResizeHandle = False
        Caption.HTMLFont.Charset = DEFAULT_CHARSET
        Caption.HTMLFont.Color = clWindowText
        Caption.HTMLFont.Height = -11
        Caption.HTMLFont.Name = 'Tahoma'
        Caption.HTMLFont.Style = []
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clWindowText
        Caption.Font.Height = -16
        Caption.Font.Name = 'Tahoma'
        Caption.Font.Style = []
        Fill.Color = 2622464
        Fill.ColorTo = 9588224
        Fill.ColorMirror = 9588224
        Fill.ColorMirrorTo = 2622464
        Fill.GradientType = gtVertical
        Fill.GradientMirrorType = gtVertical
        Fill.BorderColor = clBlack
        Fill.Rounding = 0
        Fill.ShadowColor = clNavy
        Fill.ShadowOffset = 5
        Fill.ShadowType = stSurround
        Fill.Glow = gmRadialGradient
        Fill.GlowGradientColor = clBlack
        Fill.GlowRadialColor = clBlack
        Version = '1.5.0.0'
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 254
        ExplicitHeight = 165
        TMSStyle = 4
        object lb_Title_Win: TLabel
          Left = 54
          Top = 33
          Width = 152
          Height = 39
          Caption = 'YOU WIN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGradientActiveCaption
          Font.Height = -32
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btn_OK_Win: TAdvGlassButton
          Left = 46
          Top = 98
          Width = 172
          Height = 32
          Cursor = crHandPoint
          BackColor = clNavy
          Caption = 'OK'
          CornerRadius = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGradientActiveCaption
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ForeColor = clWhite
          ForceTransparent = True
          GlowColor = clOlive
          InnerBorderColor = clBlack
          OuterBorderColor = clNavy
          ParentFont = False
          ShineColor = 15335424
          TabOrder = 0
          Version = '1.3.0.2'
          OnClick = btn_OK_WinClick
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      HelpContext = 1
      Caption = 'Defeat'
      ExplicitWidth = 0
      ExplicitHeight = 0
      object _pnBase_02_Defeat: TAdvSmoothPanel
        Left = 0
        Top = 0
        Width = 263
        Height = 164
        Cursor = crDefault
        ResizeHandle = False
        Caption.HTMLFont.Charset = DEFAULT_CHARSET
        Caption.HTMLFont.Color = clWindowText
        Caption.HTMLFont.Height = -11
        Caption.HTMLFont.Name = 'Tahoma'
        Caption.HTMLFont.Style = []
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clWindowText
        Caption.Font.Height = -16
        Caption.Font.Name = 'Tahoma'
        Caption.Font.Style = []
        Fill.Color = 2622464
        Fill.ColorTo = 9588224
        Fill.ColorMirror = 9588224
        Fill.ColorMirrorTo = 2622464
        Fill.GradientType = gtVertical
        Fill.GradientMirrorType = gtVertical
        Fill.BorderColor = clBlack
        Fill.Rounding = 0
        Fill.ShadowColor = clRed
        Fill.ShadowOffset = 5
        Fill.ShadowType = stSurround
        Fill.Glow = gmRadialGradient
        Fill.GlowGradientColor = clBlack
        Fill.GlowRadialColor = clBlack
        Version = '1.5.0.0'
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 40
        ExplicitTop = 24
        ExplicitWidth = 254
        ExplicitHeight = 165
        TMSStyle = 4
        object lb_Title_Defeat: TLabel
          Left = 70
          Top = 33
          Width = 125
          Height = 39
          Caption = 'DEFEAT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGradientActiveCaption
          Font.Height = -32
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btn_OK_Defeat: TAdvGlassButton
          Left = 46
          Top = 98
          Width = 172
          Height = 32
          Cursor = crHandPoint
          BackColor = clNavy
          Caption = 'OK'
          CornerRadius = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGradientActiveCaption
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ForeColor = clWhite
          ForceTransparent = True
          GlowColor = clOlive
          InnerBorderColor = clBlack
          OuterBorderColor = clNavy
          ParentFont = False
          ShineColor = 15335424
          TabOrder = 0
          Version = '1.3.0.2'
          OnClick = btn_OK_DefeatClick
        end
      end
    end
  end
end
