object FormMain: TFormMain
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'T_Client'
  ClientHeight = 848
  ClientWidth = 1192
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object __pnBase: TPanel
    Left = 0
    Top = 0
    Width = 1192
    Height = 848
    Align = alClient
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object Notebook_Main: TNotebook
      Left = 0
      Top = 0
      Width = 1192
      Height = 848
      Align = alClient
      PageIndex = 1
      TabOrder = 0
      object TPage
        Left = 0
        Top = 0
        Caption = 'Lobby'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object _pnBase_01_Login: TAdvSmoothPanel
          Left = 0
          Top = 0
          Width = 1192
          Height = 848
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
          Fill.Rounding = 10
          Fill.ShadowColor = clYellow
          Fill.ShadowOffset = 0
          Fill.ShadowType = stSurround
          Fill.Glow = gmRadialGradient
          Fill.GlowGradientColor = clBlack
          Fill.GlowRadialColor = clBlack
          Version = '1.5.0.0'
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 112
          ExplicitTop = 104
          TMSStyle = 4
          object lb_Title_Login_ID: TLabel
            Left = 449
            Top = 401
            Width = 18
            Height = 18
            Caption = 'ID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_Title_Login_PW: TLabel
            Left = 394
            Top = 433
            Width = 73
            Height = 18
            Caption = 'Password'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btn_SingleMode: TAdvGlassButton
            Left = 512
            Top = 692
            Width = 172
            Height = 32
            Cursor = crHandPoint
            BackColor = clNavy
            Caption = 'SINGLE MODE'
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
            TabOrder = 3
            Version = '1.3.0.2'
            OnClick = btn_SingleModeClick
          end
          object ed_ID: TAdvEdit
            Left = 479
            Top = 398
            Width = 169
            Height = 26
            BorderColor = clGradientInactiveCaption
            EditAlign = eaCenter
            EmptyTextStyle = []
            SoftBorder = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clGradientInactiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 16
            ParentFont = False
            TabOrder = 0
            Text = ''
            Visible = True
            Version = '3.3.5.3'
          end
          object btn_Login: TAdvGlassButton
            Left = 662
            Top = 395
            Width = 98
            Height = 64
            Cursor = crHandPoint
            BackColor = clNavy
            Caption = 'LOGIN'
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
            TabOrder = 2
            Version = '1.3.0.2'
            OnClick = btn_LoginClick
          end
          object ed_PW: TAdvEdit
            Left = 479
            Top = 430
            Width = 169
            Height = 26
            AutoThousandSeparator = False
            BorderColor = clGradientInactiveCaption
            EditAlign = eaCenter
            EditType = etPassword
            EmptyTextStyle = []
            SoftBorder = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            BevelInner = bvNone
            BevelOuter = bvNone
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            CanUndo = False
            Color = clGradientInactiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 16
            ParentFont = False
            PasswordChar = '*'
            TabOrder = 1
            Text = ''
            Visible = True
            Version = '3.3.5.3'
          end
          object btn_Information: TAdvGlassButton
            Left = 512
            Top = 730
            Width = 172
            Height = 32
            Cursor = crHandPoint
            BackColor = clNavy
            Caption = 'INFORMATION'
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
            TabOrder = 4
            Version = '1.3.0.2'
            OnClick = btn_InformationClick
          end
          object btn_SignUp: TAdvGlassButton
            Left = 512
            Top = 652
            Width = 172
            Height = 32
            Cursor = crHandPoint
            BackColor = clNavy
            Caption = 'SIGN UP'
            CornerRadius = 16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ForeColor = clOlive
            ForceTransparent = True
            GlowColor = clOlive
            InnerBorderColor = clBlack
            OuterBorderColor = clNavy
            ParentFont = False
            ShineColor = 15335424
            TabOrder = 5
            Version = '1.3.0.2'
            OnClick = btn_SignUpClick
          end
          object btn_Login_Quit: TAdvGlassButton
            Left = 512
            Top = 768
            Width = 172
            Height = 32
            Cursor = crHandPoint
            BackColor = clNavy
            Caption = 'QUIT'
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
            TabOrder = 6
            Version = '1.3.0.2'
            OnClick = btn_Login_QuitClick
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        HelpContext = 1
        Caption = 'Lobby'
        object _pnBase_02_Lobby: TAdvSmoothPanel
          Left = 0
          Top = 0
          Width = 1192
          Height = 848
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
          Fill.Rounding = 10
          Fill.ShadowColor = clYellow
          Fill.ShadowOffset = 0
          Fill.ShadowType = stSurround
          Fill.Glow = gmRadialGradient
          Fill.GlowGradientColor = clBlack
          Fill.GlowRadialColor = clBlack
          Version = '1.5.0.0'
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 232
          ExplicitTop = 209
          TMSStyle = 4
          object Label1: TLabel
            Left = 1025
            Top = 201
            Width = 18
            Height = 18
            Caption = 'ID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 970
            Top = 233
            Width = 73
            Height = 18
            Caption = 'Password'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object AdvGlassButton3: TAdvGlassButton
            Left = 1063
            Top = 774
            Width = 97
            Height = 32
            Cursor = crHandPoint
            BackColor = clNavy
            Caption = 'SEND'
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
            OnClick = btn_InformationClick
          end
          object AdvEdit1: TAdvEdit
            Left = 824
            Top = 774
            Width = 233
            Height = 26
            BorderColor = clGradientInactiveCaption
            EditAlign = eaCenter
            EmptyTextStyle = []
            SoftBorder = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clGradientInactiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 16
            ParentFont = False
            TabOrder = 1
            Text = ''
            Visible = True
            Version = '3.3.5.3'
          end
          object btn_Test: TAdvSmoothButton
            Left = 904
            Top = 280
            Width = 120
            Height = 35
            Cursor = crHandPoint
            Appearance.GlowPercentage = 35
            Appearance.Font.Charset = DEFAULT_CHARSET
            Appearance.Font.Color = clAqua
            Appearance.Font.Height = -15
            Appearance.Font.Name = 'Tahoma'
            Appearance.Font.Style = [fsBold]
            Appearance.Rounding = 12
            Status.Caption = '0'
            Status.Appearance.Fill.Color = clRed
            Status.Appearance.Fill.ColorMirror = clNone
            Status.Appearance.Fill.ColorMirrorTo = clNone
            Status.Appearance.Fill.GradientType = gtSolid
            Status.Appearance.Fill.GradientMirrorType = gtSolid
            Status.Appearance.Fill.BorderColor = clGray
            Status.Appearance.Fill.Rounding = 8
            Status.Appearance.Fill.ShadowOffset = 0
            Status.Appearance.Fill.Glow = gmNone
            Status.Appearance.Font.Charset = DEFAULT_CHARSET
            Status.Appearance.Font.Color = clWhite
            Status.Appearance.Font.Height = -11
            Status.Appearance.Font.Name = 'Tahoma'
            Status.Appearance.Font.Style = []
            Bevel = False
            BevelColor = clLime
            Caption = 'TEST'
            Color = clNavy
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 2
            ShowFocus = False
            Version = '2.1.0.0'
            OnClick = btn_TestClick
            TMSStyle = 0
          end
          object btn_GAME: TButton
            Left = 1056
            Top = 297
            Width = 75
            Height = 25
            Caption = 'ENTER'
            TabOrder = 3
            OnClick = btn_GAMEClick
          end
          object chat: TAdvMemo
            Left = 824
            Top = 328
            Width = 345
            Height = 425
            Cursor = crIBeam
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            AutoCompletion.Font.Charset = DEFAULT_CHARSET
            AutoCompletion.Font.Color = clWindowText
            AutoCompletion.Font.Height = -11
            AutoCompletion.Font.Name = 'Tahoma'
            AutoCompletion.Font.Style = []
            AutoCompletion.StartToken = '(.'
            AutoCorrect.Active = True
            AutoHintParameterPosition = hpBelowCode
            BookmarkGlyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              0800000000000001000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
              2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
              2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
              B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
              B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
              BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
              BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
              BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
              25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
            BorderStyle = bsSingle
            ClipboardFormats = [cfText]
            CodeFolding.Enabled = False
            CodeFolding.LineColor = clGray
            Ctl3D = False
            DelErase = True
            EnhancedHomeKey = False
            Gutter.Font.Charset = DEFAULT_CHARSET
            Gutter.Font.Color = clWindowText
            Gutter.Font.Height = -13
            Gutter.Font.Name = 'Courier New'
            Gutter.Font.Style = []
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'COURIER NEW'
            Font.Style = []
            HiddenCaret = False
            Lines.Strings = (
              '')
            MarkerList.UseDefaultMarkerImageIndex = False
            MarkerList.DefaultMarkerImageIndex = -1
            MarkerList.ImageTransparentColor = 33554432
            OleDropTarget = []
            PrintOptions.MarginLeft = 0
            PrintOptions.MarginRight = 0
            PrintOptions.MarginTop = 0
            PrintOptions.MarginBottom = 0
            PrintOptions.PageNr = False
            PrintOptions.PrintLineNumbers = False
            ReadOnly = True
            RightMarginColor = 14869218
            ScrollHint = False
            SelColor = clWhite
            SelBkColor = clNavy
            ShowRightMargin = True
            SmartTabs = False
            TabOrder = 4
            TabStop = True
            TrimTrailingSpaces = False
            UILanguage.ScrollHint = 'Row'
            UILanguage.Undo = 'Undo'
            UILanguage.Redo = 'Redo'
            UILanguage.Copy = 'Copy'
            UILanguage.Cut = 'Cut'
            UILanguage.Paste = 'Paste'
            UILanguage.Delete = 'Delete'
            UILanguage.SelectAll = 'Select All'
            UrlStyle.TextColor = clBlue
            UrlStyle.BkColor = clWhite
            UrlStyle.Style = [fsUnderline]
            UseStyler = True
            Version = '3.4.1.0'
            WordWrap = wwNone
          end
          object AdvScrollBox1: TAdvScrollBox
            Left = 24
            Top = 280
            Width = 769
            Height = 537
            BevelInner = bvNone
            BevelOuter = bvNone
            DoubleBuffered = True
            Ctl3D = False
            ParentCtl3D = False
            ParentDoubleBuffered = False
            TabOrder = 5
            BorderColor = 4326912
            object AdvSmoothPanel1: TAdvSmoothPanel
              Left = 16
              Top = 16
              Width = 361
              Height = 129
              Cursor = crDefault
              Caption.HTMLFont.Charset = DEFAULT_CHARSET
              Caption.HTMLFont.Color = clWindowText
              Caption.HTMLFont.Height = -11
              Caption.HTMLFont.Name = 'Tahoma'
              Caption.HTMLFont.Style = []
              Caption.Font.Charset = DEFAULT_CHARSET
              Caption.Font.Color = clWindowText
              Caption.Font.Height = -15
              Caption.Font.Name = 'Tahoma'
              Caption.Font.Style = [fsBold]
              Caption.BackgroundColor = 2622464
              Caption.BackgroundColorTo = 12411648
              Caption.ColorStart = clGradientActiveCaption
              Caption.ColorEnd = clGradientActiveCaption
              Caption.GradientType = gtHorizontal
              Caption.Line = False
              Fill.Color = 4326912
              Fill.ColorTo = 9653504
              Fill.ColorMirror = 9653504
              Fill.ColorMirrorTo = 4326912
              Fill.GradientType = gtVertical
              Fill.GradientMirrorType = gtVertical
              Fill.BorderColor = 2622464
              Fill.Rounding = 10
              Fill.ShadowColor = clBlack
              Fill.ShadowOffset = 6
              Fill.Glow = gmNone
              Version = '1.5.0.0'
              TabOrder = 0
              TMSStyle = 4
            end
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        HelpContext = 2
        Caption = 'Game'
        object _pnBase_03_Game: TAdvSmoothPanel
          Left = 0
          Top = 0
          Width = 1192
          Height = 848
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
          Fill.Rounding = 10
          Fill.ShadowColor = clYellow
          Fill.ShadowOffset = 0
          Fill.ShadowType = stSurround
          Fill.Glow = gmRadialGradient
          Fill.GlowGradientColor = clBlack
          Fill.GlowRadialColor = clBlack
          Version = '1.5.0.0'
          Align = alClient
          TabOrder = 0
          ExplicitLeft = -480
          ExplicitTop = -24
          TMSStyle = 4
          object Label5: TLabel
            Left = 1039
            Top = 431
            Width = 18
            Height = 18
            Caption = 'ID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object img_NextBlock: TImage
            Left = 404
            Top = 46
            Width = 140
            Height = 140
          end
          object AdvGlassButton2: TAdvGlassButton
            Left = 1072
            Top = 774
            Width = 97
            Height = 32
            Cursor = crHandPoint
            BackColor = clNavy
            Caption = 'SEND'
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
            OnClick = btn_InformationClick
          end
          object AdvEdit3: TAdvEdit
            Left = 916
            Top = 774
            Width = 159
            Height = 26
            BorderColor = clGradientInactiveCaption
            EditAlign = eaCenter
            EmptyTextStyle = []
            SoftBorder = True
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clGradientInactiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 16
            ParentFont = False
            TabOrder = 1
            Text = ''
            Visible = True
            Version = '3.3.5.3'
          end
          object AdvSmoothButton2: TAdvSmoothButton
            Left = 955
            Top = 455
            Width = 120
            Height = 35
            Cursor = crHandPoint
            Appearance.GlowPercentage = 35
            Appearance.Font.Charset = DEFAULT_CHARSET
            Appearance.Font.Color = clAqua
            Appearance.Font.Height = -15
            Appearance.Font.Name = 'Tahoma'
            Appearance.Font.Style = [fsBold]
            Appearance.Rounding = 12
            Status.Caption = '0'
            Status.Appearance.Fill.Color = clRed
            Status.Appearance.Fill.ColorMirror = clNone
            Status.Appearance.Fill.ColorMirrorTo = clNone
            Status.Appearance.Fill.GradientType = gtSolid
            Status.Appearance.Fill.GradientMirrorType = gtSolid
            Status.Appearance.Fill.BorderColor = clGray
            Status.Appearance.Fill.Rounding = 8
            Status.Appearance.Fill.ShadowOffset = 0
            Status.Appearance.Fill.Glow = gmNone
            Status.Appearance.Font.Charset = DEFAULT_CHARSET
            Status.Appearance.Font.Color = clWhite
            Status.Appearance.Font.Height = -11
            Status.Appearance.Font.Name = 'Tahoma'
            Status.Appearance.Font.Style = []
            Bevel = False
            BevelColor = clLime
            Caption = 'TEST'
            Color = clNavy
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 2
            ShowFocus = False
            Version = '2.1.0.0'
            OnClick = btn_TestClick
            TMSStyle = 0
          end
          object AdvMemo2: TAdvMemo
            Left = 944
            Top = 496
            Width = 225
            Height = 257
            Cursor = crIBeam
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            AutoCompletion.Font.Charset = DEFAULT_CHARSET
            AutoCompletion.Font.Color = clWindowText
            AutoCompletion.Font.Height = -11
            AutoCompletion.Font.Name = 'Tahoma'
            AutoCompletion.Font.Style = []
            AutoCompletion.StartToken = '(.'
            AutoCorrect.Active = True
            AutoHintParameterPosition = hpBelowCode
            BookmarkGlyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              0800000000000001000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
              2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
              2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
              B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
              B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
              BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
              BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
              BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
              25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
            BorderStyle = bsSingle
            ClipboardFormats = [cfText]
            CodeFolding.Enabled = False
            CodeFolding.LineColor = clGray
            Ctl3D = False
            DelErase = True
            EnhancedHomeKey = False
            Gutter.Font.Charset = DEFAULT_CHARSET
            Gutter.Font.Color = clWindowText
            Gutter.Font.Height = -13
            Gutter.Font.Name = 'Courier New'
            Gutter.Font.Style = []
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'COURIER NEW'
            Font.Style = []
            HiddenCaret = False
            Lines.Strings = (
              '')
            MarkerList.UseDefaultMarkerImageIndex = False
            MarkerList.DefaultMarkerImageIndex = -1
            MarkerList.ImageTransparentColor = 33554432
            OleDropTarget = []
            PrintOptions.MarginLeft = 0
            PrintOptions.MarginRight = 0
            PrintOptions.MarginTop = 0
            PrintOptions.MarginBottom = 0
            PrintOptions.PageNr = False
            PrintOptions.PrintLineNumbers = False
            ReadOnly = True
            RightMarginColor = 14869218
            ScrollHint = False
            SelColor = clWhite
            SelBkColor = clNavy
            ShowRightMargin = True
            SmartTabs = False
            TabOrder = 3
            TabStop = True
            TrimTrailingSpaces = False
            UILanguage.ScrollHint = 'Row'
            UILanguage.Undo = 'Undo'
            UILanguage.Redo = 'Redo'
            UILanguage.Copy = 'Copy'
            UILanguage.Cut = 'Cut'
            UILanguage.Paste = 'Paste'
            UILanguage.Delete = 'Delete'
            UILanguage.SelectAll = 'Select All'
            UrlStyle.TextColor = clBlue
            UrlStyle.BkColor = clWhite
            UrlStyle.Style = [fsUnderline]
            UseStyler = True
            Version = '3.4.1.0'
            WordWrap = wwNone
          end
          object grid_P1: TAdvStringGrid
            Left = 32
            Top = 32
            Width = 164
            Height = 322
            Cursor = crDefault
            TabStop = False
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clBlack
            ColCount = 10
            DefaultColWidth = 16
            DefaultRowHeight = 16
            DrawingStyle = gdsClassic
            Enabled = False
            FixedCols = 0
            RowCount = 20
            FixedRows = 0
            Options = [goVertLine, goHorzLine]
            ScrollBars = ssNone
            TabOrder = 4
            HoverRowCells = [hcNormal, hcSelected]
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ControlLook.FixedGradientHoverFrom = clGray
            ControlLook.FixedGradientHoverTo = clWhite
            ControlLook.FixedGradientDownFrom = clGray
            ControlLook.FixedGradientDownTo = clSilver
            ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownHeader.Font.Color = clWindowText
            ControlLook.DropDownHeader.Font.Height = -11
            ControlLook.DropDownHeader.Font.Name = 'Tahoma'
            ControlLook.DropDownHeader.Font.Style = []
            ControlLook.DropDownHeader.Visible = True
            ControlLook.DropDownHeader.Buttons = <>
            ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownFooter.Font.Color = clWindowText
            ControlLook.DropDownFooter.Font.Height = -11
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            EnableHTML = False
            EnableWheel = False
            EnhRowColMove = False
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
            FilterDropDown.Font.Style = []
            FilterDropDown.TextChecked = 'Checked'
            FilterDropDown.TextUnChecked = 'Unchecked'
            FilterDropDownMultiCol = False
            FilterDropDownClear = '(All)'
            FilterEdit.TypeNames.Strings = (
              'Starts with'
              'Ends with'
              'Contains'
              'Not contains'
              'Equal'
              'Not equal'
              'Larger than'
              'Smaller than'
              'Clear')
            FixedColWidth = 16
            FixedRowHeight = 16
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            HideFocusRect = True
            HoverButtons.Buttons = <>
            HoverButtons.Position = hbLeftFromColumnLeft
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            IntelliZoom = False
            Look = glSoft
            MouseActions.AutoSizeColOnDblClick = False
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.Color = clBtnFace
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurrence'
            SearchFooter.HintFindPrev = 'Find previous occurrence'
            SearchFooter.HintHighlight = 'Highlight occurrences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SelectionColor = clHighlight
            SelectionTextColor = clHighlightText
            ShowSelection = False
            ShowDesignHelper = False
            SortSettings.DefaultFormat = ssAutomatic
            Version = '7.8.0.1'
          end
          object grid_P2: TAdvStringGrid
            Left = 206
            Top = 32
            Width = 164
            Height = 322
            Cursor = crDefault
            TabStop = False
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clBlack
            ColCount = 10
            DefaultColWidth = 16
            DefaultRowHeight = 16
            DrawingStyle = gdsClassic
            Enabled = False
            FixedCols = 0
            RowCount = 20
            FixedRows = 0
            Options = [goVertLine, goHorzLine]
            ScrollBars = ssNone
            TabOrder = 5
            HoverRowCells = [hcNormal, hcSelected]
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ControlLook.FixedGradientHoverFrom = clGray
            ControlLook.FixedGradientHoverTo = clWhite
            ControlLook.FixedGradientDownFrom = clGray
            ControlLook.FixedGradientDownTo = clSilver
            ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownHeader.Font.Color = clWindowText
            ControlLook.DropDownHeader.Font.Height = -11
            ControlLook.DropDownHeader.Font.Name = 'Tahoma'
            ControlLook.DropDownHeader.Font.Style = []
            ControlLook.DropDownHeader.Visible = True
            ControlLook.DropDownHeader.Buttons = <>
            ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownFooter.Font.Color = clWindowText
            ControlLook.DropDownFooter.Font.Height = -11
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            EnableHTML = False
            EnableWheel = False
            EnhRowColMove = False
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
            FilterDropDown.Font.Style = []
            FilterDropDown.TextChecked = 'Checked'
            FilterDropDown.TextUnChecked = 'Unchecked'
            FilterDropDownMultiCol = False
            FilterDropDownClear = '(All)'
            FilterEdit.TypeNames.Strings = (
              'Starts with'
              'Ends with'
              'Contains'
              'Not contains'
              'Equal'
              'Not equal'
              'Larger than'
              'Smaller than'
              'Clear')
            FixedColWidth = 16
            FixedRowHeight = 16
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            HideFocusRect = True
            HoverButtons.Buttons = <>
            HoverButtons.Position = hbLeftFromColumnLeft
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            IntelliZoom = False
            Look = glSoft
            MouseActions.AutoSizeColOnDblClick = False
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.Color = clBtnFace
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurrence'
            SearchFooter.HintFindPrev = 'Find previous occurrence'
            SearchFooter.HintHighlight = 'Highlight occurrences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SelectionColor = clHighlight
            SelectionTextColor = clHighlightText
            ShowSelection = False
            ShowDesignHelper = False
            SortSettings.DefaultFormat = ssAutomatic
            Version = '7.8.0.1'
          end
          object grid_P3: TAdvStringGrid
            Left = 32
            Top = 415
            Width = 164
            Height = 322
            Cursor = crDefault
            TabStop = False
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clBlack
            ColCount = 10
            DefaultColWidth = 16
            DefaultRowHeight = 16
            DrawingStyle = gdsClassic
            Enabled = False
            FixedCols = 0
            RowCount = 20
            FixedRows = 0
            Options = [goVertLine, goHorzLine]
            ScrollBars = ssNone
            TabOrder = 6
            HoverRowCells = [hcNormal, hcSelected]
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ControlLook.FixedGradientHoverFrom = clGray
            ControlLook.FixedGradientHoverTo = clWhite
            ControlLook.FixedGradientDownFrom = clGray
            ControlLook.FixedGradientDownTo = clSilver
            ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownHeader.Font.Color = clWindowText
            ControlLook.DropDownHeader.Font.Height = -11
            ControlLook.DropDownHeader.Font.Name = 'Tahoma'
            ControlLook.DropDownHeader.Font.Style = []
            ControlLook.DropDownHeader.Visible = True
            ControlLook.DropDownHeader.Buttons = <>
            ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownFooter.Font.Color = clWindowText
            ControlLook.DropDownFooter.Font.Height = -11
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            EnableHTML = False
            EnableWheel = False
            EnhRowColMove = False
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
            FilterDropDown.Font.Style = []
            FilterDropDown.TextChecked = 'Checked'
            FilterDropDown.TextUnChecked = 'Unchecked'
            FilterDropDownMultiCol = False
            FilterDropDownClear = '(All)'
            FilterEdit.TypeNames.Strings = (
              'Starts with'
              'Ends with'
              'Contains'
              'Not contains'
              'Equal'
              'Not equal'
              'Larger than'
              'Smaller than'
              'Clear')
            FixedColWidth = 16
            FixedRowHeight = 16
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            HideFocusRect = True
            HoverButtons.Buttons = <>
            HoverButtons.Position = hbLeftFromColumnLeft
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            IntelliZoom = False
            Look = glSoft
            MouseActions.AutoSizeColOnDblClick = False
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.Color = clBtnFace
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurrence'
            SearchFooter.HintFindPrev = 'Find previous occurrence'
            SearchFooter.HintHighlight = 'Highlight occurrences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SelectionColor = clHighlight
            SelectionTextColor = clHighlightText
            ShowSelection = False
            ShowDesignHelper = False
            SortSettings.DefaultFormat = ssAutomatic
            Version = '7.8.0.1'
          end
          object grid_P4: TAdvStringGrid
            Left = 206
            Top = 415
            Width = 164
            Height = 322
            Cursor = crDefault
            TabStop = False
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clBlack
            ColCount = 10
            DefaultColWidth = 16
            DefaultRowHeight = 16
            DrawingStyle = gdsClassic
            Enabled = False
            FixedCols = 0
            RowCount = 20
            FixedRows = 0
            Options = [goVertLine, goHorzLine]
            ScrollBars = ssNone
            TabOrder = 7
            HoverRowCells = [hcNormal, hcSelected]
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ControlLook.FixedGradientHoverFrom = clGray
            ControlLook.FixedGradientHoverTo = clWhite
            ControlLook.FixedGradientDownFrom = clGray
            ControlLook.FixedGradientDownTo = clSilver
            ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownHeader.Font.Color = clWindowText
            ControlLook.DropDownHeader.Font.Height = -11
            ControlLook.DropDownHeader.Font.Name = 'Tahoma'
            ControlLook.DropDownHeader.Font.Style = []
            ControlLook.DropDownHeader.Visible = True
            ControlLook.DropDownHeader.Buttons = <>
            ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownFooter.Font.Color = clWindowText
            ControlLook.DropDownFooter.Font.Height = -11
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            EnableHTML = False
            EnableWheel = False
            EnhRowColMove = False
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
            FilterDropDown.Font.Style = []
            FilterDropDown.TextChecked = 'Checked'
            FilterDropDown.TextUnChecked = 'Unchecked'
            FilterDropDownMultiCol = False
            FilterDropDownClear = '(All)'
            FilterEdit.TypeNames.Strings = (
              'Starts with'
              'Ends with'
              'Contains'
              'Not contains'
              'Equal'
              'Not equal'
              'Larger than'
              'Smaller than'
              'Clear')
            FixedColWidth = 16
            FixedRowHeight = 16
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            HideFocusRect = True
            HoverButtons.Buttons = <>
            HoverButtons.Position = hbLeftFromColumnLeft
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            IntelliZoom = False
            Look = glSoft
            MouseActions.AutoSizeColOnDblClick = False
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.Color = clBtnFace
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurrence'
            SearchFooter.HintFindPrev = 'Find previous occurrence'
            SearchFooter.HintHighlight = 'Highlight occurrences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SelectionColor = clHighlight
            SelectionTextColor = clHighlightText
            ShowSelection = False
            ShowDesignHelper = False
            SortSettings.DefaultFormat = ssAutomatic
            Version = '7.8.0.1'
          end
          object grid_P5: TAdvStringGrid
            Left = 380
            Top = 415
            Width = 164
            Height = 322
            Cursor = crDefault
            TabStop = False
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clBlack
            ColCount = 10
            DefaultColWidth = 16
            DefaultRowHeight = 16
            DrawingStyle = gdsClassic
            Enabled = False
            FixedCols = 0
            RowCount = 20
            FixedRows = 0
            Options = [goVertLine, goHorzLine]
            ScrollBars = ssNone
            TabOrder = 8
            HoverRowCells = [hcNormal, hcSelected]
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ControlLook.FixedGradientHoverFrom = clGray
            ControlLook.FixedGradientHoverTo = clWhite
            ControlLook.FixedGradientDownFrom = clGray
            ControlLook.FixedGradientDownTo = clSilver
            ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownHeader.Font.Color = clWindowText
            ControlLook.DropDownHeader.Font.Height = -11
            ControlLook.DropDownHeader.Font.Name = 'Tahoma'
            ControlLook.DropDownHeader.Font.Style = []
            ControlLook.DropDownHeader.Visible = True
            ControlLook.DropDownHeader.Buttons = <>
            ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownFooter.Font.Color = clWindowText
            ControlLook.DropDownFooter.Font.Height = -11
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            EnableHTML = False
            EnableWheel = False
            EnhRowColMove = False
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
            FilterDropDown.Font.Style = []
            FilterDropDown.TextChecked = 'Checked'
            FilterDropDown.TextUnChecked = 'Unchecked'
            FilterDropDownMultiCol = False
            FilterDropDownClear = '(All)'
            FilterEdit.TypeNames.Strings = (
              'Starts with'
              'Ends with'
              'Contains'
              'Not contains'
              'Equal'
              'Not equal'
              'Larger than'
              'Smaller than'
              'Clear')
            FixedColWidth = 16
            FixedRowHeight = 16
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            HideFocusRect = True
            HoverButtons.Buttons = <>
            HoverButtons.Position = hbLeftFromColumnLeft
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            IntelliZoom = False
            Look = glSoft
            MouseActions.AutoSizeColOnDblClick = False
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.Color = clBtnFace
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurrence'
            SearchFooter.HintFindPrev = 'Find previous occurrence'
            SearchFooter.HintHighlight = 'Highlight occurrences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SelectionColor = clHighlight
            SelectionTextColor = clHighlightText
            ShowSelection = False
            ShowDesignHelper = False
            SortSettings.DefaultFormat = ssAutomatic
            Version = '7.8.0.1'
          end
          object grid_Mine: TAdvStringGrid
            Left = 577
            Top = 13
            Width = 324
            Height = 740
            Cursor = crDefault
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            TabStop = False
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clBlack
            ColCount = 10
            DefaultColWidth = 32
            DefaultRowHeight = 32
            DrawingStyle = gdsClassic
            FixedCols = 0
            RowCount = 23
            FixedRows = 0
            Options = [goVertLine, goHorzLine]
            ScrollBars = ssNone
            TabOrder = 10
            HoverRowCells = [hcNormal, hcSelected]
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ControlLook.FixedGradientHoverFrom = clGray
            ControlLook.FixedGradientHoverTo = clWhite
            ControlLook.FixedGradientDownFrom = clGray
            ControlLook.FixedGradientDownTo = clSilver
            ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownHeader.Font.Color = clWindowText
            ControlLook.DropDownHeader.Font.Height = -11
            ControlLook.DropDownHeader.Font.Name = 'Tahoma'
            ControlLook.DropDownHeader.Font.Style = []
            ControlLook.DropDownHeader.Visible = True
            ControlLook.DropDownHeader.Buttons = <>
            ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownFooter.Font.Color = clWindowText
            ControlLook.DropDownFooter.Font.Height = -11
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            EnableHTML = False
            EnableWheel = False
            EnhRowColMove = False
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
            FilterDropDown.Font.Style = []
            FilterDropDown.TextChecked = 'Checked'
            FilterDropDown.TextUnChecked = 'Unchecked'
            FilterDropDownMultiCol = False
            FilterDropDownClear = '(All)'
            FilterEdit.TypeNames.Strings = (
              'Starts with'
              'Ends with'
              'Contains'
              'Not contains'
              'Equal'
              'Not equal'
              'Larger than'
              'Smaller than'
              'Clear')
            FixedColWidth = 32
            FixedRowHeight = 32
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            HideFocusRect = True
            HoverButtons.Buttons = <>
            HoverButtons.Position = hbLeftFromColumnLeft
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            IntelliZoom = False
            Look = glSoft
            MouseActions.AutoSizeColOnDblClick = False
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.Color = clBtnFace
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurrence'
            SearchFooter.HintFindPrev = 'Find previous occurrence'
            SearchFooter.HintHighlight = 'Highlight occurrences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SelectionColor = clHighlight
            SelectionTextColor = clHighlightText
            ShowSelection = False
            ShowDesignHelper = False
            SortSettings.DefaultFormat = ssAutomatic
            Version = '7.8.0.1'
          end
          object grid_Items: TAdvStringGrid
            Left = 577
            Top = 756
            Width = 324
            Height = 36
            Cursor = crDefault
            TabStop = False
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clBlack
            ColCount = 10
            DefaultColWidth = 32
            DefaultRowHeight = 32
            DrawingStyle = gdsClassic
            FixedCols = 0
            RowCount = 1
            FixedRows = 0
            Options = [goVertLine, goHorzLine]
            ScrollBars = ssNone
            TabOrder = 11
            HoverRowCells = [hcNormal, hcSelected]
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ControlLook.FixedGradientHoverFrom = clGray
            ControlLook.FixedGradientHoverTo = clWhite
            ControlLook.FixedGradientDownFrom = clGray
            ControlLook.FixedGradientDownTo = clSilver
            ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownHeader.Font.Color = clWindowText
            ControlLook.DropDownHeader.Font.Height = -11
            ControlLook.DropDownHeader.Font.Name = 'Tahoma'
            ControlLook.DropDownHeader.Font.Style = []
            ControlLook.DropDownHeader.Visible = True
            ControlLook.DropDownHeader.Buttons = <>
            ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownFooter.Font.Color = clWindowText
            ControlLook.DropDownFooter.Font.Height = -11
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            EnableHTML = False
            EnableWheel = False
            EnhRowColMove = False
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
            FilterDropDown.Font.Style = []
            FilterDropDown.TextChecked = 'Checked'
            FilterDropDown.TextUnChecked = 'Unchecked'
            FilterDropDownMultiCol = False
            FilterDropDownClear = '(All)'
            FilterEdit.TypeNames.Strings = (
              'Starts with'
              'Ends with'
              'Contains'
              'Not contains'
              'Equal'
              'Not equal'
              'Larger than'
              'Smaller than'
              'Clear')
            FixedColWidth = 32
            FixedRowHeight = 32
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            HideFocusRect = True
            HoverButtons.Buttons = <>
            HoverButtons.Position = hbLeftFromColumnLeft
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            IntelliZoom = False
            Look = glSoft
            MouseActions.AutoSizeColOnDblClick = False
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.Color = clBtnFace
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurrence'
            SearchFooter.HintFindPrev = 'Find previous occurrence'
            SearchFooter.HintHighlight = 'Highlight occurrences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SelectionColor = clHighlight
            SelectionTextColor = clHighlightText
            ShowSelection = False
            ShowDesignHelper = False
            SortSettings.DefaultFormat = ssAutomatic
            Version = '7.8.0.1'
          end
          object btn_LogOut: TcxButton
            Left = 1094
            Top = 455
            Width = 75
            Height = 25
            Caption = 'Back'
            TabOrder = 12
            OnClick = btn_LogOutClick
          end
          object pn_Pause: TPanel
            Left = 648
            Top = 310
            Width = 184
            Height = 41
            BevelOuter = bvNone
            Caption = 'PAUSED'
            Color = clRed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -53
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 9
            Visible = False
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        HelpContext = 3
        Caption = 'Test'
        object _pnBase_04_Test: TAdvSmoothPanel
          Left = 0
          Top = 0
          Width = 1192
          Height = 848
          Cursor = crDefault
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
          Caption.Line = False
          Fill.Color = clBlack
          Fill.ColorTo = clMaroon
          Fill.ColorMirror = clNone
          Fill.ColorMirrorTo = clBlack
          Fill.GradientType = gtHatch
          Fill.GradientMirrorType = gtHatch
          Fill.HatchStyle = HatchStyleDiagonalBrick
          Fill.HatchStyleMirror = HatchStyleHorizontalBrick
          Fill.BorderColor = clOlive
          Fill.Rounding = 0
          Fill.ShadowOffset = 0
          Fill.Glow = gmNone
          Version = '1.5.0.0'
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 144
          ExplicitTop = 136
          TMSStyle = 4
          object pn_Login: TAdvSmoothPanel
            Left = 456
            Top = 328
            Width = 337
            Height = 281
            Cursor = crDefault
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
            Caption.Line = False
            Fill.Color = clMaroon
            Fill.ColorTo = clBlack
            Fill.ColorMirror = 15587527
            Fill.ColorMirrorTo = 16773863
            Fill.GradientType = gtHatch
            Fill.GradientMirrorType = gtHatch
            Fill.HatchStyle = HatchStyleDiagonalBrick
            Fill.BorderColor = clBlack
            Fill.Rounding = 10
            Fill.ShadowOffset = 0
            Fill.Glow = gmNone
            Version = '1.5.0.0'
            TabOrder = 0
            TMSStyle = 4
          end
        end
      end
    end
  end
end
