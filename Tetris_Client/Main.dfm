object FormMain: TFormMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'T_Client'
  ClientHeight = 819
  ClientWidth = 1186
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object __pnBase: TPanel
    Left = 0
    Top = 0
    Width = 1186
    Height = 819
    Align = alClient
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object Notebook_Main: TNotebook
      Left = 0
      Top = 0
      Width = 1186
      Height = 819
      Align = alClient
      PageIndex = 2
      TabOrder = 0
      object TPage
        Left = 0
        Top = 0
        Caption = 'Lobby'
        object _pnBase_01_Login: TAdvSmoothPanel
          Left = 0
          Top = 0
          Width = 1186
          Height = 819
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
          object btn_Debug: TImage
            Left = 1072
            Top = 16
            Width = 105
            Height = 105
            OnClick = btn_DebugClick
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
            AutoThousandSeparator = False
            BorderColor = clGradientInactiveCaption
            EditAlign = eaCenter
            EditType = etAlphaNumeric
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
            Top = 392
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
          Width = 1186
          Height = 819
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
          TMSStyle = 4
          object lb_Lobby_10: TLabel
            Left = 854
            Top = 22
            Width = 26
            Height = 18
            Caption = 'No.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_Lobby_11: TLabel
            Left = 962
            Top = 22
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
          object lb_Lobby_12: TLabel
            Left = 1079
            Top = 22
            Width = 45
            Height = 18
            Caption = 'Grade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btn_Send_LobbyChat: TAdvGlassButton
            Left = 1072
            Top = 756
            Width = 80
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
            TabOrder = 1
            Version = '1.3.0.2'
            OnClick = btn_Send_LobbyChatClick
          end
          object ed_Chat_Lobby: TAdvEdit
            Left = 851
            Top = 759
            Width = 217
            Height = 26
            BorderColor = 10240280
            EditAlign = eaDefault
            EmptyTextStyle = []
            FocusFontColor = clMoneyGreen
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
            BorderStyle = bsNone
            Color = 7422746
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clAqua
            Font.Height = -15
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            MaxLength = 48
            ParentFont = False
            TabOrder = 0
            Text = ''
            Visible = True
            OnKeyDown = ed_Chat_LobbyKeyDown
            Version = '3.3.5.3'
          end
          object grid_PlayerList: TAdvStringGrid
            Left = 849
            Top = 48
            Width = 302
            Height = 391
            Cursor = crDefault
            TabStop = False
            BorderStyle = bsNone
            Color = 7422746
            ColCount = 3
            Ctl3D = True
            DefaultRowHeight = 28
            DoubleBuffered = True
            DrawingStyle = gdsClassic
            FixedColor = clWhite
            FixedCols = 0
            RowCount = 60
            FixedRows = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 14722896
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            GradientEndColor = 12148001
            GradientStartColor = 12148001
            GridLineWidth = 2
            Options = [goHorzLine, goRowSelect]
            ParentCtl3D = False
            ParentDoubleBuffered = False
            ParentFont = False
            ScrollBars = ssNone
            TabOrder = 2
            GridLineColor = 9393441
            GridFixedLineColor = 12148001
            HoverRowCells = [hcNormal, hcSelected]
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            BackGround.Display = bdGradientVert
            BackGround.Cells = bcFixed
            BackGround.Color = 14849594
            BackGround.ColorTo = clWhite
            BorderColor = 7422746
            ColumnHeaders.Strings = (
              'Idx'
              'State'
              'Team'
              'Item'
              'Title'
              'Master ID'
              'Players'
              'Private'
              'Enter')
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
            ControlLook.NoDisabledButtonLook = True
            DefaultAlignment = taCenter
            EnableHTML = False
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
            FilterDropDown.Font.Style = []
            FilterDropDown.TextChecked = 'Checked'
            FilterDropDown.TextUnChecked = 'Unchecked'
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
            FixedColWidth = 40
            FixedRowHeight = 28
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWhite
            FixedFont.Height = -15
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            HoverButtons.Buttons = <>
            HoverButtons.Position = hbLeftFromColumnLeft
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            IntelliPan = ipNone
            IntelliZoom = False
            MouseActions.AutoSizeColOnDblClick = False
            MouseActions.WheelIncrement = 1
            MouseActions.WheelAction = waScroll
            MouseActions.WheelActive = waMouseOver
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
            ScrollSynch = True
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
            ShowSelection = False
            SortSettings.DefaultFormat = ssAutomatic
            Version = '7.8.0.1'
            ColWidths = (
              40
              170
              90)
          end
          object btn_MakeRoom: TAdvGlassButton
            Left = 688
            Top = 22
            Width = 120
            Height = 74
            Cursor = crHandPoint
            BackColor = clNavy
            Caption = 'MAKING ROOM'
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
            OnClick = btn_MakeRoomClick
          end
          object btn_LogOut: TAdvGlassButton
            Left = 562
            Top = 22
            Width = 120
            Height = 74
            Cursor = crHandPoint
            BackColor = clNavy
            Caption = 'LOGOUT'
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
            OnClick = btn_LogOutClick
          end
          object btn_Enter: TAdvGlassButton
            Left = 436
            Top = 22
            Width = 120
            Height = 74
            Cursor = crHandPoint
            BackColor = clNavy
            Caption = 'ENTER'
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
            TabOrder = 5
            Version = '1.3.0.2'
            OnClick = btn_EnterClick
          end
          object btn_Log_Lobby: TAdvGlassButton
            Left = 310
            Top = 22
            Width = 120
            Height = 74
            Cursor = crHandPoint
            BackColor = clNavy
            Caption = 'LOG'
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
            OnClick = btn_Log_LobbyClick
          end
          object memo_Chat_Lobby: TcxMemo
            Left = 849
            Top = 447
            TabStop = False
            ParentFont = False
            ParentShowHint = False
            Properties.ReadOnly = True
            ShowHint = False
            Style.BorderStyle = ebsNone
            Style.Color = 7422746
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clInactiveBorder
            Style.Font.Height = -15
            Style.Font.Name = #47569#51008' '#44256#46357
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.LookAndFeel.SkinName = 'Black'
            Style.Shadow = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.SkinName = 'Black'
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.SkinName = 'Black'
            StyleHot.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.SkinName = 'Black'
            TabOrder = 7
            Height = 305
            Width = 302
          end
          object pnRoom_1: TAdvSmoothPanel
            Left = 14
            Top = 159
            Width = 416
            Height = 128
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
            Fill.Color = 7422746
            Fill.ColorTo = 9262113
            Fill.ColorMirror = 9262113
            Fill.ColorMirrorTo = 9262113
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtVertical
            Fill.BorderColor = 14922381
            Fill.Rounding = 10
            Fill.ShadowColor = clBlack
            Fill.ShadowOffset = 10
            Fill.Glow = gmNone
            Version = '1.5.0.0'
            TabOrder = 8
            TMSStyle = 4
            object lb_Room_1_NumTitle: TLabel
              Left = 16
              Top = 14
              Width = 26
              Height = 18
              Caption = 'No.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Room_1_Number: TLabel
              Left = 48
              Top = 14
              Width = 10
              Height = 18
              Caption = '1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Title_Room_1: TLabel
              Left = 80
              Top = 14
              Width = 209
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #51068#51060#49340#49324#50724#50977#52832#54036#44396#49901#51068#51060#49340
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_PlayerCount_Room_1: TLabel
              Left = 218
              Top = 41
              Width = 54
              Height = 45
              Caption = '6/6'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -37
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object img_Team_Room_1: TImage
              Left = 97
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                1C744558745469746C65005465616D3B50656F706C653B47726F75703B557365
                72937B6049000009D8494441545847C595775494571AC6C7925034AB820931AB
                462C481B502054294A114491629080489391367418096D181C507A57AAD2CBC0
                4815180129418D4824A0706CD185644D34AB89D9C41CD7CDB3F712D964D03FCC
                FE91BDE73C87F35EBEF7FD3DDF77EFFB0E03C0FF55AFDCFC33F5CACD3F530C2E
                97FB923E4DD45F7689A7EF7481AB9B3314A733D41FAD7DBFEF8816CE4568DE3A
                1BBAB5B08DADAE3CEFF9D7CA11FAA98971A85EDA188ED77DFB42A2C9CDF1321F
                DC688AC5D7A3CD787CF3133CBAD18F2F4405B898E3064180D693325705CD761F
                25461B4BF10FE5CCE7890554A208CD23E39561F8FE662FC62B43F168B21B5F8F
                34E0764B32068F3BA125D408352C4D64DAAC1174B3998CAE00D53F94339F2716
                5035FAA8082785C9F8BC261A55873420E2396038C305FD7C7B3404ED4015DB1C
                B5117668883F748D9CA13DD56735BC4BD3171A70A7B7146D71FBD0C377FA6F4E
                354B1B790E1B916EBD065C63B9A1F93CB180AAC47963FBF96C5F143A2BE1724D
                3C6A427622D35E1195E1FB2814CD096E688EB4828863FCDD27D106DFF485AA41
                14A2F1AC9B6342F62D31292AC540711CB21D99E0ED9003CFF43D2459AD47ACB1
                1CC23497B7CCE7890554A9D66BF28ABD0C50E2A18B07D79AC939B6E19BF116DC
                3D97894FB8A6188A36C0DDDA60DC6BE5E1C1E56A3C9EEAC4745F01464F7AE10C
                5B0BA70F2861FA5301C9EDC0648D0FA6EA4350EE638C00E65B38ACB234793E4F
                2CA08A325A65196BB40A75A1D6F8E73D11FE757F00CF1E8C6224DB1957B21DF1
                455B347A539DF0F84A25BEBD528399DE2C5CAF0AC170AA03CE466EC3E98FD6A1
                2E78E76CCEB7BD31F876E0184EB10C10A0BEFCA9BBDA3B5AF379620195959595
                44B2BD46A530CAEE979FEE76E2E71911D12004DE4C5C2FF7C140E24E94BB29E1
                6AD67EDCAE0FC764251B17D3F6A13D441B15FBD7A2D0460E69D6EBF0F3743F1E
                9E8BC6839E44E439A9FFC2B5514BB1B0B0909ECF130BA8343535179A9B9BBF5B
                C6B69C9CEECBC58F537578325E8B13B6AB3156E08A930EF2286419A3C25511AD
                FE1A68F565A2DA6503F277AF42CE4E1964EF94C5314B793C19AB22066271ADDC
                0FFC3D8A374C4D4DD792DA8B3827341861B95B1821594C4650A6F2CB06A84C4C
                4C9626381BF3BB78F678D0C5C177A395C8B5DD808E48631CB7DE80AB1D99684F
                3F8C44AB8D38A22B8B506D1984E8C8816BB80C7CA3E528F6D0C3E391D3F8A63B
                0E8290ED609B29A5929A7F6190159CA9CA084C5766F8A76E66F81E5778B50105
                058537B69BEB6C4DF5D9F6FC6C9C0DAE9F49419EB3260A3E5440BEBB3E1E4ED4
                E3C92D21662E14E2BAE0082E17B8A32BD905411A2B10A3BB0CF5514E18AF8D27
                5D61861827E5E77A465BB4D7AD5BF72635D07F83C3E89D0A65B0F8F20CAFC4F7
                C50D90B590E8CDC04463665AF5DED18EA60894721C50CDF54669F84788D49145
                0BD7094FBF10E2F9740B9EDDA9C7F7175231D3148AA9DA082458AC43A4FE3BE8
                3A958C9341B64872D6C7C73E7AF04EDC7CC5C2651593D496245AD431E1CF708F
                5FC3708D5BF5AB81176089C83433BDB41A1B41519BCBF3D64B5128AA75446F13
                07FD55F168AB484469A41DCEF29CF0EC761D9EDDACC64FE38578288AC5B42010
                336DF1C8DBAF0ABE9B3E46CE9F84A8280C3951BBE1C95A8BA4EA1D084C53FAB7
                F391D542F3836F1B129634653A1D799BB2190BED589B561FAFDADD5E72D60DBD
                637C4C7C5582E13B09A819F4444C9101DC62E51196A183CAD660D484EDC2A38B
                59F87134178FFA13F0655330A61BC371AB3E1249369BD0D8C503B7D47436C737
                59094975BAA818DE8B86CB2EC86832052B591E0EC1B23D4C43A93584BD881A78
                33284DBDB171D81F63338504CC87E87A083A2702D1FEB90FCE5C3D04C1882B4A
                06764178291225F1B618C973C3FDD670CC08D8B85BE38B2FDB62D1CDB3432ADB
                0C3D57537F976385FC5E13E49D334476D736E4F598A2E8BC15624F6B60D7E1B7
                6A095B8A1A9066A72B7FDD7135185517C9BC274E9B463DD034E286EA8B8E281D
                DC831C913132BA0C70BADF0DC5555EA8F037C634B91FD3C208028FC31D412452
                EC36A3BC3604CD974308F8B79CF4B3BA486DFF00C75BB590D4A281E496AD4816
                EA62B7DF92AF087BB63396F8242BFCD0F2D96114F49820F79CF1ACDBCC2E3D92
                AC8334927CAC4513B9DD96A81CF44161FB214405EA20DF591D4DE1E6A4CD76E0
                18193CDEEE4A38D5E9873AF2250B4456B339492D5B70F48C3A784235F09A5410
                2F50466C8312F8673460ED27F51361AFA006A43D13DEFF8A53B0159145CA88AE
                5001B74E0D7135AA24491DD99D56281F60A17A3000198D1F222A6F1BA62E9540
                48E6C0D17D9AE0EE6522C94907E9DE7AF04D50414A8D3DAA06D828EDF5445ADB
                7644556F4668F17A8414CBC32FE7AFF03A2E8703712BA9811F087BF60B2C5AAD
                20B9729797ACEB5E3FD92CBB40994EFBA01593FE891FDC3A5AE8F8F468A113A2
                73772228431319750E286E75C7B1131638472EDF10F90D683CEA88139126080E
                5706BFCC129C1C3D3847CA2328C910DCFC0F11936DF3D4338679DB92253565EE
                21D9BDDD45F284BEBD84A7CC7B0B490F3216CFB5E102A23788689F2E21A2CE64
                0EC5AB7242B334FF71B2D50523773270ED7E1E066FC4A2ACEB00E20A8DE1C5DD
                08B798F5A443B6224BB00B6DA387219A0CC0A93E3B0467A8C0DA67F9DF8D1C97
                46935A1426F3A22E6D413A9416ECF6277770DE20A28B9A59EC97CC0CCA6FB6C7
                C8BD545C99E163F04E38FA6EB1D17F2B1003B7C3209AF245DB8407DA27BCD03C
                7610F523E4C20E5922AF771B0AC83DA2B73DAFD3022CFE7A183949F9909AF4E5
                E8BC5920C6140B7E5DB343C93F8579AF7D8C05E1D83EB48CBB10903B5A3F7785
                60D411E5172D5134608C13E70D496B1920BB5B0F19E4C2A6B66B93CBA705BE50
                033CC116240AB4105FA90D3337C9315293BE3DEDFBD73220458748F7A42FCA86
                77A078C804850458D06788DC1E7D648B08B0530729B31DF202D8B805F1F5EA88
                A96522AA4A059C722584972922AE520B66EE920F494D7A04F4985FCB80B4F751
                05B45CF598056611607AA736523BB47E059ED98A440A6C50436CAD2A3EA6C00A
                65449C524468A902828B37817D7223FC0BD68353BA05661E924F484D6A6031D1
                6B19903C18B37E90C5DF84800C52306F33C28B95C0394520258A082F5504A752
                0911A75F004B36C13787CC82B4B5F04C598303BC77E1F8F14AD8862E87D5E125
                D8EE2AD9456AD223782D03B39790485A6F8F8C828DEFBB7E7BFDE4B26DD9EF74
                D8B2578EEF095831B1C777C5BD3D7ECB60EDFB1676B196C2D27B09CCDDA5FF66
                EA26756DC741C96B262E125D86FB25F2F5EC2442E4D517AB925ACB892488E8CB
                8933C582DF1635412F0C6D173AAFE75A7319119D5EF473AE24A23F67BF17DD93
                25A2FFA7CF2E25A2B79F9E3D85D3BAE24CB1E0E545136822354345BF0C2D3627
                6A704E7331FD4B9FA3A23973E059385D624CB1E0D56B2EF97FD54BEB372697F1
                1FA84DD17BBF233D730000000049454E44AE426082}
            end
            object img_Item_Room_1: TImage
              Left = 151
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                20744558745469746C65004944453B546F6F6C733B437573746F6D697A3B4465
                7369676E3BAA5D29920000097A494441545847C5560B548EE916FE870845354A
                6E699AC8A1316E611C7722A4C27227F752462E29A1726D528A14452A738AAE23
                4A4AF7BFBFD245BA21C5A9E492D205C5184C3CB3F737FDD6CFB8CC39EBAC75F6
                5ACFFABEEF7DF7BBF7B3F7FBEEFD7E2200FF57FCC772FC74C27B20F9AA156D64
                208CBDD30B4A107907C5132ED1F0DF13A9D10F21F20E6443F1FCCADF6D097204
                79424719B427F0B840C6EBD445D1910082FF05FAFCB2C81A6ED70A7EE7315932
                7213F48DBA1CF40EDFE9E91F9D4D4EE01510D372D8F75C8E934790E354C3F93D
                48A703EBB1BEDBF1B322379FB3F4FA79119CBBFA44441EF48EA876F38980CBB1
                F06A67CFE0F3767BBCF4688EC908E49C3C4E4FF60AB8509E98751D65F7EBF0E4
                550B1EBFFC1DA5F71E213EA308EEBE91B59B77B82D255DC5D6755F918E488A4F
                8940608A9145CC1AABFDA8697E8EFB8D4DB85C741B9EFEE75EDB3B9FDC377692
                6167D269BFCCDCE188BDB32F2C6D0EC266F7515C48C8C6BDDAA7A86E68465DD3
                0B5AD78CA0C894379BB6BB3B90BE3281B7A9EDA708C8A6B64DDF01A314A7CD5E
                1F6BB9D51537CB1FE066C543DCAD7D0CFFD078D8ED3FE14B3AC25EEB1BAD1AA3
                3B646C9FD1134D86CF5B61137C2E360377AA1B514E19A978508F5A2212416396
                D6CE1EA4FF3581490899901521EA56484F715B2D9DA15D0CE76F4A76F709C5AD
                CA1A641596A3B4FC219C3CCE60F5863D06A4C3C6A467A413416DCE12EBEC0449
                3E11AE4171D93DE41697A3A2E631CEC56762A585FD11D25122C87D48406EC9BA
                DD61FBDC832E8E9B3C8BD32B3D70ED468C9DA5B5D47C4F4BFDF3DF9071F5360A
                6EDEC5F9F82CFCB8ED109F263E6052C24C4279D2CCE5FBDDBC83915D540149DE
                2DA4E6942239AB04A5771FC17CE34F5CF43D090A04E160B642D47EF1DA5DD53E
                8131D8E9E417376CE44466C96524AFDD7FA8FA3AEB832DCD2D6F914E0633F26F
                A3B8B40A16366E3534CF86A495C10454A69A98E5455ECA84F8CA9F8E1332AF23
                4E528CF8F462989A39328141040D026F076F23AF17C92F5865FFAAEED79738E2
                7F1E9BECBD12C64D99D3BBDF403DF5C5668E11A117D2F0F4750B2457CA9076E5
                266EDDA9C1DACDAEAF699D6CB63AE81B2E59B470A56D4B0A459D9475831C1721
                26B51051495771F6520E366C3B885D2EA7E078C01FEBAD9D8ED11A2E532621EA
                30D7D4EEE1FDC74D82F1E028316CF79E80F56E6F845F4C4753CB1BDCA60325CE
                2D1548E497DCC1F2F5FB6A691D9F6CDE868EE3F417CCB3B2757A25CEBE8688B8
                5C4427E723565C88E89402B29185437ED1A878D8881764AB8982394F6762D95A
                3B1F5AAB4A10C91B2DDAF24B5452164ACA6B8413FFA8F9059A7E7F8327A47CFB
                4103455E8694EC9B48A773904235BED5FE48DDB7DAFDB5D840FF41E317985B39
                BECAC82B4524451A122D81C1ECB53030598769466658BC7A070223C5C823E211
                71D9F00F4F4541D97D989A3BF096701644ED26CD5C65B0DACA0955358DC82A28
                4726394ABF724B70CC91B373DED344DACB6BA577101E198B28F725B5051E231A
                D25D7F782BF9C583CA2D07A1172F63A6C912B469DB7E1FD9ED47186E6A6E8FAB
                E43C2C360B27C39211461959B47A1B54D4754ED27C3726C07BD8D1608E65A0DD
                5E6FAAFB6AE4DFA8124848D39E59700B8919C5C8B85282D48C1C14FCBC020D39
                EE78559F83978F325171691FA2FC9C30DD78113B77247BBC3D2A04ED852B6C11
                4ECE7D4393101273190B57D942494DFB679AE30CF241164EB15C0F0D1D9529B3
                CC0E2F33DFD512149E80C2924A94DFABC3D5EB15884DCE16224F49CB46AE9F29
                9ACBC2D1D2908097559E7851EE82A65BA71061339A9DEF265B42A724709FE8A6
                3FD3F4E49A2D2E427616ACB4815257ED7FD1B83681AB8DAB47108104A1D3C871
                73C74F9E6516A36F6459A76F6C8929B32CEA2D36EE6B0C080C479EFF72349586
                E3F5C3303C2FB4C2F30286251A73EDE13655F319ADE73AE7A6C4596570841ADF
                E9CDF41B33D5144AAADA01F42DEB5CE80352E10F5EC4ECD9481702A7B1BB6EDF
                5E43E39CA737B3F3577783D19C6B86E69CB568CA5983675737E3B2DB0C6C9D38
                E879EF9E1ABAA4CF970FDBE106C5413109DE6BAE7F75C2BBCB49A5FB007AB48A
                5E67D6154848BB1B13511CD447A177D68111E2A737C3F0DB9D403C49374553DA
                323C495B8AA6AC1F517CDC008E13FA61B5D12C2C9ABDACA4AB6A0F7624CD826C
                A7E492659BD2B1F78509141DD213BD7D59C99FACD061A896628F0C27BDD42725
                6178F1EF0034262E4463C2023424CEC713C93A14784EC1F6D19A5835631A9C77
                3A60ABF51E18CEB190A8A8F6E84DEBA5246483FAAB63A930817C57BEF2FF743E
                5853A1A764AF5EEAE31B61F8B5EC24EA638C517FC118755146789CBC1AF96E63
                B14D4F03CB268F87DDFA8D38E0EC85B3D1A9D84D9D6EC6DC0DA94A2AEA7DC8CE
                BB76ADD64B26DD9F10E919E8384843A1578AE37071C3B5503C2F398EBAC8E9A8
                8D30406DF83434C49B22F7A751B019AEF9DA64F860386CB082D37E0F1CF33F07
                BF9064EA8045703D1A027D93F5E22ECADD34C99EEC9DF14979E7FCBBDE0ABD12
                760C13D71787E059D131D4044F44CD9909A8393D01F51797207BF730380CE92E
                D1E8DA75ACE1F8A9952B97AEA3C69444FF0A8908A02EE747E03BC0C533982AC8
                4CDC5949ED1BB2FB45129C7679DD5E9D7A5DDC3A24ADAE2804CDF99EB87F6A2C
                610CE19F78746E0132777C0FFBC1DDD3D43BC8711351EBDC59E5DB91A38D33AD
                6C5D119756482452713234192782937181EE83ED74A74C9CBE26AD8BB21A6F07
                5F3C1F3D03D2E8BB8498E99CA88CA7C6927718F74E8CC0BDE37AB8EBA387DAB3
                73916133003B06759374EF20C769E55212AA44415145536FCC3CB1959D1B6253
                8BE01B9C049FD389381A94882822B1798727C64C59EA47BA5CD2D2FF80F78407
                784235C454E75143F65154790D250C4195E710DA7763A46FD1C176DD6E128A5C
                369D1C0D3F153A29AA7C3374F49CB4F55B5D84C8BD89805760BCF08C151760E2
                4CF33AD2E31EF097E6C3C2033CA11AB8B0EF9DAA3033541ED245A5BB2E1E061B
                42BC411BB6035525DDE485B473E44214ADE52ACD9E62470565ADC1A34CD2AC1D
                0ED3355C08EF338902A293F230F8873955A4F359026C44C9525BC539D26202F2
                B7F74585EF54442EEA039B7F7CDCB914FCDD3A2E90F87E84B1C4D2FA0039CEC5
                D9B82CCC5FBE0D03864C73A5F94F6E010B0FF2E5A166AEA5E2B24DA76B956DBF
                AFAB2DB4947DD5E5DFEDB9B0787BBFAEA20FC1E3ADF38A9D149435070E9BEE4B
                515773E4ADCE397AE93FE447850D080D88C057292F60C8FEBB7D94B98CF03CEB
                B13EAFEBDE0A8E5CEAFCB336A42438123EE10C7EFFE24219F95FD8101465F1DF
                C8DFB42112FD01510E806A1B8077730000000049454E44AE426082}
            end
            object img_Game_Room_1: TImage
              Left = 43
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                1974455874536F6674776172650041646F626520496D616765526561647971C9
                653C00000011744558745469746C650054696D653B436C6F636B3BA59641FE00
                000ADF494441545847955707545557167D6926D62466223A4613C782C642442C
                58965811A529A08882A22616149510D11835111393650315512C51B1102B2A08
                FF8B14F9A22020F2A517691F3EF0814FEFEE39E702C6958C6B66EE5A7BDD77DB
                D9FB9E73EE7DEF49597B7749D9BFFD24A97E3F2EA9CE9EF88FA0F2563BDE6EC7
                3B6F008F89B97FB7E3D356130FF365FDB293A6516101CD252AA9A5B2EC6FA0D2
                41FC4EC8EE1DBDB27D8ED8E79D3EE69F7FC63BBEE08CB78A8CA1E0B4B72AEFB4
                777CCE69AF5B69C70E2D0BF8C14D87E6BF4B10625A2A3452F35FD054942765FE
                BC8386A9080165C5528B96485F0315411C7F70EFD0DC93472FABCEF94013740B
                3589F1A87F918146551EC838D5B9A8CB4E47F5B3589406FAA38044657B7BFE11
                B967D797B4FE3D8210D25C5E22099495484DB4E1F4DDDBA99B0A2B1103A4CCB3
                8F2E7709577BAE5CD623DBDBE348FE99E38DDAC70A349514A1495D80FACC64D4
                2444A33A2602559172820CD5D161D4F708F519CFD15890838A470F907FF25863
                AAE77EAF9DD6F33F227B1C9EB7D87EB3A6983C5E28A5EEDAC65C9250C2AA1854
                C4AE653BB6F6CBF63AF4ACF8CE0D3416E6A3312F0B35B10AA41C3E08F9B215B8
                3071064E8D180F3228EA0B13A743E6E088E443FBA00DF12771612426196AFF2B
                C8F0DC9778C979DD176497C3F256139133927ED8C27C9294424A9A356A7E14E4
                D75C36F4CDF4DC97A50995A1A93017B589D182D87782114E4C9A8BCBDBF7E196
                9F0C81B218C8E37344CD6DEEE771DF71539174602FCAEF5E45756C244AE50148
                3BF05B96CF4AC7FE64BF4D84BA40526E75654E494ADEE1263515ABF8F16D67E3
                59DDD2F6EF8D2CBD178486DC0C543EBC0799FD72788F9986EB5E1711A1CCC78B
                222DAAEA1AD1D2FA12D76F87899ADB596AAD18BFEE7509C769BECCCE1EA557CF
                411B76176AF2E4F35F763F5C30469FC3214424B86E664E49526E134A3851DE4B
                DCF3A357819F2F1A5EA4A132E22E6E9898E3B4E912843E4E4352AE06F58DCD78
                F9126F048FA7E469C4FCDFCDED71DDD814EA8B275071CF1FB9674F2166C7F7C7
                89A733F3C56DDAC0BCA2B0EBDF956D769E90B66F6F4B5DFA7354D1CEE54BEC71
                C6C2018AC43C64166AD1D0D48256DAED7F03CF7BF23C070A6501CE2E7084CCD6
                0E45678FA02CF80692F6FCD4E2B76AC564E2EBD4CE2B0AEFFEFDB86D6E778A02
                2881E21450BAEFC07183E978F0248DC82BB0EBD753686E6925BCFCB36E6DAB39
                04DCD722FA5EE269623A665938E1415C0A144F327072C26C246CFB1685270F92
                174E226A937320F17521F0C910E59DA396E683E3BF7369A955C6A22CC00FBEE3
                A722F0EC4DA4AB2A905554893A726D5373EB9F20C2BFB509F1896930B5D90879
                D863DC0D8D42524E31EE9EBF8D4B8646C8F3DC43E1F0C16327A716A7F1E30610
                2FDF11C20B9D82972F73493DB45F244CE24E379C32321331CFA284CB56570AB7
                3634B7A1F10D887B968A79561B1012FE18B1F10950661688B5C9941367675BE1
                A9CB5A64BBBB22E1FB2DF05B60B586783F20B0F7A50FC21C9707E45D3E8FE20B
                C7215FB408377E3C2876FE820CB0919AFA26D4938837E1C9D314CCB15C0779E8
                633C897B8AA2620D728AAB90A3AE12EB6FB97B426E638D944D7457FCB8158136
                8B380CDD08220C5D43ED1DD2D4FE7F20DFD35DB84B111821C85F145792A14A68
                AAEA50DBD08C3A0685E375C4C42763B6F96AC8EE470972756919CDAF476E4915
                72594449251EC9A2E037691A929D9622C56D0382AC176510EF87043E9252B7FB
                8B975495DCBE8CECDDAE38AB6788C4C44CB1036184905F5A25CE3A7BA2B6A10D
                E7FC8261BDEC7BCCA398078744212696C84B34625E415935F2680D83D7A7A4E6
                E29CFE443C5F6D8B24E7E508B2B4AE22DE9E1D027ADC5B680BCD4D5FA46F5D83
                9343F591915B8AC72B1C11B1D80E320B2BDC9E69822B13A7C1F72B439C1AA28F
                639F0FC7620737146A2AB1D0713B0283E4E4F63254D636A2A8AC162A4D0D0A34
                D524BC1A564BB70A4F9E193E1ECA15D6507EB30801669620DE4F089C88528FBB
                9656559CA1A914A3F3FA9391969A83BC926A04873D842CFC21E4847BE1510261
                8A68443E8A86FB3E1F982F7285AD8333C53E5C84A9A8A20645E535282CAB818A
                C0221859D985F0359882670E1678BAD402378D4DAB89F71FAF04F8CF354FCFF3
                F140CA46475C9D361B89E1D1E4BEB6C52A061963C30C75452DD4DA3A146B6B31
                CDC41E5E3E6790989A8D62EE6F47C75C165240488A8AC38D9973F074F13CC4D8
                9AE10F23E34CE27DE581EE9767980427EFFD09299B57E0BEDD52841F3A817C41
                4E3B798D984998B8A4B20EA504DB153B8547B82D2084D5B50929AF45A1400D22
                8F9C4298DD62C4DB1823D29AAE77432319F17E4C1039D0C5DB70EA36C59A3594
                03EB90B0F11B5C5DB094764F3B10E46DBB2AAE682361620D83327D91E30F087F
                188D327A167DEDE325249285F2BA420A8BBFAD23E2BE7640ECFC190836998B5F
                468EE5375177823886EF3B0E1CAA776DE6DCD62C773724393990BB4CA00C8914
                3B6001AFEF9A63CD8465D5F5B0A1531011158D727A167D2CA45D4C9B376A914C
                F9737B8EA9887F8CE9545C9A60D43AA3579F11C4CB2F257113B21B3E3A6D3045
                1EEDB40609F6E64870598F6B660B919F5F4CF1AEC5FC256E2825E20E7226ACA8
                A91719FE800454D434A09CC14208968BBF23B1F5285495C2DF7A099EAEFF1AD1
                A653106C341947478EBB4F7C1D092804F075D865E3C02F8DFD26CF6A7DEEEC28
                8E4A84BD3D82D7BBA2B8BCFA95DBCB05798320D4D2919B6FB7050A3A11DA5A6A
                539F10D2EE8D52121EE24202ED49C0E2B97838CB10E7474F6C5DF5D94053E263
                F78B6B980BAB60353D3D861BF8DEB5982F9225F5DB6F20B7B2867C0389509743
                534D02DA4998AC922E1C0B5B571210239E8508028F9796542074F35684D8D820
                79ED123C9A350E570DC6E3B7417A9789A717E1CFD7F19911E3B962359D0774EE
                DACF6B9841FC7D4B4BC4984D45FA96B5620701B6CB90762F9C04D40B92CABA06
                71E3992D7481223A06557443729B2FA28CD048042D5D49EBEC904AB75ED47403
                F81B8C81C740BD84BE9D3A0F249EAECC7762D068E695A453430DB862359C91DD
                66F6D4F9CA6B88BE4A6E3207D1269390B2DE014A5727049A5A40B66A1D9E9DBF
                84826749D0A84B504DA4E121A15029939178C10F216B9D114C1E546E5A8DE4AF
                17E2A1913E6E8E1E8DC30346154EEEFEC958B2DF83203EC9BC07E85145859568
                E5FEFCC82278B0C7BC8F7B8F3FFC2FBD8C6B13A640317D2CE2AD8D91E9B606CA
                CDABA170588260CBF9B833D78C4ECB5C04CCB3807CBE95E857D211CEF8762562
                CDA72172B21E2E0E1B8503FD8667CDECF1E924B2CBDF8322F1CA6F5D948EF6E7
                8340E51829D106DF90B441D7B9D9910FDD077DD075F09EBE432FF8E88E69BD33
                6E0C1453F5C5394E5E65830C9795C8DAB616393B9D9145C232E80A7FEEB800B1
                14B6C84923E1FFD508787F31BC7557EFC157BEE8D47918D9637211F772FF0B12
                E3705FFE6FA1E2454AB4815709572480DF11AF3CC1B1EA65F661AF593FF71972
                FFD8E723E0AB3B12B7478F847CEC4884198E8262D228844DE0F608DCD11B8EF3
                83BEC491CF86618FCEE05093EE9F1AD3FA3E047EEF0BB7B3FD0E011EBD875217
                15565211E02755DCE90027AA10C189C9AA396EBD0DBB7C34D6F993FEDBDD7506
                85FFAA3324ED406FDD328FDEBAD8AFA35BCEEDDDBD06466CE8D97FD7B8CE1F4E
                A0F9FF24F0AEDF2788BFA20EE20E1CEA3584BAA9B0124F015DC94347573C7BE8
                305EFDA6B10136C43BE177786F423F02FFEDF0B71DD7FCD3C1BBE5170C9FF157
                C44CF426FC3FA5C323EC4AF60A13F0371D5FA75C739BFB799CE7F1FCFFA148D2
                BF01640A1D84694D0E890000000049454E44AE426082}
            end
            object lb_Game_1: TLabel
              Left = 37
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #45824#44592#51473
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Team_1: TLabel
              Left = 91
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #54016#51204
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Item_1: TLabel
              Left = 145
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #50500#53596#51204
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btn_Room_1: TAdvGlassButton
              Tag = 1
              Left = 304
              Top = 11
              Width = 91
              Height = 94
              Cursor = crHandPoint
              BackColor = clNavy
              Caption = 'ENTER'
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
              OnClick = ClickEnterRoomButton
            end
          end
          object pnRoom_2: TAdvSmoothPanel
            Left = 427
            Top = 159
            Width = 416
            Height = 128
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
            Fill.Color = 7422746
            Fill.ColorTo = 9262113
            Fill.ColorMirror = 9262113
            Fill.ColorMirrorTo = 9262113
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtVertical
            Fill.BorderColor = 14922381
            Fill.Rounding = 10
            Fill.ShadowColor = clBlack
            Fill.ShadowOffset = 10
            Fill.Glow = gmNone
            Version = '1.5.0.0'
            TabOrder = 9
            TMSStyle = 4
            object lb_Room_2_NumTitle: TLabel
              Left = 16
              Top = 14
              Width = 26
              Height = 18
              Caption = 'No.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Room_2_Number: TLabel
              Left = 48
              Top = 14
              Width = 10
              Height = 18
              Caption = '2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Title_Room_2: TLabel
              Left = 80
              Top = 14
              Width = 209
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #51068#51060#49340#49324#50724#50977#52832#54036#44396#49901#51068#51060#49340
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_PlayerCount_Room_2: TLabel
              Left = 218
              Top = 41
              Width = 54
              Height = 45
              Caption = '6/6'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -37
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object img_Team_Room_2: TImage
              Left = 97
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                1C744558745469746C65005465616D3B50656F706C653B47726F75703B557365
                72937B6049000009D8494441545847C595775494571AC6C7925034AB820931AB
                462C481B502054294A114491629080489391367418096D181C507A57AAD2CBC0
                4815180129418D4824A0706CD185644D34AB89D9C41CD7CDB3F712D964D03FCC
                FE91BDE73C87F35EBEF7FD3DDF77EFFB0E03C0FF55AFDCFC33F5CACD3F530C2E
                97FB923E4DD45F7689A7EF7481AB9B3314A733D41FAD7DBFEF8816CE4568DE3A
                1BBAB5B08DADAE3CEFF9D7CA11FAA98971A85EDA188ED77DFB42A2C9CDF1321F
                DC688AC5D7A3CD787CF3133CBAD18F2F4405B898E3064180D693325705CD761F
                25461B4BF10FE5CCE7890554A208CD23E39561F8FE662FC62B43F168B21B5F8F
                34E0764B32068F3BA125D408352C4D64DAAC1174B3998CAE00D53F94339F2716
                5035FAA8082785C9F8BC261A55873420E2396038C305FD7C7B3404ED4015DB1C
                B5117668883F748D9CA13DD56735BC4BD3171A70A7B7146D71FBD0C377FA6F4E
                354B1B790E1B916EBD065C63B9A1F93CB180AAC47963FBF96C5F143A2BE1724D
                3C6A427622D35E1195E1FB2814CD096E688EB4828863FCDD27D106DFF485AA41
                14A2F1AC9B6342F62D31292AC540711CB21D99E0ED9003CFF43D2459AD47ACB1
                1CC23497B7CCE7890554A9D66BF28ABD0C50E2A18B07D79AC939B6E19BF116DC
                3D97894FB8A6188A36C0DDDA60DC6BE5E1C1E56A3C9EEAC4745F01464F7AE10C
                5B0BA70F2861FA5301C9EDC0648D0FA6EA4350EE638C00E65B38ACB234793E4F
                2CA08A325A65196BB40A75A1D6F8E73D11FE757F00CF1E8C6224DB1957B21DF1
                455B347A539DF0F84A25BEBD528399DE2C5CAF0AC170AA03CE466EC3E98FD6A1
                2E78E76CCEB7BD31F876E0184EB10C10A0BEFCA9BBDA3B5AF379620195959595
                44B2BD46A530CAEE979FEE76E2E71911D12004DE4C5C2FF7C140E24E94BB29E1
                6AD67EDCAE0FC764251B17D3F6A13D441B15FBD7A2D0460E69D6EBF0F3743F1E
                9E8BC6839E44E439A9FFC2B5514BB1B0B0909ECF130BA8343535179A9B9BBF5B
                C6B69C9CEECBC58F537578325E8B13B6AB3156E08A930EF2286419A3C25511AD
                FE1A68F565A2DA6503F277AF42CE4E1964EF94C5314B793C19AB22066271ADDC
                0FFC3D8A374C4D4DD792DA8B3827341861B95B1821594C4650A6F2CB06A84C4C
                4C9626381BF3BB78F678D0C5C177A395C8B5DD808E48631CB7DE80AB1D99684F
                3F8C44AB8D38A22B8B506D1984E8C8816BB80C7CA3E528F6D0C3E391D3F8A63B
                0E8290ED609B29A5929A7F6190159CA9CA084C5766F8A76E66F81E5778B50105
                058537B69BEB6C4DF5D9F6FC6C9C0DAE9F49419EB3260A3E5440BEBB3E1E4ED4
                E3C92D21662E14E2BAE0082E17B8A32BD905411A2B10A3BB0CF5514E18AF8D27
                5D61861827E5E77A465BB4D7AD5BF72635D07F83C3E89D0A65B0F8F20CAFC4F7
                C50D90B590E8CDC04463665AF5DED18EA60894721C50CDF54669F84788D49145
                0BD7094FBF10E2F9740B9EDDA9C7F7175231D3148AA9DA082458AC43A4FE3BE8
                3A958C9341B64872D6C7C73E7AF04EDC7CC5C2651593D496245AD431E1CF708F
                5FC3708D5BF5AB81176089C83433BDB41A1B41519BCBF3D64B5128AA75446F13
                07FD55F168AB484469A41DCEF29CF0EC761D9EDDACC64FE38578288AC5B42010
                336DF1C8DBAF0ABE9B3E46CE9F84A8280C3951BBE1C95A8BA4EA1D084C53FAB7
                F391D542F3836F1B129634653A1D799BB2190BED589B561FAFDADD5E72D60DBD
                637C4C7C5582E13B09A819F4444C9101DC62E51196A183CAD660D484EDC2A38B
                59F87134178FFA13F0655330A61BC371AB3E1249369BD0D8C503B7D47436C737
                59094975BAA818DE8B86CB2EC86832052B591E0EC1B23D4C43A93584BD881A78
                33284DBDB171D81F63338504CC87E87A083A2702D1FEB90FCE5C3D04C1882B4A
                06764178291225F1B618C973C3FDD670CC08D8B85BE38B2FDB62D1CDB3432ADB
                0C3D57537F976385FC5E13E49D334476D736E4F598A2E8BC15624F6B60D7E1B7
                6A095B8A1A9066A72B7FDD7135185517C9BC274E9B463DD034E286EA8B8E281D
                DC831C913132BA0C70BADF0DC5555EA8F037C634B91FD3C208028FC31D412452
                EC36A3BC3604CD974308F8B79CF4B3BA486DFF00C75BB590D4A281E496AD4816
                EA62B7DF92AF087BB63396F8242BFCD0F2D96114F49820F79CF1ACDBCC2E3D92
                AC8334927CAC4513B9DD96A81CF44161FB214405EA20DF591D4DE1E6A4CD76E0
                18193CDEEE4A38D5E9873AF2250B4456B339492D5B70F48C3A784235F09A5410
                2F50466C8312F8673460ED27F51361AFA006A43D13DEFF8A53B0159145CA88AE
                5001B74E0D7135AA24491DD99D56281F60A17A3000198D1F222A6F1BA62E9540
                48E6C0D17D9AE0EE6522C94907E9DE7AF04D50414A8D3DAA06D828EDF5445ADB
                7644556F4668F17A8414CBC32FE7AFF03A2E8703712BA9811F087BF60B2C5AAD
                20B9729797ACEB5E3FD92CBB40994EFBA01593FE891FDC3A5AE8F8F468A113A2
                73772228431319750E286E75C7B1131638472EDF10F90D683CEA88139126080E
                5706BFCC129C1C3D3847CA2328C910DCFC0F11936DF3D4338679DB92253565EE
                21D9BDDD45F284BEBD84A7CC7B0B490F3216CFB5E102A23788689F2E21A2CE64
                0EC5AB7242B334FF71B2D50523773270ED7E1E066FC4A2ACEB00E20A8DE1C5DD
                08B798F5A443B6224BB00B6DA387219A0CC0A93E3B0467A8C0DA67F9DF8D1C97
                46935A1426F3A22E6D413A9416ECF6277770DE20A28B9A59EC97CC0CCA6FB6C7
                C8BD545C99E163F04E38FA6EB1D17F2B1003B7C3209AF245DB8407DA27BCD03C
                7610F523E4C20E5922AF771B0AC83DA2B73DAFD3022CFE7A183949F9909AF4E5
                E8BC5920C6140B7E5DB343C93F8579AF7D8C05E1D83EB48CBB10903B5A3F7785
                60D411E5172D5134608C13E70D496B1920BB5B0F19E4C2A6B66B93CBA705BE50
                033CC116240AB4105FA90D3337C9315293BE3DEDFBD73220458748F7A42FCA86
                77A078C804850458D06788DC1E7D648B08B0530729B31DF202D8B805F1F5EA88
                A96522AA4A059C722584972922AE520B66EE920F494D7A04F4985FCB80B4F751
                05B45CF598056611607AA736523BB47E059ED98A440A6C50436CAD2A3EA6C00A
                65449C524468A902828B37817D7223FC0BD68353BA05661E924F484D6A6031D1
                6B19903C18B37E90C5DF84800C52306F33C28B95C0394520258A082F5504A752
                0911A75F004B36C13787CC82B4B5F04C598303BC77E1F8F14AD8862E87D5E125
                D8EE2AD9456AD223782D03B39790485A6F8F8C828DEFBB7E7BFDE4B26DD9EF74
                D8B2578EEF095831B1C777C5BD3D7ECB60EDFB1676B196C2D27B09CCDDA5FF66
                EA26756DC741C96B262E125D86FB25F2F5EC2442E4D517AB925ACB892488E8CB
                8933C582DF1635412F0C6D173AAFE75A7319119D5EF473AE24A23F67BF17DD93
                25A2FFA7CF2E25A2B79F9E3D85D3BAE24CB1E0E545136822354345BF0C2D3627
                6A704E7331FD4B9FA3A23973E059385D624CB1E0D56B2EF97FD54BEB372697F1
                1FA84DD17BBF233D730000000049454E44AE426082}
            end
            object img_Item_Room_2: TImage
              Left = 151
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                20744558745469746C65004944453B546F6F6C733B437573746F6D697A3B4465
                7369676E3BAA5D29920000097A494441545847C5560B548EE916FE870845354A
                6E699AC8A1316E611C7722A4C27227F752462E29A1726D528A14452A738AAE23
                4A4AF7BFBFD245BA21C5A9E492D205C5184C3CB3F737FDD6CFB8CC39EBAC75F6
                5ACFFABEEF7DF7BBF7B3F7FBEEFD7E2200FF57FCC772FC74C27B20F9AA156D64
                208CBDD30B4A107907C5132ED1F0DF13A9D10F21F20E6443F1FCCADF6D097204
                79424719B427F0B840C6EBD445D1910082FF05FAFCB2C81A6ED70A7EE7315932
                7213F48DBA1CF40EDFE9E91F9D4D4EE01510D372D8F75C8E934790E354C3F93D
                48A703EBB1BEDBF1B322379FB3F4FA79119CBBFA44441EF48EA876F38980CBB1
                F06A67CFE0F3767BBCF4688EC908E49C3C4E4FF60AB8509E98751D65F7EBF0E4
                550B1EBFFC1DA5F71E213EA308EEBE91B59B77B82D255DC5D6755F918E488A4F
                8940608A9145CC1AABFDA8697E8EFB8D4DB85C741B9EFEE75EDB3B9FDC377692
                6167D269BFCCDCE188BDB32F2C6D0EC266F7515C48C8C6BDDAA7A86E68465DD3
                0B5AD78CA0C894379BB6BB3B90BE3281B7A9EDA708C8A6B64DDF01A314A7CD5E
                1F6BB9D51537CB1FE066C543DCAD7D0CFFD078D8ED3FE14B3AC25EEB1BAD1AA3
                3B646C9FD1134D86CF5B61137C2E360377AA1B514E19A978508F5A2212416396
                D6CE1EA4FF3581490899901521EA56484F715B2D9DA15D0CE76F4A76F709C5AD
                CA1A641596A3B4FC219C3CCE60F5863D06A4C3C6A467A413416DCE12EBEC0449
                3E11AE4171D93DE41697A3A2E631CEC56762A585FD11D25122C87D48406EC9BA
                DD61FBDC832E8E9B3C8BD32B3D70ED468C9DA5B5D47C4F4BFDF3DF9071F5360A
                6EDEC5F9F82CFCB8ED109F263E6052C24C4279D2CCE5FBDDBC83915D540149DE
                2DA4E6942239AB04A5771FC17CE34F5CF43D090A04E160B642D47EF1DA5DD53E
                8131D8E9E417376CE44466C96524AFDD7FA8FA3AEB832DCD2D6F914E0633F26F
                A3B8B40A16366E3534CF86A495C10454A69A98E5455ECA84F8CA9F8E1332AF23
                4E528CF8F462989A39328141040D026F076F23AF17C92F5865FFAAEED79738E2
                7F1E9BECBD12C64D99D3BBDF403DF5C5668E11A117D2F0F4750B2457CA9076E5
                266EDDA9C1DACDAEAF699D6CB63AE81B2E59B470A56D4B0A459D9475831C1721
                26B51051495771F6520E366C3B885D2EA7E078C01FEBAD9D8ED11A2E532621EA
                30D7D4EEE1FDC74D82F1E028316CF79E80F56E6F845F4C4753CB1BDCA60325CE
                2D1548E497DCC1F2F5FB6A691D9F6CDE868EE3F417CCB3B2757A25CEBE8688B8
                5C4427E723565C88E89402B29185437ED1A878D8881764AB8982394F6762D95A
                3B1F5AAB4A10C91B2DDAF24B5452164ACA6B8413FFA8F9059A7E7F8327A47CFB
                4103455E8694EC9B48A773904235BED5FE48DDB7DAFDB5D840FF41E317985B39
                BECAC82B4524451A122D81C1ECB53030598769466658BC7A070223C5C823E211
                71D9F00F4F4541D97D989A3BF096701644ED26CD5C65B0DACA0955358DC82A28
                4726394ABF724B70CC91B373DED344DACB6BA577101E198B28F725B5051E231A
                D25D7F782BF9C583CA2D07A1172F63A6C912B469DB7E1FD9ED47186E6A6E8FAB
                E43C2C360B27C39211461959B47A1B54D4754ED27C3726C07BD8D1608E65A0DD
                5E6FAAFB6AE4DFA8124848D39E59700B8919C5C8B85282D48C1C14FCBC020D39
                EE78559F83978F325171691FA2FC9C30DD78113B77247BBC3D2A04ED852B6C11
                4ECE7D4393101273190B57D942494DFB679AE30CF241164EB15C0F0D1D9529B3
                CC0E2F33DFD512149E80C2924A94DFABC3D5EB15884DCE16224F49CB46AE9F29
                9ACBC2D1D2908097559E7851EE82A65BA71061339A9DEF265B42A724709FE8A6
                3FD3F4E49A2D2E427616ACB4815257ED7FD1B83681AB8DAB47108104A1D3C871
                73C74F9E6516A36F6459A76F6C8929B32CEA2D36EE6B0C080C479EFF72349586
                E3F5C3303C2FB4C2F30286251A73EDE13655F319ADE73AE7A6C4596570841ADF
                E9CDF41B33D5144AAADA01F42DEB5CE80352E10F5EC4ECD9481702A7B1BB6EDF
                5E43E39CA737B3F3577783D19C6B86E69CB568CA5983675737E3B2DB0C6C9D38
                E879EF9E1ABAA4CF970FDBE106C5413109DE6BAE7F75C2BBCB49A5FB007AB48A
                5E67D6154848BB1B13511CD447A177D68111E2A737C3F0DB9D403C49374553DA
                323C495B8AA6AC1F517CDC008E13FA61B5D12C2C9ABDACA4AB6A0F7624CD826C
                A7E492659BD2B1F78509141DD213BD7D59C99FACD061A896628F0C27BDD42725
                6178F1EF0034262E4463C2023424CEC713C93A14784EC1F6D19A5835631A9C77
                3A60ABF51E18CEB190A8A8F6E84DEBA5246483FAAB63A930817C57BEF2FF743E
                5853A1A764AF5EEAE31B61F8B5EC24EA638C517FC118755146789CBC1AF96E63
                B14D4F03CB268F87DDFA8D38E0EC85B3D1A9D84D9D6EC6DC0DA94A2AEA7DC8CE
                BB76ADD64B26DD9F10E919E8384843A1578AE37071C3B5503C2F398EBAC8E9A8
                8D30406DF83434C49B22F7A751B019AEF9DA64F860386CB082D37E0F1CF33F07
                BF9064EA8045703D1A027D93F5E22ECADD34C99EEC9DF14979E7FCBBDE0ABD12
                760C13D71787E059D131D4044F44CD9909A8393D01F51797207BF730380CE92E
                D1E8DA75ACE1F8A9952B97AEA3C69444FF0A8908A02EE747E03BC0C533982AC8
                4CDC5949ED1BB2FB45129C7679DD5E9D7A5DDC3A24ADAE2804CDF99EB87F6A2C
                610CE19F78746E0132777C0FFBC1DDD3D43BC8711351EBDC59E5DB91A38D33AD
                6C5D119756482452713234192782937181EE83ED74A74C9CBE26AD8BB21A6F07
                5F3C1F3D03D2E8BB8498E99CA88CA7C6927718F74E8CC0BDE37AB8EBA387DAB3
                73916133003B06759374EF20C769E55212AA44415145536FCC3CB1959D1B6253
                8BE01B9C049FD389381A94882822B1798727C64C59EA47BA5CD2D2FF80F78407
                784235C454E75143F65154790D250C4195E710DA7763A46FD1C176DD6E128A5C
                369D1C0D3F153A29AA7C3374F49CB4F55B5D84C8BD89805760BCF08C151760E2
                4CF33AD2E31EF097E6C3C2033CA11AB8B0EF9DAA3033541ED245A5BB2E1E061B
                42BC411BB6035525DDE485B473E44214ADE52ACD9E62470565ADC1A34CD2AC1D
                0ED3355C08EF338902A293F230F8873955A4F359026C44C9525BC539D26202F2
                B7F74585EF54442EEA039B7F7CDCB914FCDD3A2E90F87E84B1C4D2FA0039CEC5
                D9B82CCC5FBE0D03864C73A5F94F6E010B0FF2E5A166AEA5E2B24DA76B956DBF
                AFAB2DB4947DD5E5DFEDB9B0787BBFAEA20FC1E3ADF38A9D149435070E9BEE4B
                515773E4ADCE397AE93FE447850D080D88C057292F60C8FEBB7D94B98CF03CEB
                B13EAFEBDE0A8E5CEAFCB336A42438123EE10C7EFFE24219F95FD8101465F1DF
                C8DFB42112FD01510E806A1B8077730000000049454E44AE426082}
            end
            object img_Game_Room_2: TImage
              Left = 43
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                1974455874536F6674776172650041646F626520496D616765526561647971C9
                653C00000011744558745469746C650054696D653B436C6F636B3BA59641FE00
                000ADF494441545847955707545557167D6926D62466223A4613C782C642442C
                58965811A529A08882A22616149510D11835111393650315512C51B1102B2A08
                FF8B14F9A22020F2A517691F3EF0814FEFEE39E702C6958C6B66EE5A7BDD77DB
                D9FB9E73EE7DEF49597B7749D9BFFD24A97E3F2EA9CE9EF88FA0F2563BDE6EC7
                3B6F008F89B97FB7E3D356130FF365FDB293A6516101CD252AA9A5B2EC6FA0D2
                41FC4EC8EE1DBDB27D8ED8E79D3EE69F7FC63BBEE08CB78A8CA1E0B4B72AEFB4
                777CCE69AF5B69C70E2D0BF8C14D87E6BF4B10625A2A3452F35FD054942765FE
                BC8386A9080165C5528B96485F0315411C7F70EFD0DC93472FABCEF94013740B
                3589F1A87F918146551EC838D5B9A8CB4E47F5B3589406FAA38044657B7BFE11
                B967D797B4FE3D8210D25C5E22099495484DB4E1F4DDDBA99B0A2B1103A4CCB3
                8F2E7709577BAE5CD623DBDBE348FE99E38DDAC70A349514A1495D80FACC64D4
                2444A33A2602559172820CD5D161D4F708F519CFD15890838A470F907FF25863
                AAE77EAF9DD6F33F227B1C9EB7D87EB3A6983C5E28A5EEDAC65C9250C2AA1854
                C4AE653BB6F6CBF63AF4ACF8CE0D3416E6A3312F0B35B10AA41C3E08F9B215B8
                3071064E8D180F3228EA0B13A743E6E088E443FBA00DF12771612426196AFF2B
                C8F0DC9778C979DD176497C3F256139133927ED8C27C9294424A9A356A7E14E4
                D75C36F4CDF4DC97A50995A1A93017B589D182D87782114E4C9A8BCBDBF7E196
                9F0C81B218C8E37344CD6DEEE771DF71539174602FCAEF5E45756C244AE50148
                3BF05B96CF4AC7FE64BF4D84BA40526E75654E494ADEE1263515ABF8F16D67E3
                59DDD2F6EF8D2CBD178486DC0C543EBC0799FD72788F9986EB5E1711A1CCC78B
                222DAAEA1AD1D2FA12D76F87899ADB596AAD18BFEE7509C769BECCCE1EA557CF
                411B76176AF2E4F35F763F5C30469FC3214424B86E664E49526E134A3851DE4B
                DCF3A357819F2F1A5EA4A132E22E6E9898E3B4E912843E4E4352AE06F58DCD78
                F9126F048FA7E469C4FCDFCDED71DDD814EA8B275071CF1FB9674F2166C7F7C7
                89A733F3C56DDAC0BCA2B0EBDF956D769E90B66F6F4B5DFA7354D1CEE54BEC71
                C6C2018AC43C64166AD1D0D48256DAED7F03CF7BF23C070A6501CE2E7084CCD6
                0E45678FA02CF80692F6FCD4E2B76AC564E2EBD4CE2B0AEFFEFDB86D6E778A02
                2881E21450BAEFC07183E978F0248DC82BB0EBD753686E6925BCFCB36E6DAB39
                04DCD722FA5EE269623A665938E1415C0A144F327072C26C246CFB1685270F92
                174E226A937320F17521F0C910E59DA396E683E3BF7369A955C6A22CC00FBEE3
                A722F0EC4DA4AB2A905554893A726D5373EB9F20C2BFB509F1896930B5D90879
                D863DC0D8D42524E31EE9EBF8D4B8646C8F3DC43E1F0C16327A716A7F1E30610
                2FDF11C20B9D82972F73493DB45F244CE24E379C32321331CFA284CB56570AB7
                3634B7A1F10D887B968A79561B1012FE18B1F10950661688B5C9941367675BE1
                A9CB5A64BBBB22E1FB2DF05B60B586783F20B0F7A50FC21C9707E45D3E8FE20B
                C7215FB408377E3C2876FE820CB0919AFA26D4938837E1C9D314CCB15C0779E8
                633C897B8AA2620D728AAB90A3AE12EB6FB97B426E638D944D7457FCB8158136
                8B380CDD08220C5D43ED1DD2D4FE7F20DFD35DB84B111821C85F145792A14A68
                AAEA50DBD08C3A0685E375C4C42763B6F96AC8EE470972756919CDAF476E4915
                72594449251EC9A2E037691A929D9622C56D0382AC176510EF87043E9252B7FB
                8B975495DCBE8CECDDAE38AB6788C4C44CB1036184905F5A25CE3A7BA2B6A10D
                E7FC8261BDEC7BCCA398078744212696C84B34625E415935F2680D83D7A7A4E6
                E29CFE443C5F6D8B24E7E508B2B4AE22DE9E1D027ADC5B680BCD4D5FA46F5D83
                9343F591915B8AC72B1C11B1D80E320B2BDC9E69822B13A7C1F72B439C1AA28F
                639F0FC7620737146A2AB1D0713B0283E4E4F63254D636A2A8AC162A4D0D0A34
                D524BC1A564BB70A4F9E193E1ECA15D6507EB30801669620DE4F089C88528FBB
                9656559CA1A914A3F3FA9391969A83BC926A04873D842CFC21E4847BE1510261
                8A68443E8A86FB3E1F982F7285AD8333C53E5C84A9A8A20645E535282CAB818A
                C0221859D985F0359882670E1678BAD402378D4DAB89F71FAF04F8CF354FCFF3
                F140CA46475C9D361B89E1D1E4BEB6C52A061963C30C75452DD4DA3A146B6B31
                CDC41E5E3E6790989A8D62EE6F47C75C165240488A8AC38D9973F074F13CC4D8
                9AE10F23E34CE27DE581EE9767980427EFFD09299B57E0BEDD52841F3A817C41
                4E3B798D984998B8A4B20EA504DB153B8547B82D2084D5B50929AF45A1400D22
                8F9C4298DD62C4DB1823D29AAE77432319F17E4C1039D0C5DB70EA36C59A3594
                03EB90B0F11B5C5DB094764F3B10E46DBB2AAE682361620D83327D91E30F087F
                188D327A167DEDE325249285F2BA420A8BBFAD23E2BE7640ECFC190836998B5F
                468EE5375177823886EF3B0E1CAA776DE6DCD62C773724393990BB4CA00C8914
                3B6001AFEF9A63CD8465D5F5B0A1531011158D727A167D2CA45D4C9B376A914C
                F9737B8EA9887F8CE9545C9A60D43AA3579F11C4CB2F257113B21B3E3A6D3045
                1EEDB40609F6E64870598F6B660B919F5F4CF1AEC5FC256E2825E20E7226ACA8
                A91719FE800454D434A09CC14208968BBF23B1F5285495C2DF7A099EAEFF1AD1
                A653106C341947478EBB4F7C1D092804F075D865E3C02F8DFD26CF6A7DEEEC28
                8E4A84BD3D82D7BBA2B8BCFA95DBCB05798320D4D2919B6FB7050A3A11DA5A6A
                539F10D2EE8D52121EE24202ED49C0E2B97838CB10E7474F6C5DF5D94053E263
                F78B6B980BAB60353D3D861BF8DEB5982F9225F5DB6F20B7B2867C0389509743
                534D02DA4998AC922E1C0B5B571210239E8508028F9796542074F35684D8D820
                79ED123C9A350E570DC6E3B7417A9789A717E1CFD7F19911E3B962359D0774EE
                DACF6B9841FC7D4B4BC4984D45FA96B5620701B6CB90762F9C04D40B92CABA06
                71E3992D7481223A06557443729B2FA28CD048042D5D49EBEC904AB75ED47403
                F81B8C81C740BD84BE9D3A0F249EAECC7762D068E695A453430DB862359C91DD
                66F6D4F9CA6B88BE4A6E3207D1269390B2DE014A5727049A5A40B66A1D9E9DBF
                84826749D0A84B504DA4E121A15029939178C10F216B9D114C1E546E5A8DE4AF
                17E2A1913E6E8E1E8DC30346154EEEFEC958B2DF83203EC9BC07E85145859568
                E5FEFCC82278B0C7BC8F7B8F3FFC2FBD8C6B13A640317D2CE2AD8D91E9B606CA
                CDABA170588260CBF9B833D78C4ECB5C04CCB3807CBE95E857D211CEF8762562
                CDA72172B21E2E0E1B8503FD8667CDECF1E924B2CBDF8322F1CA6F5D948EF6E7
                8340E51829D106DF90B441D7B9D9910FDD077DD075F09EBE432FF8E88E69BD33
                6E0C1453F5C5394E5E65830C9795C8DAB616393B9D9145C232E80A7FEEB800B1
                14B6C84923E1FFD508787F31BC7557EFC157BEE8D47918D9637211F772FF0B12
                E3705FFE6FA1E2454AB4815709572480DF11AF3CC1B1EA65F661AF593FF71972
                FFD8E723E0AB3B12B7478F847CEC4884198E8262D228844DE0F608DCD11B8EF3
                83BEC491CF86618FCEE05093EE9F1AD3FA3E047EEF0BB7B3FD0E011EBD875217
                15565211E02755DCE90027AA10C189C9AA396EBD0DBB7C34D6F993FEDBDD7506
                85FFAA3324ED406FDD328FDEBAD8AFA35BCEEDDDBD06466CE8D97FD7B8CE1F4E
                A0F9FF24F0AEDF2788BFA20EE20E1CEA3584BAA9B0124F015DC94347573C7BE8
                305EFDA6B10136C43BE177786F423F02FFEDF0B71DD7FCD3C1BBE5170C9FF157
                C44CF426FC3FA5C323EC4AF60A13F0371D5FA75C739BFB799CE7F1FCFFA148D2
                BF01640A1D84694D0E890000000049454E44AE426082}
            end
            object lb_Game_2: TLabel
              Left = 37
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #45824#44592#51473
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Team_2: TLabel
              Left = 91
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #54016#51204
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Item_2: TLabel
              Left = 145
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #50500#53596#51204
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btn_Room_2: TAdvGlassButton
              Tag = 2
              Left = 304
              Top = 11
              Width = 91
              Height = 94
              Cursor = crHandPoint
              BackColor = clNavy
              Caption = 'ENTER'
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
              OnClick = ClickEnterRoomButton
            end
          end
          object pnRoom_3: TAdvSmoothPanel
            Left = 14
            Top = 287
            Width = 416
            Height = 128
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
            Fill.Color = 7422746
            Fill.ColorTo = 9262113
            Fill.ColorMirror = 9262113
            Fill.ColorMirrorTo = 9262113
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtVertical
            Fill.BorderColor = 14922381
            Fill.Rounding = 10
            Fill.ShadowColor = clBlack
            Fill.ShadowOffset = 10
            Fill.Glow = gmNone
            Version = '1.5.0.0'
            TabOrder = 10
            TMSStyle = 4
            object lb_Room_3_NumTitle: TLabel
              Left = 16
              Top = 14
              Width = 26
              Height = 18
              Caption = 'No.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Room_3_Number: TLabel
              Left = 48
              Top = 14
              Width = 10
              Height = 18
              Caption = '3'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Title_Room_3: TLabel
              Left = 80
              Top = 14
              Width = 209
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #51068#51060#49340#49324#50724#50977#52832#54036#44396#49901#51068#51060#49340
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_PlayerCount_Room_3: TLabel
              Left = 218
              Top = 41
              Width = 54
              Height = 45
              Caption = '6/6'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -37
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object img_Team_Room_3: TImage
              Left = 97
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                1C744558745469746C65005465616D3B50656F706C653B47726F75703B557365
                72937B6049000009D8494441545847C595775494571AC6C7925034AB820931AB
                462C481B502054294A114491629080489391367418096D181C507A57AAD2CBC0
                4815180129418D4824A0706CD185644D34AB89D9C41CD7CDB3F712D964D03FCC
                FE91BDE73C87F35EBEF7FD3DDF77EFFB0E03C0FF55AFDCFC33F5CACD3F530C2E
                97FB923E4DD45F7689A7EF7481AB9B3314A733D41FAD7DBFEF8816CE4568DE3A
                1BBAB5B08DADAE3CEFF9D7CA11FAA98971A85EDA188ED77DFB42A2C9CDF1321F
                DC688AC5D7A3CD787CF3133CBAD18F2F4405B898E3064180D693325705CD761F
                25461B4BF10FE5CCE7890554A208CD23E39561F8FE662FC62B43F168B21B5F8F
                34E0764B32068F3BA125D408352C4D64DAAC1174B3998CAE00D53F94339F2716
                5035FAA8082785C9F8BC261A55873420E2396038C305FD7C7B3404ED4015DB1C
                B5117668883F748D9CA13DD56735BC4BD3171A70A7B7146D71FBD0C377FA6F4E
                354B1B790E1B916EBD065C63B9A1F93CB180AAC47963FBF96C5F143A2BE1724D
                3C6A427622D35E1195E1FB2814CD096E688EB4828863FCDD27D106DFF485AA41
                14A2F1AC9B6342F62D31292AC540711CB21D99E0ED9003CFF43D2459AD47ACB1
                1CC23497B7CCE7890554A9D66BF28ABD0C50E2A18B07D79AC939B6E19BF116DC
                3D97894FB8A6188A36C0DDDA60DC6BE5E1C1E56A3C9EEAC4745F01464F7AE10C
                5B0BA70F2861FA5301C9EDC0648D0FA6EA4350EE638C00E65B38ACB234793E4F
                2CA08A325A65196BB40A75A1D6F8E73D11FE757F00CF1E8C6224DB1957B21DF1
                455B347A539DF0F84A25BEBD528399DE2C5CAF0AC170AA03CE466EC3E98FD6A1
                2E78E76CCEB7BD31F876E0184EB10C10A0BEFCA9BBDA3B5AF379620195959595
                44B2BD46A530CAEE979FEE76E2E71911D12004DE4C5C2FF7C140E24E94BB29E1
                6AD67EDCAE0FC764251B17D3F6A13D441B15FBD7A2D0460E69D6EBF0F3743F1E
                9E8BC6839E44E439A9FFC2B5514BB1B0B0909ECF130BA8343535179A9B9BBF5B
                C6B69C9CEECBC58F537578325E8B13B6AB3156E08A930EF2286419A3C25511AD
                FE1A68F565A2DA6503F277AF42CE4E1964EF94C5314B793C19AB22066271ADDC
                0FFC3D8A374C4D4DD792DA8B3827341861B95B1821594C4650A6F2CB06A84C4C
                4C9626381BF3BB78F678D0C5C177A395C8B5DD808E48631CB7DE80AB1D99684F
                3F8C44AB8D38A22B8B506D1984E8C8816BB80C7CA3E528F6D0C3E391D3F8A63B
                0E8290ED609B29A5929A7F6190159CA9CA084C5766F8A76E66F81E5778B50105
                058537B69BEB6C4DF5D9F6FC6C9C0DAE9F49419EB3260A3E5440BEBB3E1E4ED4
                E3C92D21662E14E2BAE0082E17B8A32BD905411A2B10A3BB0CF5514E18AF8D27
                5D61861827E5E77A465BB4D7AD5BF72635D07F83C3E89D0A65B0F8F20CAFC4F7
                C50D90B590E8CDC04463665AF5DED18EA60894721C50CDF54669F84788D49145
                0BD7094FBF10E2F9740B9EDDA9C7F7175231D3148AA9DA082458AC43A4FE3BE8
                3A958C9341B64872D6C7C73E7AF04EDC7CC5C2651593D496245AD431E1CF708F
                5FC3708D5BF5AB81176089C83433BDB41A1B41519BCBF3D64B5128AA75446F13
                07FD55F168AB484469A41DCEF29CF0EC761D9EDDACC64FE38578288AC5B42010
                336DF1C8DBAF0ABE9B3E46CE9F84A8280C3951BBE1C95A8BA4EA1D084C53FAB7
                F391D542F3836F1B129634653A1D799BB2190BED589B561FAFDADD5E72D60DBD
                637C4C7C5582E13B09A819F4444C9101DC62E51196A183CAD660D484EDC2A38B
                59F87134178FFA13F0655330A61BC371AB3E1249369BD0D8C503B7D47436C737
                59094975BAA818DE8B86CB2EC86832052B591E0EC1B23D4C43A93584BD881A78
                33284DBDB171D81F63338504CC87E87A083A2702D1FEB90FCE5C3D04C1882B4A
                06764178291225F1B618C973C3FDD670CC08D8B85BE38B2FDB62D1CDB3432ADB
                0C3D57537F976385FC5E13E49D334476D736E4F598A2E8BC15624F6B60D7E1B7
                6A095B8A1A9066A72B7FDD7135185517C9BC274E9B463DD034E286EA8B8E281D
                DC831C913132BA0C70BADF0DC5555EA8F037C634B91FD3C208028FC31D412452
                EC36A3BC3604CD974308F8B79CF4B3BA486DFF00C75BB590D4A281E496AD4816
                EA62B7DF92AF087BB63396F8242BFCD0F2D96114F49820F79CF1ACDBCC2E3D92
                AC8334927CAC4513B9DD96A81CF44161FB214405EA20DF591D4DE1E6A4CD76E0
                18193CDEEE4A38D5E9873AF2250B4456B339492D5B70F48C3A784235F09A5410
                2F50466C8312F8673460ED27F51361AFA006A43D13DEFF8A53B0159145CA88AE
                5001B74E0D7135AA24491DD99D56281F60A17A3000198D1F222A6F1BA62E9540
                48E6C0D17D9AE0EE6522C94907E9DE7AF04D50414A8D3DAA06D828EDF5445ADB
                7644556F4668F17A8414CBC32FE7AFF03A2E8703712BA9811F087BF60B2C5AAD
                20B9729797ACEB5E3FD92CBB40994EFBA01593FE891FDC3A5AE8F8F468A113A2
                73772228431319750E286E75C7B1131638472EDF10F90D683CEA88139126080E
                5706BFCC129C1C3D3847CA2328C910DCFC0F11936DF3D4338679DB92253565EE
                21D9BDDD45F284BEBD84A7CC7B0B490F3216CFB5E102A23788689F2E21A2CE64
                0EC5AB7242B334FF71B2D50523773270ED7E1E066FC4A2ACEB00E20A8DE1C5DD
                08B798F5A443B6224BB00B6DA387219A0CC0A93E3B0467A8C0DA67F9DF8D1C97
                46935A1426F3A22E6D413A9416ECF6277770DE20A28B9A59EC97CC0CCA6FB6C7
                C8BD545C99E163F04E38FA6EB1D17F2B1003B7C3209AF245DB8407DA27BCD03C
                7610F523E4C20E5922AF771B0AC83DA2B73DAFD3022CFE7A183949F9909AF4E5
                E8BC5920C6140B7E5DB343C93F8579AF7D8C05E1D83EB48CBB10903B5A3F7785
                60D411E5172D5134608C13E70D496B1920BB5B0F19E4C2A6B66B93CBA705BE50
                033CC116240AB4105FA90D3337C9315293BE3DEDFBD73220458748F7A42FCA86
                77A078C804850458D06788DC1E7D648B08B0530729B31DF202D8B805F1F5EA88
                A96522AA4A059C722584972922AE520B66EE920F494D7A04F4985FCB80B4F751
                05B45CF598056611607AA736523BB47E059ED98A440A6C50436CAD2A3EA6C00A
                65449C524468A902828B37817D7223FC0BD68353BA05661E924F484D6A6031D1
                6B19903C18B37E90C5DF84800C52306F33C28B95C0394520258A082F5504A752
                0911A75F004B36C13787CC82B4B5F04C598303BC77E1F8F14AD8862E87D5E125
                D8EE2AD9456AD223782D03B39790485A6F8F8C828DEFBB7E7BFDE4B26DD9EF74
                D8B2578EEF095831B1C777C5BD3D7ECB60EDFB1676B196C2D27B09CCDDA5FF66
                EA26756DC741C96B262E125D86FB25F2F5EC2442E4D517AB925ACB892488E8CB
                8933C582DF1635412F0C6D173AAFE75A7319119D5EF473AE24A23F67BF17DD93
                25A2FFA7CF2E25A2B79F9E3D85D3BAE24CB1E0E545136822354345BF0C2D3627
                6A704E7331FD4B9FA3A23973E059385D624CB1E0D56B2EF97FD54BEB372697F1
                1FA84DD17BBF233D730000000049454E44AE426082}
            end
            object img_Item_Room_3: TImage
              Left = 151
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                20744558745469746C65004944453B546F6F6C733B437573746F6D697A3B4465
                7369676E3BAA5D29920000097A494441545847C5560B548EE916FE870845354A
                6E699AC8A1316E611C7722A4C27227F752462E29A1726D528A14452A738AAE23
                4A4AF7BFBFD245BA21C5A9E492D205C5184C3CB3F737FDD6CFB8CC39EBAC75F6
                5ACFFABEEF7DF7BBF7B3F7FBEEFD7E2200FF57FCC772FC74C27B20F9AA156D64
                208CBDD30B4A107907C5132ED1F0DF13A9D10F21F20E6443F1FCCADF6D097204
                79424719B427F0B840C6EBD445D1910082FF05FAFCB2C81A6ED70A7EE7315932
                7213F48DBA1CF40EDFE9E91F9D4D4EE01510D372D8F75C8E934790E354C3F93D
                48A703EBB1BEDBF1B322379FB3F4FA79119CBBFA44441EF48EA876F38980CBB1
                F06A67CFE0F3767BBCF4688EC908E49C3C4E4FF60AB8509E98751D65F7EBF0E4
                550B1EBFFC1DA5F71E213EA308EEBE91B59B77B82D255DC5D6755F918E488A4F
                8940608A9145CC1AABFDA8697E8EFB8D4DB85C741B9EFEE75EDB3B9FDC377692
                6167D269BFCCDCE188BDB32F2C6D0EC266F7515C48C8C6BDDAA7A86E68465DD3
                0B5AD78CA0C894379BB6BB3B90BE3281B7A9EDA708C8A6B64DDF01A314A7CD5E
                1F6BB9D51537CB1FE066C543DCAD7D0CFFD078D8ED3FE14B3AC25EEB1BAD1AA3
                3B646C9FD1134D86CF5B61137C2E360377AA1B514E19A978508F5A2212416396
                D6CE1EA4FF3581490899901521EA56484F715B2D9DA15D0CE76F4A76F709C5AD
                CA1A641596A3B4FC219C3CCE60F5863D06A4C3C6A467A413416DCE12EBEC0449
                3E11AE4171D93DE41697A3A2E631CEC56762A585FD11D25122C87D48406EC9BA
                DD61FBDC832E8E9B3C8BD32B3D70ED468C9DA5B5D47C4F4BFDF3DF9071F5360A
                6EDEC5F9F82CFCB8ED109F263E6052C24C4279D2CCE5FBDDBC83915D540149DE
                2DA4E6942239AB04A5771FC17CE34F5CF43D090A04E160B642D47EF1DA5DD53E
                8131D8E9E417376CE44466C96524AFDD7FA8FA3AEB832DCD2D6F914E0633F26F
                A3B8B40A16366E3534CF86A495C10454A69A98E5455ECA84F8CA9F8E1332AF23
                4E528CF8F462989A39328141040D026F076F23AF17C92F5865FFAAEED79738E2
                7F1E9BECBD12C64D99D3BBDF403DF5C5668E11A117D2F0F4750B2457CA9076E5
                266EDDA9C1DACDAEAF699D6CB63AE81B2E59B470A56D4B0A459D9475831C1721
                26B51051495771F6520E366C3B885D2EA7E078C01FEBAD9D8ED11A2E532621EA
                30D7D4EEE1FDC74D82F1E028316CF79E80F56E6F845F4C4753CB1BDCA60325CE
                2D1548E497DCC1F2F5FB6A691D9F6CDE868EE3F417CCB3B2757A25CEBE8688B8
                5C4427E723565C88E89402B29185437ED1A878D8881764AB8982394F6762D95A
                3B1F5AAB4A10C91B2DDAF24B5452164ACA6B8413FFA8F9059A7E7F8327A47CFB
                4103455E8694EC9B48A773904235BED5FE48DDB7DAFDB5D840FF41E317985B39
                BECAC82B4524451A122D81C1ECB53030598769466658BC7A070223C5C823E211
                71D9F00F4F4541D97D989A3BF096701644ED26CD5C65B0DACA0955358DC82A28
                4726394ABF724B70CC91B373DED344DACB6BA577101E198B28F725B5051E231A
                D25D7F782BF9C583CA2D07A1172F63A6C912B469DB7E1FD9ED47186E6A6E8FAB
                E43C2C360B27C39211461959B47A1B54D4754ED27C3726C07BD8D1608E65A0DD
                5E6FAAFB6AE4DFA8124848D39E59700B8919C5C8B85282D48C1C14FCBC020D39
                EE78559F83978F325171691FA2FC9C30DD78113B77247BBC3D2A04ED852B6C11
                4ECE7D4393101273190B57D942494DFB679AE30CF241164EB15C0F0D1D9529B3
                CC0E2F33DFD512149E80C2924A94DFABC3D5EB15884DCE16224F49CB46AE9F29
                9ACBC2D1D2908097559E7851EE82A65BA71061339A9DEF265B42A724709FE8A6
                3FD3F4E49A2D2E427616ACB4815257ED7FD1B83681AB8DAB47108104A1D3C871
                73C74F9E6516A36F6459A76F6C8929B32CEA2D36EE6B0C080C479EFF72349586
                E3F5C3303C2FB4C2F30286251A73EDE13655F319ADE73AE7A6C4596570841ADF
                E9CDF41B33D5144AAADA01F42DEB5CE80352E10F5EC4ECD9481702A7B1BB6EDF
                5E43E39CA737B3F3577783D19C6B86E69CB568CA5983675737E3B2DB0C6C9D38
                E879EF9E1ABAA4CF970FDBE106C5413109DE6BAE7F75C2BBCB49A5FB007AB48A
                5E67D6154848BB1B13511CD447A177D68111E2A737C3F0DB9D403C49374553DA
                323C495B8AA6AC1F517CDC008E13FA61B5D12C2C9ABDACA4AB6A0F7624CD826C
                A7E492659BD2B1F78509141DD213BD7D59C99FACD061A896628F0C27BDD42725
                6178F1EF0034262E4463C2023424CEC713C93A14784EC1F6D19A5835631A9C77
                3A60ABF51E18CEB190A8A8F6E84DEBA5246483FAAB63A930817C57BEF2FF743E
                5853A1A764AF5EEAE31B61F8B5EC24EA638C517FC118755146789CBC1AF96E63
                B14D4F03CB268F87DDFA8D38E0EC85B3D1A9D84D9D6EC6DC0DA94A2AEA7DC8CE
                BB76ADD64B26DD9F10E919E8384843A1578AE37071C3B5503C2F398EBAC8E9A8
                8D30406DF83434C49B22F7A751B019AEF9DA64F860386CB082D37E0F1CF33F07
                BF9064EA8045703D1A027D93F5E22ECADD34C99EEC9DF14979E7FCBBDE0ABD12
                760C13D71787E059D131D4044F44CD9909A8393D01F51797207BF730380CE92E
                D1E8DA75ACE1F8A9952B97AEA3C69444FF0A8908A02EE747E03BC0C533982AC8
                4CDC5949ED1BB2FB45129C7679DD5E9D7A5DDC3A24ADAE2804CDF99EB87F6A2C
                610CE19F78746E0132777C0FFBC1DDD3D43BC8711351EBDC59E5DB91A38D33AD
                6C5D119756482452713234192782937181EE83ED74A74C9CBE26AD8BB21A6F07
                5F3C1F3D03D2E8BB8498E99CA88CA7C6927718F74E8CC0BDE37AB8EBA387DAB3
                73916133003B06759374EF20C769E55212AA44415145536FCC3CB1959D1B6253
                8BE01B9C049FD389381A94882822B1798727C64C59EA47BA5CD2D2FF80F78407
                784235C454E75143F65154790D250C4195E710DA7763A46FD1C176DD6E128A5C
                369D1C0D3F153A29AA7C3374F49CB4F55B5D84C8BD89805760BCF08C151760E2
                4CF33AD2E31EF097E6C3C2033CA11AB8B0EF9DAA3033541ED245A5BB2E1E061B
                42BC411BB6035525DDE485B473E44214ADE52ACD9E62470565ADC1A34CD2AC1D
                0ED3355C08EF338902A293F230F8873955A4F359026C44C9525BC539D26202F2
                B7F74585EF54442EEA039B7F7CDCB914FCDD3A2E90F87E84B1C4D2FA0039CEC5
                D9B82CCC5FBE0D03864C73A5F94F6E010B0FF2E5A166AEA5E2B24DA76B956DBF
                AFAB2DB4947DD5E5DFEDB9B0787BBFAEA20FC1E3ADF38A9D149435070E9BEE4B
                515773E4ADCE397AE93FE447850D080D88C057292F60C8FEBB7D94B98CF03CEB
                B13EAFEBDE0A8E5CEAFCB336A42438123EE10C7EFFE24219F95FD8101465F1DF
                C8DFB42112FD01510E806A1B8077730000000049454E44AE426082}
            end
            object img_Game_Room_3: TImage
              Left = 43
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                1974455874536F6674776172650041646F626520496D616765526561647971C9
                653C00000011744558745469746C650054696D653B436C6F636B3BA59641FE00
                000ADF494441545847955707545557167D6926D62466223A4613C782C642442C
                58965811A529A08882A22616149510D11835111393650315512C51B1102B2A08
                FF8B14F9A22020F2A517691F3EF0814FEFEE39E702C6958C6B66EE5A7BDD77DB
                D9FB9E73EE7DEF49597B7749D9BFFD24A97E3F2EA9CE9EF88FA0F2563BDE6EC7
                3B6F008F89B97FB7E3D356130FF365FDB293A6516101CD252AA9A5B2EC6FA0D2
                41FC4EC8EE1DBDB27D8ED8E79D3EE69F7FC63BBEE08CB78A8CA1E0B4B72AEFB4
                777CCE69AF5B69C70E2D0BF8C14D87E6BF4B10625A2A3452F35FD054942765FE
                BC8386A9080165C5528B96485F0315411C7F70EFD0DC93472FABCEF94013740B
                3589F1A87F918146551EC838D5B9A8CB4E47F5B3589406FAA38044657B7BFE11
                B967D797B4FE3D8210D25C5E22099495484DB4E1F4DDDBA99B0A2B1103A4CCB3
                8F2E7709577BAE5CD623DBDBE348FE99E38DDAC70A349514A1495D80FACC64D4
                2444A33A2602559172820CD5D161D4F708F519CFD15890838A470F907FF25863
                AAE77EAF9DD6F33F227B1C9EB7D87EB3A6983C5E28A5EEDAC65C9250C2AA1854
                C4AE653BB6F6CBF63AF4ACF8CE0D3416E6A3312F0B35B10AA41C3E08F9B215B8
                3071064E8D180F3228EA0B13A743E6E088E443FBA00DF12771612426196AFF2B
                C8F0DC9778C979DD176497C3F256139133927ED8C27C9294424A9A356A7E14E4
                D75C36F4CDF4DC97A50995A1A93017B589D182D87782114E4C9A8BCBDBF7E196
                9F0C81B218C8E37344CD6DEEE771DF71539174602FCAEF5E45756C244AE50148
                3BF05B96CF4AC7FE64BF4D84BA40526E75654E494ADEE1263515ABF8F16D67E3
                59DDD2F6EF8D2CBD178486DC0C543EBC0799FD72788F9986EB5E1711A1CCC78B
                222DAAEA1AD1D2FA12D76F87899ADB596AAD18BFEE7509C769BECCCE1EA557CF
                411B76176AF2E4F35F763F5C30469FC3214424B86E664E49526E134A3851DE4B
                DCF3A357819F2F1A5EA4A132E22E6E9898E3B4E912843E4E4352AE06F58DCD78
                F9126F048FA7E469C4FCDFCDED71DDD814EA8B275071CF1FB9674F2166C7F7C7
                89A733F3C56DDAC0BCA2B0EBDF956D769E90B66F6F4B5DFA7354D1CEE54BEC71
                C6C2018AC43C64166AD1D0D48256DAED7F03CF7BF23C070A6501CE2E7084CCD6
                0E45678FA02CF80692F6FCD4E2B76AC564E2EBD4CE2B0AEFFEFDB86D6E778A02
                2881E21450BAEFC07183E978F0248DC82BB0EBD753686E6925BCFCB36E6DAB39
                04DCD722FA5EE269623A665938E1415C0A144F327072C26C246CFB1685270F92
                174E226A937320F17521F0C910E59DA396E683E3BF7369A955C6A22CC00FBEE3
                A722F0EC4DA4AB2A905554893A726D5373EB9F20C2BFB509F1896930B5D90879
                D863DC0D8D42524E31EE9EBF8D4B8646C8F3DC43E1F0C16327A716A7F1E30610
                2FDF11C20B9D82972F73493DB45F244CE24E379C32321331CFA284CB56570AB7
                3634B7A1F10D887B968A79561B1012FE18B1F10950661688B5C9941367675BE1
                A9CB5A64BBBB22E1FB2DF05B60B586783F20B0F7A50FC21C9707E45D3E8FE20B
                C7215FB408377E3C2876FE820CB0919AFA26D4938837E1C9D314CCB15C0779E8
                633C897B8AA2620D728AAB90A3AE12EB6FB97B426E638D944D7457FCB8158136
                8B380CDD08220C5D43ED1DD2D4FE7F20DFD35DB84B111821C85F145792A14A68
                AAEA50DBD08C3A0685E375C4C42763B6F96AC8EE470972756919CDAF476E4915
                72594449251EC9A2E037691A929D9622C56D0382AC176510EF87043E9252B7FB
                8B975495DCBE8CECDDAE38AB6788C4C44CB1036184905F5A25CE3A7BA2B6A10D
                E7FC8261BDEC7BCCA398078744212696C84B34625E415935F2680D83D7A7A4E6
                E29CFE443C5F6D8B24E7E508B2B4AE22DE9E1D027ADC5B680BCD4D5FA46F5D83
                9343F591915B8AC72B1C11B1D80E320B2BDC9E69822B13A7C1F72B439C1AA28F
                639F0FC7620737146A2AB1D0713B0283E4E4F63254D636A2A8AC162A4D0D0A34
                D524BC1A564BB70A4F9E193E1ECA15D6507EB30801669620DE4F089C88528FBB
                9656559CA1A914A3F3FA9391969A83BC926A04873D842CFC21E4847BE1510261
                8A68443E8A86FB3E1F982F7285AD8333C53E5C84A9A8A20645E535282CAB818A
                C0221859D985F0359882670E1678BAD402378D4DAB89F71FAF04F8CF354FCFF3
                F140CA46475C9D361B89E1D1E4BEB6C52A061963C30C75452DD4DA3A146B6B31
                CDC41E5E3E6790989A8D62EE6F47C75C165240488A8AC38D9973F074F13CC4D8
                9AE10F23E34CE27DE581EE9767980427EFFD09299B57E0BEDD52841F3A817C41
                4E3B798D984998B8A4B20EA504DB153B8547B82D2084D5B50929AF45A1400D22
                8F9C4298DD62C4DB1823D29AAE77432319F17E4C1039D0C5DB70EA36C59A3594
                03EB90B0F11B5C5DB094764F3B10E46DBB2AAE682361620D83327D91E30F087F
                188D327A167DEDE325249285F2BA420A8BBFAD23E2BE7640ECFC190836998B5F
                468EE5375177823886EF3B0E1CAA776DE6DCD62C773724393990BB4CA00C8914
                3B6001AFEF9A63CD8465D5F5B0A1531011158D727A167D2CA45D4C9B376A914C
                F9737B8EA9887F8CE9545C9A60D43AA3579F11C4CB2F257113B21B3E3A6D3045
                1EEDB40609F6E64870598F6B660B919F5F4CF1AEC5FC256E2825E20E7226ACA8
                A91719FE800454D434A09CC14208968BBF23B1F5285495C2DF7A099EAEFF1AD1
                A653106C341947478EBB4F7C1D092804F075D865E3C02F8DFD26CF6A7DEEEC28
                8E4A84BD3D82D7BBA2B8BCFA95DBCB05798320D4D2919B6FB7050A3A11DA5A6A
                539F10D2EE8D52121EE24202ED49C0E2B97838CB10E7474F6C5DF5D94053E263
                F78B6B980BAB60353D3D861BF8DEB5982F9225F5DB6F20B7B2867C0389509743
                534D02DA4998AC922E1C0B5B571210239E8508028F9796542074F35684D8D820
                79ED123C9A350E570DC6E3B7417A9789A717E1CFD7F19911E3B962359D0774EE
                DACF6B9841FC7D4B4BC4984D45FA96B5620701B6CB90762F9C04D40B92CABA06
                71E3992D7481223A06557443729B2FA28CD048042D5D49EBEC904AB75ED47403
                F81B8C81C740BD84BE9D3A0F249EAECC7762D068E695A453430DB862359C91DD
                66F6D4F9CA6B88BE4A6E3207D1269390B2DE014A5727049A5A40B66A1D9E9DBF
                84826749D0A84B504DA4E121A15029939178C10F216B9D114C1E546E5A8DE4AF
                17E2A1913E6E8E1E8DC30346154EEEFEC958B2DF83203EC9BC07E85145859568
                E5FEFCC82278B0C7BC8F7B8F3FFC2FBD8C6B13A640317D2CE2AD8D91E9B606CA
                CDABA170588260CBF9B833D78C4ECB5C04CCB3807CBE95E857D211CEF8762562
                CDA72172B21E2E0E1B8503FD8667CDECF1E924B2CBDF8322F1CA6F5D948EF6E7
                8340E51829D106DF90B441D7B9D9910FDD077DD075F09EBE432FF8E88E69BD33
                6E0C1453F5C5394E5E65830C9795C8DAB616393B9D9145C232E80A7FEEB800B1
                14B6C84923E1FFD508787F31BC7557EFC157BEE8D47918D9637211F772FF0B12
                E3705FFE6FA1E2454AB4815709572480DF11AF3CC1B1EA65F661AF593FF71972
                FFD8E723E0AB3B12B7478F847CEC4884198E8262D228844DE0F608DCD11B8EF3
                83BEC491CF86618FCEE05093EE9F1AD3FA3E047EEF0BB7B3FD0E011EBD875217
                15565211E02755DCE90027AA10C189C9AA396EBD0DBB7C34D6F993FEDBDD7506
                85FFAA3324ED406FDD328FDEBAD8AFA35BCEEDDDBD06466CE8D97FD7B8CE1F4E
                A0F9FF24F0AEDF2788BFA20EE20E1CEA3584BAA9B0124F015DC94347573C7BE8
                305EFDA6B10136C43BE177786F423F02FFEDF0B71DD7FCD3C1BBE5170C9FF157
                C44CF426FC3FA5C323EC4AF60A13F0371D5FA75C739BFB799CE7F1FCFFA148D2
                BF01640A1D84694D0E890000000049454E44AE426082}
            end
            object lb_Game_3: TLabel
              Left = 37
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #45824#44592#51473
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Team_3: TLabel
              Left = 91
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #54016#51204
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Item_3: TLabel
              Left = 145
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #50500#53596#51204
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btn_Room_3: TAdvGlassButton
              Tag = 3
              Left = 304
              Top = 11
              Width = 91
              Height = 94
              Cursor = crHandPoint
              BackColor = clNavy
              Caption = 'ENTER'
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
              OnClick = ClickEnterRoomButton
            end
          end
          object pnRoom_4: TAdvSmoothPanel
            Left = 427
            Top = 287
            Width = 416
            Height = 128
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
            Fill.Color = 7422746
            Fill.ColorTo = 9262113
            Fill.ColorMirror = 9262113
            Fill.ColorMirrorTo = 9262113
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtVertical
            Fill.BorderColor = 14922381
            Fill.Rounding = 10
            Fill.ShadowColor = clBlack
            Fill.ShadowOffset = 10
            Fill.Glow = gmNone
            Version = '1.5.0.0'
            TabOrder = 11
            TMSStyle = 4
            object lb_Room_4_NumTitle: TLabel
              Left = 16
              Top = 14
              Width = 26
              Height = 18
              Caption = 'No.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Room_4_Number: TLabel
              Left = 48
              Top = 14
              Width = 10
              Height = 18
              Caption = '4'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Title_Room_4: TLabel
              Left = 80
              Top = 14
              Width = 209
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #51068#51060#49340#49324#50724#50977#52832#54036#44396#49901#51068#51060#49340
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_PlayerCount_Room_4: TLabel
              Left = 218
              Top = 41
              Width = 54
              Height = 45
              Caption = '6/6'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -37
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object img_Team_Room_4: TImage
              Left = 97
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                1C744558745469746C65005465616D3B50656F706C653B47726F75703B557365
                72937B6049000009D8494441545847C595775494571AC6C7925034AB820931AB
                462C481B502054294A114491629080489391367418096D181C507A57AAD2CBC0
                4815180129418D4824A0706CD185644D34AB89D9C41CD7CDB3F712D964D03FCC
                FE91BDE73C87F35EBEF7FD3DDF77EFFB0E03C0FF55AFDCFC33F5CACD3F530C2E
                97FB923E4DD45F7689A7EF7481AB9B3314A733D41FAD7DBFEF8816CE4568DE3A
                1BBAB5B08DADAE3CEFF9D7CA11FAA98971A85EDA188ED77DFB42A2C9CDF1321F
                DC688AC5D7A3CD787CF3133CBAD18F2F4405B898E3064180D693325705CD761F
                25461B4BF10FE5CCE7890554A208CD23E39561F8FE662FC62B43F168B21B5F8F
                34E0764B32068F3BA125D408352C4D64DAAC1174B3998CAE00D53F94339F2716
                5035FAA8082785C9F8BC261A55873420E2396038C305FD7C7B3404ED4015DB1C
                B5117668883F748D9CA13DD56735BC4BD3171A70A7B7146D71FBD0C377FA6F4E
                354B1B790E1B916EBD065C63B9A1F93CB180AAC47963FBF96C5F143A2BE1724D
                3C6A427622D35E1195E1FB2814CD096E688EB4828863FCDD27D106DFF485AA41
                14A2F1AC9B6342F62D31292AC540711CB21D99E0ED9003CFF43D2459AD47ACB1
                1CC23497B7CCE7890554A9D66BF28ABD0C50E2A18B07D79AC939B6E19BF116DC
                3D97894FB8A6188A36C0DDDA60DC6BE5E1C1E56A3C9EEAC4745F01464F7AE10C
                5B0BA70F2861FA5301C9EDC0648D0FA6EA4350EE638C00E65B38ACB234793E4F
                2CA08A325A65196BB40A75A1D6F8E73D11FE757F00CF1E8C6224DB1957B21DF1
                455B347A539DF0F84A25BEBD528399DE2C5CAF0AC170AA03CE466EC3E98FD6A1
                2E78E76CCEB7BD31F876E0184EB10C10A0BEFCA9BBDA3B5AF379620195959595
                44B2BD46A530CAEE979FEE76E2E71911D12004DE4C5C2FF7C140E24E94BB29E1
                6AD67EDCAE0FC764251B17D3F6A13D441B15FBD7A2D0460E69D6EBF0F3743F1E
                9E8BC6839E44E439A9FFC2B5514BB1B0B0909ECF130BA8343535179A9B9BBF5B
                C6B69C9CEECBC58F537578325E8B13B6AB3156E08A930EF2286419A3C25511AD
                FE1A68F565A2DA6503F277AF42CE4E1964EF94C5314B793C19AB22066271ADDC
                0FFC3D8A374C4D4DD792DA8B3827341861B95B1821594C4650A6F2CB06A84C4C
                4C9626381BF3BB78F678D0C5C177A395C8B5DD808E48631CB7DE80AB1D99684F
                3F8C44AB8D38A22B8B506D1984E8C8816BB80C7CA3E528F6D0C3E391D3F8A63B
                0E8290ED609B29A5929A7F6190159CA9CA084C5766F8A76E66F81E5778B50105
                058537B69BEB6C4DF5D9F6FC6C9C0DAE9F49419EB3260A3E5440BEBB3E1E4ED4
                E3C92D21662E14E2BAE0082E17B8A32BD905411A2B10A3BB0CF5514E18AF8D27
                5D61861827E5E77A465BB4D7AD5BF72635D07F83C3E89D0A65B0F8F20CAFC4F7
                C50D90B590E8CDC04463665AF5DED18EA60894721C50CDF54669F84788D49145
                0BD7094FBF10E2F9740B9EDDA9C7F7175231D3148AA9DA082458AC43A4FE3BE8
                3A958C9341B64872D6C7C73E7AF04EDC7CC5C2651593D496245AD431E1CF708F
                5FC3708D5BF5AB81176089C83433BDB41A1B41519BCBF3D64B5128AA75446F13
                07FD55F168AB484469A41DCEF29CF0EC761D9EDDACC64FE38578288AC5B42010
                336DF1C8DBAF0ABE9B3E46CE9F84A8280C3951BBE1C95A8BA4EA1D084C53FAB7
                F391D542F3836F1B129634653A1D799BB2190BED589B561FAFDADD5E72D60DBD
                637C4C7C5582E13B09A819F4444C9101DC62E51196A183CAD660D484EDC2A38B
                59F87134178FFA13F0655330A61BC371AB3E1249369BD0D8C503B7D47436C737
                59094975BAA818DE8B86CB2EC86832052B591E0EC1B23D4C43A93584BD881A78
                33284DBDB171D81F63338504CC87E87A083A2702D1FEB90FCE5C3D04C1882B4A
                06764178291225F1B618C973C3FDD670CC08D8B85BE38B2FDB62D1CDB3432ADB
                0C3D57537F976385FC5E13E49D334476D736E4F598A2E8BC15624F6B60D7E1B7
                6A095B8A1A9066A72B7FDD7135185517C9BC274E9B463DD034E286EA8B8E281D
                DC831C913132BA0C70BADF0DC5555EA8F037C634B91FD3C208028FC31D412452
                EC36A3BC3604CD974308F8B79CF4B3BA486DFF00C75BB590D4A281E496AD4816
                EA62B7DF92AF087BB63396F8242BFCD0F2D96114F49820F79CF1ACDBCC2E3D92
                AC8334927CAC4513B9DD96A81CF44161FB214405EA20DF591D4DE1E6A4CD76E0
                18193CDEEE4A38D5E9873AF2250B4456B339492D5B70F48C3A784235F09A5410
                2F50466C8312F8673460ED27F51361AFA006A43D13DEFF8A53B0159145CA88AE
                5001B74E0D7135AA24491DD99D56281F60A17A3000198D1F222A6F1BA62E9540
                48E6C0D17D9AE0EE6522C94907E9DE7AF04D50414A8D3DAA06D828EDF5445ADB
                7644556F4668F17A8414CBC32FE7AFF03A2E8703712BA9811F087BF60B2C5AAD
                20B9729797ACEB5E3FD92CBB40994EFBA01593FE891FDC3A5AE8F8F468A113A2
                73772228431319750E286E75C7B1131638472EDF10F90D683CEA88139126080E
                5706BFCC129C1C3D3847CA2328C910DCFC0F11936DF3D4338679DB92253565EE
                21D9BDDD45F284BEBD84A7CC7B0B490F3216CFB5E102A23788689F2E21A2CE64
                0EC5AB7242B334FF71B2D50523773270ED7E1E066FC4A2ACEB00E20A8DE1C5DD
                08B798F5A443B6224BB00B6DA387219A0CC0A93E3B0467A8C0DA67F9DF8D1C97
                46935A1426F3A22E6D413A9416ECF6277770DE20A28B9A59EC97CC0CCA6FB6C7
                C8BD545C99E163F04E38FA6EB1D17F2B1003B7C3209AF245DB8407DA27BCD03C
                7610F523E4C20E5922AF771B0AC83DA2B73DAFD3022CFE7A183949F9909AF4E5
                E8BC5920C6140B7E5DB343C93F8579AF7D8C05E1D83EB48CBB10903B5A3F7785
                60D411E5172D5134608C13E70D496B1920BB5B0F19E4C2A6B66B93CBA705BE50
                033CC116240AB4105FA90D3337C9315293BE3DEDFBD73220458748F7A42FCA86
                77A078C804850458D06788DC1E7D648B08B0530729B31DF202D8B805F1F5EA88
                A96522AA4A059C722584972922AE520B66EE920F494D7A04F4985FCB80B4F751
                05B45CF598056611607AA736523BB47E059ED98A440A6C50436CAD2A3EA6C00A
                65449C524468A902828B37817D7223FC0BD68353BA05661E924F484D6A6031D1
                6B19903C18B37E90C5DF84800C52306F33C28B95C0394520258A082F5504A752
                0911A75F004B36C13787CC82B4B5F04C598303BC77E1F8F14AD8862E87D5E125
                D8EE2AD9456AD223782D03B39790485A6F8F8C828DEFBB7E7BFDE4B26DD9EF74
                D8B2578EEF095831B1C777C5BD3D7ECB60EDFB1676B196C2D27B09CCDDA5FF66
                EA26756DC741C96B262E125D86FB25F2F5EC2442E4D517AB925ACB892488E8CB
                8933C582DF1635412F0C6D173AAFE75A7319119D5EF473AE24A23F67BF17DD93
                25A2FFA7CF2E25A2B79F9E3D85D3BAE24CB1E0E545136822354345BF0C2D3627
                6A704E7331FD4B9FA3A23973E059385D624CB1E0D56B2EF97FD54BEB372697F1
                1FA84DD17BBF233D730000000049454E44AE426082}
            end
            object img_Item_Room_4: TImage
              Left = 151
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                20744558745469746C65004944453B546F6F6C733B437573746F6D697A3B4465
                7369676E3BAA5D29920000097A494441545847C5560B548EE916FE870845354A
                6E699AC8A1316E611C7722A4C27227F752462E29A1726D528A14452A738AAE23
                4A4AF7BFBFD245BA21C5A9E492D205C5184C3CB3F737FDD6CFB8CC39EBAC75F6
                5ACFFABEEF7DF7BBF7B3F7FBEEFD7E2200FF57FCC772FC74C27B20F9AA156D64
                208CBDD30B4A107907C5132ED1F0DF13A9D10F21F20E6443F1FCCADF6D097204
                79424719B427F0B840C6EBD445D1910082FF05FAFCB2C81A6ED70A7EE7315932
                7213F48DBA1CF40EDFE9E91F9D4D4EE01510D372D8F75C8E934790E354C3F93D
                48A703EBB1BEDBF1B322379FB3F4FA79119CBBFA44441EF48EA876F38980CBB1
                F06A67CFE0F3767BBCF4688EC908E49C3C4E4FF60AB8509E98751D65F7EBF0E4
                550B1EBFFC1DA5F71E213EA308EEBE91B59B77B82D255DC5D6755F918E488A4F
                8940608A9145CC1AABFDA8697E8EFB8D4DB85C741B9EFEE75EDB3B9FDC377692
                6167D269BFCCDCE188BDB32F2C6D0EC266F7515C48C8C6BDDAA7A86E68465DD3
                0B5AD78CA0C894379BB6BB3B90BE3281B7A9EDA708C8A6B64DDF01A314A7CD5E
                1F6BB9D51537CB1FE066C543DCAD7D0CFFD078D8ED3FE14B3AC25EEB1BAD1AA3
                3B646C9FD1134D86CF5B61137C2E360377AA1B514E19A978508F5A2212416396
                D6CE1EA4FF3581490899901521EA56484F715B2D9DA15D0CE76F4A76F709C5AD
                CA1A641596A3B4FC219C3CCE60F5863D06A4C3C6A467A413416DCE12EBEC0449
                3E11AE4171D93DE41697A3A2E631CEC56762A585FD11D25122C87D48406EC9BA
                DD61FBDC832E8E9B3C8BD32B3D70ED468C9DA5B5D47C4F4BFDF3DF9071F5360A
                6EDEC5F9F82CFCB8ED109F263E6052C24C4279D2CCE5FBDDBC83915D540149DE
                2DA4E6942239AB04A5771FC17CE34F5CF43D090A04E160B642D47EF1DA5DD53E
                8131D8E9E417376CE44466C96524AFDD7FA8FA3AEB832DCD2D6F914E0633F26F
                A3B8B40A16366E3534CF86A495C10454A69A98E5455ECA84F8CA9F8E1332AF23
                4E528CF8F462989A39328141040D026F076F23AF17C92F5865FFAAEED79738E2
                7F1E9BECBD12C64D99D3BBDF403DF5C5668E11A117D2F0F4750B2457CA9076E5
                266EDDA9C1DACDAEAF699D6CB63AE81B2E59B470A56D4B0A459D9475831C1721
                26B51051495771F6520E366C3B885D2EA7E078C01FEBAD9D8ED11A2E532621EA
                30D7D4EEE1FDC74D82F1E028316CF79E80F56E6F845F4C4753CB1BDCA60325CE
                2D1548E497DCC1F2F5FB6A691D9F6CDE868EE3F417CCB3B2757A25CEBE8688B8
                5C4427E723565C88E89402B29185437ED1A878D8881764AB8982394F6762D95A
                3B1F5AAB4A10C91B2DDAF24B5452164ACA6B8413FFA8F9059A7E7F8327A47CFB
                4103455E8694EC9B48A773904235BED5FE48DDB7DAFDB5D840FF41E317985B39
                BECAC82B4524451A122D81C1ECB53030598769466658BC7A070223C5C823E211
                71D9F00F4F4541D97D989A3BF096701644ED26CD5C65B0DACA0955358DC82A28
                4726394ABF724B70CC91B373DED344DACB6BA577101E198B28F725B5051E231A
                D25D7F782BF9C583CA2D07A1172F63A6C912B469DB7E1FD9ED47186E6A6E8FAB
                E43C2C360B27C39211461959B47A1B54D4754ED27C3726C07BD8D1608E65A0DD
                5E6FAAFB6AE4DFA8124848D39E59700B8919C5C8B85282D48C1C14FCBC020D39
                EE78559F83978F325171691FA2FC9C30DD78113B77247BBC3D2A04ED852B6C11
                4ECE7D4393101273190B57D942494DFB679AE30CF241164EB15C0F0D1D9529B3
                CC0E2F33DFD512149E80C2924A94DFABC3D5EB15884DCE16224F49CB46AE9F29
                9ACBC2D1D2908097559E7851EE82A65BA71061339A9DEF265B42A724709FE8A6
                3FD3F4E49A2D2E427616ACB4815257ED7FD1B83681AB8DAB47108104A1D3C871
                73C74F9E6516A36F6459A76F6C8929B32CEA2D36EE6B0C080C479EFF72349586
                E3F5C3303C2FB4C2F30286251A73EDE13655F319ADE73AE7A6C4596570841ADF
                E9CDF41B33D5144AAADA01F42DEB5CE80352E10F5EC4ECD9481702A7B1BB6EDF
                5E43E39CA737B3F3577783D19C6B86E69CB568CA5983675737E3B2DB0C6C9D38
                E879EF9E1ABAA4CF970FDBE106C5413109DE6BAE7F75C2BBCB49A5FB007AB48A
                5E67D6154848BB1B13511CD447A177D68111E2A737C3F0DB9D403C49374553DA
                323C495B8AA6AC1F517CDC008E13FA61B5D12C2C9ABDACA4AB6A0F7624CD826C
                A7E492659BD2B1F78509141DD213BD7D59C99FACD061A896628F0C27BDD42725
                6178F1EF0034262E4463C2023424CEC713C93A14784EC1F6D19A5835631A9C77
                3A60ABF51E18CEB190A8A8F6E84DEBA5246483FAAB63A930817C57BEF2FF743E
                5853A1A764AF5EEAE31B61F8B5EC24EA638C517FC118755146789CBC1AF96E63
                B14D4F03CB268F87DDFA8D38E0EC85B3D1A9D84D9D6EC6DC0DA94A2AEA7DC8CE
                BB76ADD64B26DD9F10E919E8384843A1578AE37071C3B5503C2F398EBAC8E9A8
                8D30406DF83434C49B22F7A751B019AEF9DA64F860386CB082D37E0F1CF33F07
                BF9064EA8045703D1A027D93F5E22ECADD34C99EEC9DF14979E7FCBBDE0ABD12
                760C13D71787E059D131D4044F44CD9909A8393D01F51797207BF730380CE92E
                D1E8DA75ACE1F8A9952B97AEA3C69444FF0A8908A02EE747E03BC0C533982AC8
                4CDC5949ED1BB2FB45129C7679DD5E9D7A5DDC3A24ADAE2804CDF99EB87F6A2C
                610CE19F78746E0132777C0FFBC1DDD3D43BC8711351EBDC59E5DB91A38D33AD
                6C5D119756482452713234192782937181EE83ED74A74C9CBE26AD8BB21A6F07
                5F3C1F3D03D2E8BB8498E99CA88CA7C6927718F74E8CC0BDE37AB8EBA387DAB3
                73916133003B06759374EF20C769E55212AA44415145536FCC3CB1959D1B6253
                8BE01B9C049FD389381A94882822B1798727C64C59EA47BA5CD2D2FF80F78407
                784235C454E75143F65154790D250C4195E710DA7763A46FD1C176DD6E128A5C
                369D1C0D3F153A29AA7C3374F49CB4F55B5D84C8BD89805760BCF08C151760E2
                4CF33AD2E31EF097E6C3C2033CA11AB8B0EF9DAA3033541ED245A5BB2E1E061B
                42BC411BB6035525DDE485B473E44214ADE52ACD9E62470565ADC1A34CD2AC1D
                0ED3355C08EF338902A293F230F8873955A4F359026C44C9525BC539D26202F2
                B7F74585EF54442EEA039B7F7CDCB914FCDD3A2E90F87E84B1C4D2FA0039CEC5
                D9B82CCC5FBE0D03864C73A5F94F6E010B0FF2E5A166AEA5E2B24DA76B956DBF
                AFAB2DB4947DD5E5DFEDB9B0787BBFAEA20FC1E3ADF38A9D149435070E9BEE4B
                515773E4ADCE397AE93FE447850D080D88C057292F60C8FEBB7D94B98CF03CEB
                B13EAFEBDE0A8E5CEAFCB336A42438123EE10C7EFFE24219F95FD8101465F1DF
                C8DFB42112FD01510E806A1B8077730000000049454E44AE426082}
            end
            object img_Game_Room_4: TImage
              Left = 43
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                1974455874536F6674776172650041646F626520496D616765526561647971C9
                653C00000011744558745469746C650054696D653B436C6F636B3BA59641FE00
                000ADF494441545847955707545557167D6926D62466223A4613C782C642442C
                58965811A529A08882A22616149510D11835111393650315512C51B1102B2A08
                FF8B14F9A22020F2A517691F3EF0814FEFEE39E702C6958C6B66EE5A7BDD77DB
                D9FB9E73EE7DEF49597B7749D9BFFD24A97E3F2EA9CE9EF88FA0F2563BDE6EC7
                3B6F008F89B97FB7E3D356130FF365FDB293A6516101CD252AA9A5B2EC6FA0D2
                41FC4EC8EE1DBDB27D8ED8E79D3EE69F7FC63BBEE08CB78A8CA1E0B4B72AEFB4
                777CCE69AF5B69C70E2D0BF8C14D87E6BF4B10625A2A3452F35FD054942765FE
                BC8386A9080165C5528B96485F0315411C7F70EFD0DC93472FABCEF94013740B
                3589F1A87F918146551EC838D5B9A8CB4E47F5B3589406FAA38044657B7BFE11
                B967D797B4FE3D8210D25C5E22099495484DB4E1F4DDDBA99B0A2B1103A4CCB3
                8F2E7709577BAE5CD623DBDBE348FE99E38DDAC70A349514A1495D80FACC64D4
                2444A33A2602559172820CD5D161D4F708F519CFD15890838A470F907FF25863
                AAE77EAF9DD6F33F227B1C9EB7D87EB3A6983C5E28A5EEDAC65C9250C2AA1854
                C4AE653BB6F6CBF63AF4ACF8CE0D3416E6A3312F0B35B10AA41C3E08F9B215B8
                3071064E8D180F3228EA0B13A743E6E088E443FBA00DF12771612426196AFF2B
                C8F0DC9778C979DD176497C3F256139133927ED8C27C9294424A9A356A7E14E4
                D75C36F4CDF4DC97A50995A1A93017B589D182D87782114E4C9A8BCBDBF7E196
                9F0C81B218C8E37344CD6DEEE771DF71539174602FCAEF5E45756C244AE50148
                3BF05B96CF4AC7FE64BF4D84BA40526E75654E494ADEE1263515ABF8F16D67E3
                59DDD2F6EF8D2CBD178486DC0C543EBC0799FD72788F9986EB5E1711A1CCC78B
                222DAAEA1AD1D2FA12D76F87899ADB596AAD18BFEE7509C769BECCCE1EA557CF
                411B76176AF2E4F35F763F5C30469FC3214424B86E664E49526E134A3851DE4B
                DCF3A357819F2F1A5EA4A132E22E6E9898E3B4E912843E4E4352AE06F58DCD78
                F9126F048FA7E469C4FCDFCDED71DDD814EA8B275071CF1FB9674F2166C7F7C7
                89A733F3C56DDAC0BCA2B0EBDF956D769E90B66F6F4B5DFA7354D1CEE54BEC71
                C6C2018AC43C64166AD1D0D48256DAED7F03CF7BF23C070A6501CE2E7084CCD6
                0E45678FA02CF80692F6FCD4E2B76AC564E2EBD4CE2B0AEFFEFDB86D6E778A02
                2881E21450BAEFC07183E978F0248DC82BB0EBD753686E6925BCFCB36E6DAB39
                04DCD722FA5EE269623A665938E1415C0A144F327072C26C246CFB1685270F92
                174E226A937320F17521F0C910E59DA396E683E3BF7369A955C6A22CC00FBEE3
                A722F0EC4DA4AB2A905554893A726D5373EB9F20C2BFB509F1896930B5D90879
                D863DC0D8D42524E31EE9EBF8D4B8646C8F3DC43E1F0C16327A716A7F1E30610
                2FDF11C20B9D82972F73493DB45F244CE24E379C32321331CFA284CB56570AB7
                3634B7A1F10D887B968A79561B1012FE18B1F10950661688B5C9941367675BE1
                A9CB5A64BBBB22E1FB2DF05B60B586783F20B0F7A50FC21C9707E45D3E8FE20B
                C7215FB408377E3C2876FE820CB0919AFA26D4938837E1C9D314CCB15C0779E8
                633C897B8AA2620D728AAB90A3AE12EB6FB97B426E638D944D7457FCB8158136
                8B380CDD08220C5D43ED1DD2D4FE7F20DFD35DB84B111821C85F145792A14A68
                AAEA50DBD08C3A0685E375C4C42763B6F96AC8EE470972756919CDAF476E4915
                72594449251EC9A2E037691A929D9622C56D0382AC176510EF87043E9252B7FB
                8B975495DCBE8CECDDAE38AB6788C4C44CB1036184905F5A25CE3A7BA2B6A10D
                E7FC8261BDEC7BCCA398078744212696C84B34625E415935F2680D83D7A7A4E6
                E29CFE443C5F6D8B24E7E508B2B4AE22DE9E1D027ADC5B680BCD4D5FA46F5D83
                9343F591915B8AC72B1C11B1D80E320B2BDC9E69822B13A7C1F72B439C1AA28F
                639F0FC7620737146A2AB1D0713B0283E4E4F63254D636A2A8AC162A4D0D0A34
                D524BC1A564BB70A4F9E193E1ECA15D6507EB30801669620DE4F089C88528FBB
                9656559CA1A914A3F3FA9391969A83BC926A04873D842CFC21E4847BE1510261
                8A68443E8A86FB3E1F982F7285AD8333C53E5C84A9A8A20645E535282CAB818A
                C0221859D985F0359882670E1678BAD402378D4DAB89F71FAF04F8CF354FCFF3
                F140CA46475C9D361B89E1D1E4BEB6C52A061963C30C75452DD4DA3A146B6B31
                CDC41E5E3E6790989A8D62EE6F47C75C165240488A8AC38D9973F074F13CC4D8
                9AE10F23E34CE27DE581EE9767980427EFFD09299B57E0BEDD52841F3A817C41
                4E3B798D984998B8A4B20EA504DB153B8547B82D2084D5B50929AF45A1400D22
                8F9C4298DD62C4DB1823D29AAE77432319F17E4C1039D0C5DB70EA36C59A3594
                03EB90B0F11B5C5DB094764F3B10E46DBB2AAE682361620D83327D91E30F087F
                188D327A167DEDE325249285F2BA420A8BBFAD23E2BE7640ECFC190836998B5F
                468EE5375177823886EF3B0E1CAA776DE6DCD62C773724393990BB4CA00C8914
                3B6001AFEF9A63CD8465D5F5B0A1531011158D727A167D2CA45D4C9B376A914C
                F9737B8EA9887F8CE9545C9A60D43AA3579F11C4CB2F257113B21B3E3A6D3045
                1EEDB40609F6E64870598F6B660B919F5F4CF1AEC5FC256E2825E20E7226ACA8
                A91719FE800454D434A09CC14208968BBF23B1F5285495C2DF7A099EAEFF1AD1
                A653106C341947478EBB4F7C1D092804F075D865E3C02F8DFD26CF6A7DEEEC28
                8E4A84BD3D82D7BBA2B8BCFA95DBCB05798320D4D2919B6FB7050A3A11DA5A6A
                539F10D2EE8D52121EE24202ED49C0E2B97838CB10E7474F6C5DF5D94053E263
                F78B6B980BAB60353D3D861BF8DEB5982F9225F5DB6F20B7B2867C0389509743
                534D02DA4998AC922E1C0B5B571210239E8508028F9796542074F35684D8D820
                79ED123C9A350E570DC6E3B7417A9789A717E1CFD7F19911E3B962359D0774EE
                DACF6B9841FC7D4B4BC4984D45FA96B5620701B6CB90762F9C04D40B92CABA06
                71E3992D7481223A06557443729B2FA28CD048042D5D49EBEC904AB75ED47403
                F81B8C81C740BD84BE9D3A0F249EAECC7762D068E695A453430DB862359C91DD
                66F6D4F9CA6B88BE4A6E3207D1269390B2DE014A5727049A5A40B66A1D9E9DBF
                84826749D0A84B504DA4E121A15029939178C10F216B9D114C1E546E5A8DE4AF
                17E2A1913E6E8E1E8DC30346154EEEFEC958B2DF83203EC9BC07E85145859568
                E5FEFCC82278B0C7BC8F7B8F3FFC2FBD8C6B13A640317D2CE2AD8D91E9B606CA
                CDABA170588260CBF9B833D78C4ECB5C04CCB3807CBE95E857D211CEF8762562
                CDA72172B21E2E0E1B8503FD8667CDECF1E924B2CBDF8322F1CA6F5D948EF6E7
                8340E51829D106DF90B441D7B9D9910FDD077DD075F09EBE432FF8E88E69BD33
                6E0C1453F5C5394E5E65830C9795C8DAB616393B9D9145C232E80A7FEEB800B1
                14B6C84923E1FFD508787F31BC7557EFC157BEE8D47918D9637211F772FF0B12
                E3705FFE6FA1E2454AB4815709572480DF11AF3CC1B1EA65F661AF593FF71972
                FFD8E723E0AB3B12B7478F847CEC4884198E8262D228844DE0F608DCD11B8EF3
                83BEC491CF86618FCEE05093EE9F1AD3FA3E047EEF0BB7B3FD0E011EBD875217
                15565211E02755DCE90027AA10C189C9AA396EBD0DBB7C34D6F993FEDBDD7506
                85FFAA3324ED406FDD328FDEBAD8AFA35BCEEDDDBD06466CE8D97FD7B8CE1F4E
                A0F9FF24F0AEDF2788BFA20EE20E1CEA3584BAA9B0124F015DC94347573C7BE8
                305EFDA6B10136C43BE177786F423F02FFEDF0B71DD7FCD3C1BBE5170C9FF157
                C44CF426FC3FA5C323EC4AF60A13F0371D5FA75C739BFB799CE7F1FCFFA148D2
                BF01640A1D84694D0E890000000049454E44AE426082}
            end
            object lb_Game_4: TLabel
              Left = 37
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #45824#44592#51473
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Team_4: TLabel
              Left = 91
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #54016#51204
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Item_4: TLabel
              Left = 145
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #50500#53596#51204
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btn_Room_4: TAdvGlassButton
              Tag = 4
              Left = 304
              Top = 11
              Width = 91
              Height = 94
              Cursor = crHandPoint
              BackColor = clNavy
              Caption = 'ENTER'
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
              OnClick = ClickEnterRoomButton
            end
          end
          object pnRoom_7: TAdvSmoothPanel
            Left = 14
            Top = 543
            Width = 416
            Height = 128
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
            Fill.Color = 7422746
            Fill.ColorTo = 9262113
            Fill.ColorMirror = 9262113
            Fill.ColorMirrorTo = 9262113
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtVertical
            Fill.BorderColor = 14922381
            Fill.Rounding = 10
            Fill.ShadowColor = clBlack
            Fill.ShadowOffset = 10
            Fill.Glow = gmNone
            Version = '1.5.0.0'
            TabOrder = 12
            TMSStyle = 4
            object lb_Room_7_NumTitle: TLabel
              Left = 16
              Top = 14
              Width = 26
              Height = 18
              Caption = 'No.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Room_7_Number: TLabel
              Left = 48
              Top = 14
              Width = 10
              Height = 18
              Caption = '7'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Title_Room_7: TLabel
              Left = 80
              Top = 14
              Width = 209
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #51068#51060#49340#49324#50724#50977#52832#54036#44396#49901#51068#51060#49340
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_PlayerCount_Room_7: TLabel
              Left = 218
              Top = 41
              Width = 54
              Height = 45
              Caption = '6/6'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -37
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object img_Team_Room_7: TImage
              Left = 97
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                1C744558745469746C65005465616D3B50656F706C653B47726F75703B557365
                72937B6049000009D8494441545847C595775494571AC6C7925034AB820931AB
                462C481B502054294A114491629080489391367418096D181C507A57AAD2CBC0
                4815180129418D4824A0706CD185644D34AB89D9C41CD7CDB3F712D964D03FCC
                FE91BDE73C87F35EBEF7FD3DDF77EFFB0E03C0FF55AFDCFC33F5CACD3F530C2E
                97FB923E4DD45F7689A7EF7481AB9B3314A733D41FAD7DBFEF8816CE4568DE3A
                1BBAB5B08DADAE3CEFF9D7CA11FAA98971A85EDA188ED77DFB42A2C9CDF1321F
                DC688AC5D7A3CD787CF3133CBAD18F2F4405B898E3064180D693325705CD761F
                25461B4BF10FE5CCE7890554A208CD23E39561F8FE662FC62B43F168B21B5F8F
                34E0764B32068F3BA125D408352C4D64DAAC1174B3998CAE00D53F94339F2716
                5035FAA8082785C9F8BC261A55873420E2396038C305FD7C7B3404ED4015DB1C
                B5117668883F748D9CA13DD56735BC4BD3171A70A7B7146D71FBD0C377FA6F4E
                354B1B790E1B916EBD065C63B9A1F93CB180AAC47963FBF96C5F143A2BE1724D
                3C6A427622D35E1195E1FB2814CD096E688EB4828863FCDD27D106DFF485AA41
                14A2F1AC9B6342F62D31292AC540711CB21D99E0ED9003CFF43D2459AD47ACB1
                1CC23497B7CCE7890554A9D66BF28ABD0C50E2A18B07D79AC939B6E19BF116DC
                3D97894FB8A6188A36C0DDDA60DC6BE5E1C1E56A3C9EEAC4745F01464F7AE10C
                5B0BA70F2861FA5301C9EDC0648D0FA6EA4350EE638C00E65B38ACB234793E4F
                2CA08A325A65196BB40A75A1D6F8E73D11FE757F00CF1E8C6224DB1957B21DF1
                455B347A539DF0F84A25BEBD528399DE2C5CAF0AC170AA03CE466EC3E98FD6A1
                2E78E76CCEB7BD31F876E0184EB10C10A0BEFCA9BBDA3B5AF379620195959595
                44B2BD46A530CAEE979FEE76E2E71911D12004DE4C5C2FF7C140E24E94BB29E1
                6AD67EDCAE0FC764251B17D3F6A13D441B15FBD7A2D0460E69D6EBF0F3743F1E
                9E8BC6839E44E439A9FFC2B5514BB1B0B0909ECF130BA8343535179A9B9BBF5B
                C6B69C9CEECBC58F537578325E8B13B6AB3156E08A930EF2286419A3C25511AD
                FE1A68F565A2DA6503F277AF42CE4E1964EF94C5314B793C19AB22066271ADDC
                0FFC3D8A374C4D4DD792DA8B3827341861B95B1821594C4650A6F2CB06A84C4C
                4C9626381BF3BB78F678D0C5C177A395C8B5DD808E48631CB7DE80AB1D99684F
                3F8C44AB8D38A22B8B506D1984E8C8816BB80C7CA3E528F6D0C3E391D3F8A63B
                0E8290ED609B29A5929A7F6190159CA9CA084C5766F8A76E66F81E5778B50105
                058537B69BEB6C4DF5D9F6FC6C9C0DAE9F49419EB3260A3E5440BEBB3E1E4ED4
                E3C92D21662E14E2BAE0082E17B8A32BD905411A2B10A3BB0CF5514E18AF8D27
                5D61861827E5E77A465BB4D7AD5BF72635D07F83C3E89D0A65B0F8F20CAFC4F7
                C50D90B590E8CDC04463665AF5DED18EA60894721C50CDF54669F84788D49145
                0BD7094FBF10E2F9740B9EDDA9C7F7175231D3148AA9DA082458AC43A4FE3BE8
                3A958C9341B64872D6C7C73E7AF04EDC7CC5C2651593D496245AD431E1CF708F
                5FC3708D5BF5AB81176089C83433BDB41A1B41519BCBF3D64B5128AA75446F13
                07FD55F168AB484469A41DCEF29CF0EC761D9EDDACC64FE38578288AC5B42010
                336DF1C8DBAF0ABE9B3E46CE9F84A8280C3951BBE1C95A8BA4EA1D084C53FAB7
                F391D542F3836F1B129634653A1D799BB2190BED589B561FAFDADD5E72D60DBD
                637C4C7C5582E13B09A819F4444C9101DC62E51196A183CAD660D484EDC2A38B
                59F87134178FFA13F0655330A61BC371AB3E1249369BD0D8C503B7D47436C737
                59094975BAA818DE8B86CB2EC86832052B591E0EC1B23D4C43A93584BD881A78
                33284DBDB171D81F63338504CC87E87A083A2702D1FEB90FCE5C3D04C1882B4A
                06764178291225F1B618C973C3FDD670CC08D8B85BE38B2FDB62D1CDB3432ADB
                0C3D57537F976385FC5E13E49D334476D736E4F598A2E8BC15624F6B60D7E1B7
                6A095B8A1A9066A72B7FDD7135185517C9BC274E9B463DD034E286EA8B8E281D
                DC831C913132BA0C70BADF0DC5555EA8F037C634B91FD3C208028FC31D412452
                EC36A3BC3604CD974308F8B79CF4B3BA486DFF00C75BB590D4A281E496AD4816
                EA62B7DF92AF087BB63396F8242BFCD0F2D96114F49820F79CF1ACDBCC2E3D92
                AC8334927CAC4513B9DD96A81CF44161FB214405EA20DF591D4DE1E6A4CD76E0
                18193CDEEE4A38D5E9873AF2250B4456B339492D5B70F48C3A784235F09A5410
                2F50466C8312F8673460ED27F51361AFA006A43D13DEFF8A53B0159145CA88AE
                5001B74E0D7135AA24491DD99D56281F60A17A3000198D1F222A6F1BA62E9540
                48E6C0D17D9AE0EE6522C94907E9DE7AF04D50414A8D3DAA06D828EDF5445ADB
                7644556F4668F17A8414CBC32FE7AFF03A2E8703712BA9811F087BF60B2C5AAD
                20B9729797ACEB5E3FD92CBB40994EFBA01593FE891FDC3A5AE8F8F468A113A2
                73772228431319750E286E75C7B1131638472EDF10F90D683CEA88139126080E
                5706BFCC129C1C3D3847CA2328C910DCFC0F11936DF3D4338679DB92253565EE
                21D9BDDD45F284BEBD84A7CC7B0B490F3216CFB5E102A23788689F2E21A2CE64
                0EC5AB7242B334FF71B2D50523773270ED7E1E066FC4A2ACEB00E20A8DE1C5DD
                08B798F5A443B6224BB00B6DA387219A0CC0A93E3B0467A8C0DA67F9DF8D1C97
                46935A1426F3A22E6D413A9416ECF6277770DE20A28B9A59EC97CC0CCA6FB6C7
                C8BD545C99E163F04E38FA6EB1D17F2B1003B7C3209AF245DB8407DA27BCD03C
                7610F523E4C20E5922AF771B0AC83DA2B73DAFD3022CFE7A183949F9909AF4E5
                E8BC5920C6140B7E5DB343C93F8579AF7D8C05E1D83EB48CBB10903B5A3F7785
                60D411E5172D5134608C13E70D496B1920BB5B0F19E4C2A6B66B93CBA705BE50
                033CC116240AB4105FA90D3337C9315293BE3DEDFBD73220458748F7A42FCA86
                77A078C804850458D06788DC1E7D648B08B0530729B31DF202D8B805F1F5EA88
                A96522AA4A059C722584972922AE520B66EE920F494D7A04F4985FCB80B4F751
                05B45CF598056611607AA736523BB47E059ED98A440A6C50436CAD2A3EA6C00A
                65449C524468A902828B37817D7223FC0BD68353BA05661E924F484D6A6031D1
                6B19903C18B37E90C5DF84800C52306F33C28B95C0394520258A082F5504A752
                0911A75F004B36C13787CC82B4B5F04C598303BC77E1F8F14AD8862E87D5E125
                D8EE2AD9456AD223782D03B39790485A6F8F8C828DEFBB7E7BFDE4B26DD9EF74
                D8B2578EEF095831B1C777C5BD3D7ECB60EDFB1676B196C2D27B09CCDDA5FF66
                EA26756DC741C96B262E125D86FB25F2F5EC2442E4D517AB925ACB892488E8CB
                8933C582DF1635412F0C6D173AAFE75A7319119D5EF473AE24A23F67BF17DD93
                25A2FFA7CF2E25A2B79F9E3D85D3BAE24CB1E0E545136822354345BF0C2D3627
                6A704E7331FD4B9FA3A23973E059385D624CB1E0D56B2EF97FD54BEB372697F1
                1FA84DD17BBF233D730000000049454E44AE426082}
            end
            object img_Item_Room_7: TImage
              Left = 151
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                20744558745469746C65004944453B546F6F6C733B437573746F6D697A3B4465
                7369676E3BAA5D29920000097A494441545847C5560B548EE916FE870845354A
                6E699AC8A1316E611C7722A4C27227F752462E29A1726D528A14452A738AAE23
                4A4AF7BFBFD245BA21C5A9E492D205C5184C3CB3F737FDD6CFB8CC39EBAC75F6
                5ACFFABEEF7DF7BBF7B3F7FBEEFD7E2200FF57FCC772FC74C27B20F9AA156D64
                208CBDD30B4A107907C5132ED1F0DF13A9D10F21F20E6443F1FCCADF6D097204
                79424719B427F0B840C6EBD445D1910082FF05FAFCB2C81A6ED70A7EE7315932
                7213F48DBA1CF40EDFE9E91F9D4D4EE01510D372D8F75C8E934790E354C3F93D
                48A703EBB1BEDBF1B322379FB3F4FA79119CBBFA44441EF48EA876F38980CBB1
                F06A67CFE0F3767BBCF4688EC908E49C3C4E4FF60AB8509E98751D65F7EBF0E4
                550B1EBFFC1DA5F71E213EA308EEBE91B59B77B82D255DC5D6755F918E488A4F
                8940608A9145CC1AABFDA8697E8EFB8D4DB85C741B9EFEE75EDB3B9FDC377692
                6167D269BFCCDCE188BDB32F2C6D0EC266F7515C48C8C6BDDAA7A86E68465DD3
                0B5AD78CA0C894379BB6BB3B90BE3281B7A9EDA708C8A6B64DDF01A314A7CD5E
                1F6BB9D51537CB1FE066C543DCAD7D0CFFD078D8ED3FE14B3AC25EEB1BAD1AA3
                3B646C9FD1134D86CF5B61137C2E360377AA1B514E19A978508F5A2212416396
                D6CE1EA4FF3581490899901521EA56484F715B2D9DA15D0CE76F4A76F709C5AD
                CA1A641596A3B4FC219C3CCE60F5863D06A4C3C6A467A413416DCE12EBEC0449
                3E11AE4171D93DE41697A3A2E631CEC56762A585FD11D25122C87D48406EC9BA
                DD61FBDC832E8E9B3C8BD32B3D70ED468C9DA5B5D47C4F4BFDF3DF9071F5360A
                6EDEC5F9F82CFCB8ED109F263E6052C24C4279D2CCE5FBDDBC83915D540149DE
                2DA4E6942239AB04A5771FC17CE34F5CF43D090A04E160B642D47EF1DA5DD53E
                8131D8E9E417376CE44466C96524AFDD7FA8FA3AEB832DCD2D6F914E0633F26F
                A3B8B40A16366E3534CF86A495C10454A69A98E5455ECA84F8CA9F8E1332AF23
                4E528CF8F462989A39328141040D026F076F23AF17C92F5865FFAAEED79738E2
                7F1E9BECBD12C64D99D3BBDF403DF5C5668E11A117D2F0F4750B2457CA9076E5
                266EDDA9C1DACDAEAF699D6CB63AE81B2E59B470A56D4B0A459D9475831C1721
                26B51051495771F6520E366C3B885D2EA7E078C01FEBAD9D8ED11A2E532621EA
                30D7D4EEE1FDC74D82F1E028316CF79E80F56E6F845F4C4753CB1BDCA60325CE
                2D1548E497DCC1F2F5FB6A691D9F6CDE868EE3F417CCB3B2757A25CEBE8688B8
                5C4427E723565C88E89402B29185437ED1A878D8881764AB8982394F6762D95A
                3B1F5AAB4A10C91B2DDAF24B5452164ACA6B8413FFA8F9059A7E7F8327A47CFB
                4103455E8694EC9B48A773904235BED5FE48DDB7DAFDB5D840FF41E317985B39
                BECAC82B4524451A122D81C1ECB53030598769466658BC7A070223C5C823E211
                71D9F00F4F4541D97D989A3BF096701644ED26CD5C65B0DACA0955358DC82A28
                4726394ABF724B70CC91B373DED344DACB6BA577101E198B28F725B5051E231A
                D25D7F782BF9C583CA2D07A1172F63A6C912B469DB7E1FD9ED47186E6A6E8FAB
                E43C2C360B27C39211461959B47A1B54D4754ED27C3726C07BD8D1608E65A0DD
                5E6FAAFB6AE4DFA8124848D39E59700B8919C5C8B85282D48C1C14FCBC020D39
                EE78559F83978F325171691FA2FC9C30DD78113B77247BBC3D2A04ED852B6C11
                4ECE7D4393101273190B57D942494DFB679AE30CF241164EB15C0F0D1D9529B3
                CC0E2F33DFD512149E80C2924A94DFABC3D5EB15884DCE16224F49CB46AE9F29
                9ACBC2D1D2908097559E7851EE82A65BA71061339A9DEF265B42A724709FE8A6
                3FD3F4E49A2D2E427616ACB4815257ED7FD1B83681AB8DAB47108104A1D3C871
                73C74F9E6516A36F6459A76F6C8929B32CEA2D36EE6B0C080C479EFF72349586
                E3F5C3303C2FB4C2F30286251A73EDE13655F319ADE73AE7A6C4596570841ADF
                E9CDF41B33D5144AAADA01F42DEB5CE80352E10F5EC4ECD9481702A7B1BB6EDF
                5E43E39CA737B3F3577783D19C6B86E69CB568CA5983675737E3B2DB0C6C9D38
                E879EF9E1ABAA4CF970FDBE106C5413109DE6BAE7F75C2BBCB49A5FB007AB48A
                5E67D6154848BB1B13511CD447A177D68111E2A737C3F0DB9D403C49374553DA
                323C495B8AA6AC1F517CDC008E13FA61B5D12C2C9ABDACA4AB6A0F7624CD826C
                A7E492659BD2B1F78509141DD213BD7D59C99FACD061A896628F0C27BDD42725
                6178F1EF0034262E4463C2023424CEC713C93A14784EC1F6D19A5835631A9C77
                3A60ABF51E18CEB190A8A8F6E84DEBA5246483FAAB63A930817C57BEF2FF743E
                5853A1A764AF5EEAE31B61F8B5EC24EA638C517FC118755146789CBC1AF96E63
                B14D4F03CB268F87DDFA8D38E0EC85B3D1A9D84D9D6EC6DC0DA94A2AEA7DC8CE
                BB76ADD64B26DD9F10E919E8384843A1578AE37071C3B5503C2F398EBAC8E9A8
                8D30406DF83434C49B22F7A751B019AEF9DA64F860386CB082D37E0F1CF33F07
                BF9064EA8045703D1A027D93F5E22ECADD34C99EEC9DF14979E7FCBBDE0ABD12
                760C13D71787E059D131D4044F44CD9909A8393D01F51797207BF730380CE92E
                D1E8DA75ACE1F8A9952B97AEA3C69444FF0A8908A02EE747E03BC0C533982AC8
                4CDC5949ED1BB2FB45129C7679DD5E9D7A5DDC3A24ADAE2804CDF99EB87F6A2C
                610CE19F78746E0132777C0FFBC1DDD3D43BC8711351EBDC59E5DB91A38D33AD
                6C5D119756482452713234192782937181EE83ED74A74C9CBE26AD8BB21A6F07
                5F3C1F3D03D2E8BB8498E99CA88CA7C6927718F74E8CC0BDE37AB8EBA387DAB3
                73916133003B06759374EF20C769E55212AA44415145536FCC3CB1959D1B6253
                8BE01B9C049FD389381A94882822B1798727C64C59EA47BA5CD2D2FF80F78407
                784235C454E75143F65154790D250C4195E710DA7763A46FD1C176DD6E128A5C
                369D1C0D3F153A29AA7C3374F49CB4F55B5D84C8BD89805760BCF08C151760E2
                4CF33AD2E31EF097E6C3C2033CA11AB8B0EF9DAA3033541ED245A5BB2E1E061B
                42BC411BB6035525DDE485B473E44214ADE52ACD9E62470565ADC1A34CD2AC1D
                0ED3355C08EF338902A293F230F8873955A4F359026C44C9525BC539D26202F2
                B7F74585EF54442EEA039B7F7CDCB914FCDD3A2E90F87E84B1C4D2FA0039CEC5
                D9B82CCC5FBE0D03864C73A5F94F6E010B0FF2E5A166AEA5E2B24DA76B956DBF
                AFAB2DB4947DD5E5DFEDB9B0787BBFAEA20FC1E3ADF38A9D149435070E9BEE4B
                515773E4ADCE397AE93FE447850D080D88C057292F60C8FEBB7D94B98CF03CEB
                B13EAFEBDE0A8E5CEAFCB336A42438123EE10C7EFFE24219F95FD8101465F1DF
                C8DFB42112FD01510E806A1B8077730000000049454E44AE426082}
            end
            object img_Game_Room_7: TImage
              Left = 43
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                1974455874536F6674776172650041646F626520496D616765526561647971C9
                653C00000011744558745469746C650054696D653B436C6F636B3BA59641FE00
                000ADF494441545847955707545557167D6926D62466223A4613C782C642442C
                58965811A529A08882A22616149510D11835111393650315512C51B1102B2A08
                FF8B14F9A22020F2A517691F3EF0814FEFEE39E702C6958C6B66EE5A7BDD77DB
                D9FB9E73EE7DEF49597B7749D9BFFD24A97E3F2EA9CE9EF88FA0F2563BDE6EC7
                3B6F008F89B97FB7E3D356130FF365FDB293A6516101CD252AA9A5B2EC6FA0D2
                41FC4EC8EE1DBDB27D8ED8E79D3EE69F7FC63BBEE08CB78A8CA1E0B4B72AEFB4
                777CCE69AF5B69C70E2D0BF8C14D87E6BF4B10625A2A3452F35FD054942765FE
                BC8386A9080165C5528B96485F0315411C7F70EFD0DC93472FABCEF94013740B
                3589F1A87F918146551EC838D5B9A8CB4E47F5B3589406FAA38044657B7BFE11
                B967D797B4FE3D8210D25C5E22099495484DB4E1F4DDDBA99B0A2B1103A4CCB3
                8F2E7709577BAE5CD623DBDBE348FE99E38DDAC70A349514A1495D80FACC64D4
                2444A33A2602559172820CD5D161D4F708F519CFD15890838A470F907FF25863
                AAE77EAF9DD6F33F227B1C9EB7D87EB3A6983C5E28A5EEDAC65C9250C2AA1854
                C4AE653BB6F6CBF63AF4ACF8CE0D3416E6A3312F0B35B10AA41C3E08F9B215B8
                3071064E8D180F3228EA0B13A743E6E088E443FBA00DF12771612426196AFF2B
                C8F0DC9778C979DD176497C3F256139133927ED8C27C9294424A9A356A7E14E4
                D75C36F4CDF4DC97A50995A1A93017B589D182D87782114E4C9A8BCBDBF7E196
                9F0C81B218C8E37344CD6DEEE771DF71539174602FCAEF5E45756C244AE50148
                3BF05B96CF4AC7FE64BF4D84BA40526E75654E494ADEE1263515ABF8F16D67E3
                59DDD2F6EF8D2CBD178486DC0C543EBC0799FD72788F9986EB5E1711A1CCC78B
                222DAAEA1AD1D2FA12D76F87899ADB596AAD18BFEE7509C769BECCCE1EA557CF
                411B76176AF2E4F35F763F5C30469FC3214424B86E664E49526E134A3851DE4B
                DCF3A357819F2F1A5EA4A132E22E6E9898E3B4E912843E4E4352AE06F58DCD78
                F9126F048FA7E469C4FCDFCDED71DDD814EA8B275071CF1FB9674F2166C7F7C7
                89A733F3C56DDAC0BCA2B0EBDF956D769E90B66F6F4B5DFA7354D1CEE54BEC71
                C6C2018AC43C64166AD1D0D48256DAED7F03CF7BF23C070A6501CE2E7084CCD6
                0E45678FA02CF80692F6FCD4E2B76AC564E2EBD4CE2B0AEFFEFDB86D6E778A02
                2881E21450BAEFC07183E978F0248DC82BB0EBD753686E6925BCFCB36E6DAB39
                04DCD722FA5EE269623A665938E1415C0A144F327072C26C246CFB1685270F92
                174E226A937320F17521F0C910E59DA396E683E3BF7369A955C6A22CC00FBEE3
                A722F0EC4DA4AB2A905554893A726D5373EB9F20C2BFB509F1896930B5D90879
                D863DC0D8D42524E31EE9EBF8D4B8646C8F3DC43E1F0C16327A716A7F1E30610
                2FDF11C20B9D82972F73493DB45F244CE24E379C32321331CFA284CB56570AB7
                3634B7A1F10D887B968A79561B1012FE18B1F10950661688B5C9941367675BE1
                A9CB5A64BBBB22E1FB2DF05B60B586783F20B0F7A50FC21C9707E45D3E8FE20B
                C7215FB408377E3C2876FE820CB0919AFA26D4938837E1C9D314CCB15C0779E8
                633C897B8AA2620D728AAB90A3AE12EB6FB97B426E638D944D7457FCB8158136
                8B380CDD08220C5D43ED1DD2D4FE7F20DFD35DB84B111821C85F145792A14A68
                AAEA50DBD08C3A0685E375C4C42763B6F96AC8EE470972756919CDAF476E4915
                72594449251EC9A2E037691A929D9622C56D0382AC176510EF87043E9252B7FB
                8B975495DCBE8CECDDAE38AB6788C4C44CB1036184905F5A25CE3A7BA2B6A10D
                E7FC8261BDEC7BCCA398078744212696C84B34625E415935F2680D83D7A7A4E6
                E29CFE443C5F6D8B24E7E508B2B4AE22DE9E1D027ADC5B680BCD4D5FA46F5D83
                9343F591915B8AC72B1C11B1D80E320B2BDC9E69822B13A7C1F72B439C1AA28F
                639F0FC7620737146A2AB1D0713B0283E4E4F63254D636A2A8AC162A4D0D0A34
                D524BC1A564BB70A4F9E193E1ECA15D6507EB30801669620DE4F089C88528FBB
                9656559CA1A914A3F3FA9391969A83BC926A04873D842CFC21E4847BE1510261
                8A68443E8A86FB3E1F982F7285AD8333C53E5C84A9A8A20645E535282CAB818A
                C0221859D985F0359882670E1678BAD402378D4DAB89F71FAF04F8CF354FCFF3
                F140CA46475C9D361B89E1D1E4BEB6C52A061963C30C75452DD4DA3A146B6B31
                CDC41E5E3E6790989A8D62EE6F47C75C165240488A8AC38D9973F074F13CC4D8
                9AE10F23E34CE27DE581EE9767980427EFFD09299B57E0BEDD52841F3A817C41
                4E3B798D984998B8A4B20EA504DB153B8547B82D2084D5B50929AF45A1400D22
                8F9C4298DD62C4DB1823D29AAE77432319F17E4C1039D0C5DB70EA36C59A3594
                03EB90B0F11B5C5DB094764F3B10E46DBB2AAE682361620D83327D91E30F087F
                188D327A167DEDE325249285F2BA420A8BBFAD23E2BE7640ECFC190836998B5F
                468EE5375177823886EF3B0E1CAA776DE6DCD62C773724393990BB4CA00C8914
                3B6001AFEF9A63CD8465D5F5B0A1531011158D727A167D2CA45D4C9B376A914C
                F9737B8EA9887F8CE9545C9A60D43AA3579F11C4CB2F257113B21B3E3A6D3045
                1EEDB40609F6E64870598F6B660B919F5F4CF1AEC5FC256E2825E20E7226ACA8
                A91719FE800454D434A09CC14208968BBF23B1F5285495C2DF7A099EAEFF1AD1
                A653106C341947478EBB4F7C1D092804F075D865E3C02F8DFD26CF6A7DEEEC28
                8E4A84BD3D82D7BBA2B8BCFA95DBCB05798320D4D2919B6FB7050A3A11DA5A6A
                539F10D2EE8D52121EE24202ED49C0E2B97838CB10E7474F6C5DF5D94053E263
                F78B6B980BAB60353D3D861BF8DEB5982F9225F5DB6F20B7B2867C0389509743
                534D02DA4998AC922E1C0B5B571210239E8508028F9796542074F35684D8D820
                79ED123C9A350E570DC6E3B7417A9789A717E1CFD7F19911E3B962359D0774EE
                DACF6B9841FC7D4B4BC4984D45FA96B5620701B6CB90762F9C04D40B92CABA06
                71E3992D7481223A06557443729B2FA28CD048042D5D49EBEC904AB75ED47403
                F81B8C81C740BD84BE9D3A0F249EAECC7762D068E695A453430DB862359C91DD
                66F6D4F9CA6B88BE4A6E3207D1269390B2DE014A5727049A5A40B66A1D9E9DBF
                84826749D0A84B504DA4E121A15029939178C10F216B9D114C1E546E5A8DE4AF
                17E2A1913E6E8E1E8DC30346154EEEFEC958B2DF83203EC9BC07E85145859568
                E5FEFCC82278B0C7BC8F7B8F3FFC2FBD8C6B13A640317D2CE2AD8D91E9B606CA
                CDABA170588260CBF9B833D78C4ECB5C04CCB3807CBE95E857D211CEF8762562
                CDA72172B21E2E0E1B8503FD8667CDECF1E924B2CBDF8322F1CA6F5D948EF6E7
                8340E51829D106DF90B441D7B9D9910FDD077DD075F09EBE432FF8E88E69BD33
                6E0C1453F5C5394E5E65830C9795C8DAB616393B9D9145C232E80A7FEEB800B1
                14B6C84923E1FFD508787F31BC7557EFC157BEE8D47918D9637211F772FF0B12
                E3705FFE6FA1E2454AB4815709572480DF11AF3CC1B1EA65F661AF593FF71972
                FFD8E723E0AB3B12B7478F847CEC4884198E8262D228844DE0F608DCD11B8EF3
                83BEC491CF86618FCEE05093EE9F1AD3FA3E047EEF0BB7B3FD0E011EBD875217
                15565211E02755DCE90027AA10C189C9AA396EBD0DBB7C34D6F993FEDBDD7506
                85FFAA3324ED406FDD328FDEBAD8AFA35BCEEDDDBD06466CE8D97FD7B8CE1F4E
                A0F9FF24F0AEDF2788BFA20EE20E1CEA3584BAA9B0124F015DC94347573C7BE8
                305EFDA6B10136C43BE177786F423F02FFEDF0B71DD7FCD3C1BBE5170C9FF157
                C44CF426FC3FA5C323EC4AF60A13F0371D5FA75C739BFB799CE7F1FCFFA148D2
                BF01640A1D84694D0E890000000049454E44AE426082}
            end
            object lb_Game_7: TLabel
              Left = 37
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #45824#44592#51473
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Team_7: TLabel
              Left = 91
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #54016#51204
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Item_7: TLabel
              Left = 145
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #50500#53596#51204
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btn_Room_7: TAdvGlassButton
              Tag = 7
              Left = 304
              Top = 11
              Width = 91
              Height = 94
              Cursor = crHandPoint
              BackColor = clNavy
              Caption = 'ENTER'
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
              OnClick = ClickEnterRoomButton
            end
          end
          object pnRoom_8: TAdvSmoothPanel
            Left = 427
            Top = 543
            Width = 416
            Height = 128
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
            Fill.Color = 7422746
            Fill.ColorTo = 9262113
            Fill.ColorMirror = 9262113
            Fill.ColorMirrorTo = 9262113
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtVertical
            Fill.BorderColor = 14922381
            Fill.Rounding = 10
            Fill.ShadowColor = clBlack
            Fill.ShadowOffset = 10
            Fill.Glow = gmNone
            Version = '1.5.0.0'
            TabOrder = 13
            TMSStyle = 4
            object lb_Room_8_NumTitle: TLabel
              Left = 16
              Top = 14
              Width = 26
              Height = 18
              Caption = 'No.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Room_8_Number: TLabel
              Left = 48
              Top = 14
              Width = 10
              Height = 18
              Caption = '8'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Title_Room_8: TLabel
              Left = 80
              Top = 14
              Width = 209
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #51068#51060#49340#49324#50724#50977#52832#54036#44396#49901#51068#51060#49340
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_PlayerCount_Room_8: TLabel
              Left = 218
              Top = 41
              Width = 54
              Height = 45
              Caption = '6/6'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -37
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object img_Team_Room_8: TImage
              Left = 97
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                1C744558745469746C65005465616D3B50656F706C653B47726F75703B557365
                72937B6049000009D8494441545847C595775494571AC6C7925034AB820931AB
                462C481B502054294A114491629080489391367418096D181C507A57AAD2CBC0
                4815180129418D4824A0706CD185644D34AB89D9C41CD7CDB3F712D964D03FCC
                FE91BDE73C87F35EBEF7FD3DDF77EFFB0E03C0FF55AFDCFC33F5CACD3F530C2E
                97FB923E4DD45F7689A7EF7481AB9B3314A733D41FAD7DBFEF8816CE4568DE3A
                1BBAB5B08DADAE3CEFF9D7CA11FAA98971A85EDA188ED77DFB42A2C9CDF1321F
                DC688AC5D7A3CD787CF3133CBAD18F2F4405B898E3064180D693325705CD761F
                25461B4BF10FE5CCE7890554A208CD23E39561F8FE662FC62B43F168B21B5F8F
                34E0764B32068F3BA125D408352C4D64DAAC1174B3998CAE00D53F94339F2716
                5035FAA8082785C9F8BC261A55873420E2396038C305FD7C7B3404ED4015DB1C
                B5117668883F748D9CA13DD56735BC4BD3171A70A7B7146D71FBD0C377FA6F4E
                354B1B790E1B916EBD065C63B9A1F93CB180AAC47963FBF96C5F143A2BE1724D
                3C6A427622D35E1195E1FB2814CD096E688EB4828863FCDD27D106DFF485AA41
                14A2F1AC9B6342F62D31292AC540711CB21D99E0ED9003CFF43D2459AD47ACB1
                1CC23497B7CCE7890554A9D66BF28ABD0C50E2A18B07D79AC939B6E19BF116DC
                3D97894FB8A6188A36C0DDDA60DC6BE5E1C1E56A3C9EEAC4745F01464F7AE10C
                5B0BA70F2861FA5301C9EDC0648D0FA6EA4350EE638C00E65B38ACB234793E4F
                2CA08A325A65196BB40A75A1D6F8E73D11FE757F00CF1E8C6224DB1957B21DF1
                455B347A539DF0F84A25BEBD528399DE2C5CAF0AC170AA03CE466EC3E98FD6A1
                2E78E76CCEB7BD31F876E0184EB10C10A0BEFCA9BBDA3B5AF379620195959595
                44B2BD46A530CAEE979FEE76E2E71911D12004DE4C5C2FF7C140E24E94BB29E1
                6AD67EDCAE0FC764251B17D3F6A13D441B15FBD7A2D0460E69D6EBF0F3743F1E
                9E8BC6839E44E439A9FFC2B5514BB1B0B0909ECF130BA8343535179A9B9BBF5B
                C6B69C9CEECBC58F537578325E8B13B6AB3156E08A930EF2286419A3C25511AD
                FE1A68F565A2DA6503F277AF42CE4E1964EF94C5314B793C19AB22066271ADDC
                0FFC3D8A374C4D4DD792DA8B3827341861B95B1821594C4650A6F2CB06A84C4C
                4C9626381BF3BB78F678D0C5C177A395C8B5DD808E48631CB7DE80AB1D99684F
                3F8C44AB8D38A22B8B506D1984E8C8816BB80C7CA3E528F6D0C3E391D3F8A63B
                0E8290ED609B29A5929A7F6190159CA9CA084C5766F8A76E66F81E5778B50105
                058537B69BEB6C4DF5D9F6FC6C9C0DAE9F49419EB3260A3E5440BEBB3E1E4ED4
                E3C92D21662E14E2BAE0082E17B8A32BD905411A2B10A3BB0CF5514E18AF8D27
                5D61861827E5E77A465BB4D7AD5BF72635D07F83C3E89D0A65B0F8F20CAFC4F7
                C50D90B590E8CDC04463665AF5DED18EA60894721C50CDF54669F84788D49145
                0BD7094FBF10E2F9740B9EDDA9C7F7175231D3148AA9DA082458AC43A4FE3BE8
                3A958C9341B64872D6C7C73E7AF04EDC7CC5C2651593D496245AD431E1CF708F
                5FC3708D5BF5AB81176089C83433BDB41A1B41519BCBF3D64B5128AA75446F13
                07FD55F168AB484469A41DCEF29CF0EC761D9EDDACC64FE38578288AC5B42010
                336DF1C8DBAF0ABE9B3E46CE9F84A8280C3951BBE1C95A8BA4EA1D084C53FAB7
                F391D542F3836F1B129634653A1D799BB2190BED589B561FAFDADD5E72D60DBD
                637C4C7C5582E13B09A819F4444C9101DC62E51196A183CAD660D484EDC2A38B
                59F87134178FFA13F0655330A61BC371AB3E1249369BD0D8C503B7D47436C737
                59094975BAA818DE8B86CB2EC86832052B591E0EC1B23D4C43A93584BD881A78
                33284DBDB171D81F63338504CC87E87A083A2702D1FEB90FCE5C3D04C1882B4A
                06764178291225F1B618C973C3FDD670CC08D8B85BE38B2FDB62D1CDB3432ADB
                0C3D57537F976385FC5E13E49D334476D736E4F598A2E8BC15624F6B60D7E1B7
                6A095B8A1A9066A72B7FDD7135185517C9BC274E9B463DD034E286EA8B8E281D
                DC831C913132BA0C70BADF0DC5555EA8F037C634B91FD3C208028FC31D412452
                EC36A3BC3604CD974308F8B79CF4B3BA486DFF00C75BB590D4A281E496AD4816
                EA62B7DF92AF087BB63396F8242BFCD0F2D96114F49820F79CF1ACDBCC2E3D92
                AC8334927CAC4513B9DD96A81CF44161FB214405EA20DF591D4DE1E6A4CD76E0
                18193CDEEE4A38D5E9873AF2250B4456B339492D5B70F48C3A784235F09A5410
                2F50466C8312F8673460ED27F51361AFA006A43D13DEFF8A53B0159145CA88AE
                5001B74E0D7135AA24491DD99D56281F60A17A3000198D1F222A6F1BA62E9540
                48E6C0D17D9AE0EE6522C94907E9DE7AF04D50414A8D3DAA06D828EDF5445ADB
                7644556F4668F17A8414CBC32FE7AFF03A2E8703712BA9811F087BF60B2C5AAD
                20B9729797ACEB5E3FD92CBB40994EFBA01593FE891FDC3A5AE8F8F468A113A2
                73772228431319750E286E75C7B1131638472EDF10F90D683CEA88139126080E
                5706BFCC129C1C3D3847CA2328C910DCFC0F11936DF3D4338679DB92253565EE
                21D9BDDD45F284BEBD84A7CC7B0B490F3216CFB5E102A23788689F2E21A2CE64
                0EC5AB7242B334FF71B2D50523773270ED7E1E066FC4A2ACEB00E20A8DE1C5DD
                08B798F5A443B6224BB00B6DA387219A0CC0A93E3B0467A8C0DA67F9DF8D1C97
                46935A1426F3A22E6D413A9416ECF6277770DE20A28B9A59EC97CC0CCA6FB6C7
                C8BD545C99E163F04E38FA6EB1D17F2B1003B7C3209AF245DB8407DA27BCD03C
                7610F523E4C20E5922AF771B0AC83DA2B73DAFD3022CFE7A183949F9909AF4E5
                E8BC5920C6140B7E5DB343C93F8579AF7D8C05E1D83EB48CBB10903B5A3F7785
                60D411E5172D5134608C13E70D496B1920BB5B0F19E4C2A6B66B93CBA705BE50
                033CC116240AB4105FA90D3337C9315293BE3DEDFBD73220458748F7A42FCA86
                77A078C804850458D06788DC1E7D648B08B0530729B31DF202D8B805F1F5EA88
                A96522AA4A059C722584972922AE520B66EE920F494D7A04F4985FCB80B4F751
                05B45CF598056611607AA736523BB47E059ED98A440A6C50436CAD2A3EA6C00A
                65449C524468A902828B37817D7223FC0BD68353BA05661E924F484D6A6031D1
                6B19903C18B37E90C5DF84800C52306F33C28B95C0394520258A082F5504A752
                0911A75F004B36C13787CC82B4B5F04C598303BC77E1F8F14AD8862E87D5E125
                D8EE2AD9456AD223782D03B39790485A6F8F8C828DEFBB7E7BFDE4B26DD9EF74
                D8B2578EEF095831B1C777C5BD3D7ECB60EDFB1676B196C2D27B09CCDDA5FF66
                EA26756DC741C96B262E125D86FB25F2F5EC2442E4D517AB925ACB892488E8CB
                8933C582DF1635412F0C6D173AAFE75A7319119D5EF473AE24A23F67BF17DD93
                25A2FFA7CF2E25A2B79F9E3D85D3BAE24CB1E0E545136822354345BF0C2D3627
                6A704E7331FD4B9FA3A23973E059385D624CB1E0D56B2EF97FD54BEB372697F1
                1FA84DD17BBF233D730000000049454E44AE426082}
            end
            object img_Item_Room_8: TImage
              Left = 151
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                20744558745469746C65004944453B546F6F6C733B437573746F6D697A3B4465
                7369676E3BAA5D29920000097A494441545847C5560B548EE916FE870845354A
                6E699AC8A1316E611C7722A4C27227F752462E29A1726D528A14452A738AAE23
                4A4AF7BFBFD245BA21C5A9E492D205C5184C3CB3F737FDD6CFB8CC39EBAC75F6
                5ACFFABEEF7DF7BBF7B3F7FBEEFD7E2200FF57FCC772FC74C27B20F9AA156D64
                208CBDD30B4A107907C5132ED1F0DF13A9D10F21F20E6443F1FCCADF6D097204
                79424719B427F0B840C6EBD445D1910082FF05FAFCB2C81A6ED70A7EE7315932
                7213F48DBA1CF40EDFE9E91F9D4D4EE01510D372D8F75C8E934790E354C3F93D
                48A703EBB1BEDBF1B322379FB3F4FA79119CBBFA44441EF48EA876F38980CBB1
                F06A67CFE0F3767BBCF4688EC908E49C3C4E4FF60AB8509E98751D65F7EBF0E4
                550B1EBFFC1DA5F71E213EA308EEBE91B59B77B82D255DC5D6755F918E488A4F
                8940608A9145CC1AABFDA8697E8EFB8D4DB85C741B9EFEE75EDB3B9FDC377692
                6167D269BFCCDCE188BDB32F2C6D0EC266F7515C48C8C6BDDAA7A86E68465DD3
                0B5AD78CA0C894379BB6BB3B90BE3281B7A9EDA708C8A6B64DDF01A314A7CD5E
                1F6BB9D51537CB1FE066C543DCAD7D0CFFD078D8ED3FE14B3AC25EEB1BAD1AA3
                3B646C9FD1134D86CF5B61137C2E360377AA1B514E19A978508F5A2212416396
                D6CE1EA4FF3581490899901521EA56484F715B2D9DA15D0CE76F4A76F709C5AD
                CA1A641596A3B4FC219C3CCE60F5863D06A4C3C6A467A413416DCE12EBEC0449
                3E11AE4171D93DE41697A3A2E631CEC56762A585FD11D25122C87D48406EC9BA
                DD61FBDC832E8E9B3C8BD32B3D70ED468C9DA5B5D47C4F4BFDF3DF9071F5360A
                6EDEC5F9F82CFCB8ED109F263E6052C24C4279D2CCE5FBDDBC83915D540149DE
                2DA4E6942239AB04A5771FC17CE34F5CF43D090A04E160B642D47EF1DA5DD53E
                8131D8E9E417376CE44466C96524AFDD7FA8FA3AEB832DCD2D6F914E0633F26F
                A3B8B40A16366E3534CF86A495C10454A69A98E5455ECA84F8CA9F8E1332AF23
                4E528CF8F462989A39328141040D026F076F23AF17C92F5865FFAAEED79738E2
                7F1E9BECBD12C64D99D3BBDF403DF5C5668E11A117D2F0F4750B2457CA9076E5
                266EDDA9C1DACDAEAF699D6CB63AE81B2E59B470A56D4B0A459D9475831C1721
                26B51051495771F6520E366C3B885D2EA7E078C01FEBAD9D8ED11A2E532621EA
                30D7D4EEE1FDC74D82F1E028316CF79E80F56E6F845F4C4753CB1BDCA60325CE
                2D1548E497DCC1F2F5FB6A691D9F6CDE868EE3F417CCB3B2757A25CEBE8688B8
                5C4427E723565C88E89402B29185437ED1A878D8881764AB8982394F6762D95A
                3B1F5AAB4A10C91B2DDAF24B5452164ACA6B8413FFA8F9059A7E7F8327A47CFB
                4103455E8694EC9B48A773904235BED5FE48DDB7DAFDB5D840FF41E317985B39
                BECAC82B4524451A122D81C1ECB53030598769466658BC7A070223C5C823E211
                71D9F00F4F4541D97D989A3BF096701644ED26CD5C65B0DACA0955358DC82A28
                4726394ABF724B70CC91B373DED344DACB6BA577101E198B28F725B5051E231A
                D25D7F782BF9C583CA2D07A1172F63A6C912B469DB7E1FD9ED47186E6A6E8FAB
                E43C2C360B27C39211461959B47A1B54D4754ED27C3726C07BD8D1608E65A0DD
                5E6FAAFB6AE4DFA8124848D39E59700B8919C5C8B85282D48C1C14FCBC020D39
                EE78559F83978F325171691FA2FC9C30DD78113B77247BBC3D2A04ED852B6C11
                4ECE7D4393101273190B57D942494DFB679AE30CF241164EB15C0F0D1D9529B3
                CC0E2F33DFD512149E80C2924A94DFABC3D5EB15884DCE16224F49CB46AE9F29
                9ACBC2D1D2908097559E7851EE82A65BA71061339A9DEF265B42A724709FE8A6
                3FD3F4E49A2D2E427616ACB4815257ED7FD1B83681AB8DAB47108104A1D3C871
                73C74F9E6516A36F6459A76F6C8929B32CEA2D36EE6B0C080C479EFF72349586
                E3F5C3303C2FB4C2F30286251A73EDE13655F319ADE73AE7A6C4596570841ADF
                E9CDF41B33D5144AAADA01F42DEB5CE80352E10F5EC4ECD9481702A7B1BB6EDF
                5E43E39CA737B3F3577783D19C6B86E69CB568CA5983675737E3B2DB0C6C9D38
                E879EF9E1ABAA4CF970FDBE106C5413109DE6BAE7F75C2BBCB49A5FB007AB48A
                5E67D6154848BB1B13511CD447A177D68111E2A737C3F0DB9D403C49374553DA
                323C495B8AA6AC1F517CDC008E13FA61B5D12C2C9ABDACA4AB6A0F7624CD826C
                A7E492659BD2B1F78509141DD213BD7D59C99FACD061A896628F0C27BDD42725
                6178F1EF0034262E4463C2023424CEC713C93A14784EC1F6D19A5835631A9C77
                3A60ABF51E18CEB190A8A8F6E84DEBA5246483FAAB63A930817C57BEF2FF743E
                5853A1A764AF5EEAE31B61F8B5EC24EA638C517FC118755146789CBC1AF96E63
                B14D4F03CB268F87DDFA8D38E0EC85B3D1A9D84D9D6EC6DC0DA94A2AEA7DC8CE
                BB76ADD64B26DD9F10E919E8384843A1578AE37071C3B5503C2F398EBAC8E9A8
                8D30406DF83434C49B22F7A751B019AEF9DA64F860386CB082D37E0F1CF33F07
                BF9064EA8045703D1A027D93F5E22ECADD34C99EEC9DF14979E7FCBBDE0ABD12
                760C13D71787E059D131D4044F44CD9909A8393D01F51797207BF730380CE92E
                D1E8DA75ACE1F8A9952B97AEA3C69444FF0A8908A02EE747E03BC0C533982AC8
                4CDC5949ED1BB2FB45129C7679DD5E9D7A5DDC3A24ADAE2804CDF99EB87F6A2C
                610CE19F78746E0132777C0FFBC1DDD3D43BC8711351EBDC59E5DB91A38D33AD
                6C5D119756482452713234192782937181EE83ED74A74C9CBE26AD8BB21A6F07
                5F3C1F3D03D2E8BB8498E99CA88CA7C6927718F74E8CC0BDE37AB8EBA387DAB3
                73916133003B06759374EF20C769E55212AA44415145536FCC3CB1959D1B6253
                8BE01B9C049FD389381A94882822B1798727C64C59EA47BA5CD2D2FF80F78407
                784235C454E75143F65154790D250C4195E710DA7763A46FD1C176DD6E128A5C
                369D1C0D3F153A29AA7C3374F49CB4F55B5D84C8BD89805760BCF08C151760E2
                4CF33AD2E31EF097E6C3C2033CA11AB8B0EF9DAA3033541ED245A5BB2E1E061B
                42BC411BB6035525DDE485B473E44214ADE52ACD9E62470565ADC1A34CD2AC1D
                0ED3355C08EF338902A293F230F8873955A4F359026C44C9525BC539D26202F2
                B7F74585EF54442EEA039B7F7CDCB914FCDD3A2E90F87E84B1C4D2FA0039CEC5
                D9B82CCC5FBE0D03864C73A5F94F6E010B0FF2E5A166AEA5E2B24DA76B956DBF
                AFAB2DB4947DD5E5DFEDB9B0787BBFAEA20FC1E3ADF38A9D149435070E9BEE4B
                515773E4ADCE397AE93FE447850D080D88C057292F60C8FEBB7D94B98CF03CEB
                B13EAFEBDE0A8E5CEAFCB336A42438123EE10C7EFFE24219F95FD8101465F1DF
                C8DFB42112FD01510E806A1B8077730000000049454E44AE426082}
            end
            object img_Game_Room_8: TImage
              Left = 43
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                1974455874536F6674776172650041646F626520496D616765526561647971C9
                653C00000011744558745469746C650054696D653B436C6F636B3BA59641FE00
                000ADF494441545847955707545557167D6926D62466223A4613C782C642442C
                58965811A529A08882A22616149510D11835111393650315512C51B1102B2A08
                FF8B14F9A22020F2A517691F3EF0814FEFEE39E702C6958C6B66EE5A7BDD77DB
                D9FB9E73EE7DEF49597B7749D9BFFD24A97E3F2EA9CE9EF88FA0F2563BDE6EC7
                3B6F008F89B97FB7E3D356130FF365FDB293A6516101CD252AA9A5B2EC6FA0D2
                41FC4EC8EE1DBDB27D8ED8E79D3EE69F7FC63BBEE08CB78A8CA1E0B4B72AEFB4
                777CCE69AF5B69C70E2D0BF8C14D87E6BF4B10625A2A3452F35FD054942765FE
                BC8386A9080165C5528B96485F0315411C7F70EFD0DC93472FABCEF94013740B
                3589F1A87F918146551EC838D5B9A8CB4E47F5B3589406FAA38044657B7BFE11
                B967D797B4FE3D8210D25C5E22099495484DB4E1F4DDDBA99B0A2B1103A4CCB3
                8F2E7709577BAE5CD623DBDBE348FE99E38DDAC70A349514A1495D80FACC64D4
                2444A33A2602559172820CD5D161D4F708F519CFD15890838A470F907FF25863
                AAE77EAF9DD6F33F227B1C9EB7D87EB3A6983C5E28A5EEDAC65C9250C2AA1854
                C4AE653BB6F6CBF63AF4ACF8CE0D3416E6A3312F0B35B10AA41C3E08F9B215B8
                3071064E8D180F3228EA0B13A743E6E088E443FBA00DF12771612426196AFF2B
                C8F0DC9778C979DD176497C3F256139133927ED8C27C9294424A9A356A7E14E4
                D75C36F4CDF4DC97A50995A1A93017B589D182D87782114E4C9A8BCBDBF7E196
                9F0C81B218C8E37344CD6DEEE771DF71539174602FCAEF5E45756C244AE50148
                3BF05B96CF4AC7FE64BF4D84BA40526E75654E494ADEE1263515ABF8F16D67E3
                59DDD2F6EF8D2CBD178486DC0C543EBC0799FD72788F9986EB5E1711A1CCC78B
                222DAAEA1AD1D2FA12D76F87899ADB596AAD18BFEE7509C769BECCCE1EA557CF
                411B76176AF2E4F35F763F5C30469FC3214424B86E664E49526E134A3851DE4B
                DCF3A357819F2F1A5EA4A132E22E6E9898E3B4E912843E4E4352AE06F58DCD78
                F9126F048FA7E469C4FCDFCDED71DDD814EA8B275071CF1FB9674F2166C7F7C7
                89A733F3C56DDAC0BCA2B0EBDF956D769E90B66F6F4B5DFA7354D1CEE54BEC71
                C6C2018AC43C64166AD1D0D48256DAED7F03CF7BF23C070A6501CE2E7084CCD6
                0E45678FA02CF80692F6FCD4E2B76AC564E2EBD4CE2B0AEFFEFDB86D6E778A02
                2881E21450BAEFC07183E978F0248DC82BB0EBD753686E6925BCFCB36E6DAB39
                04DCD722FA5EE269623A665938E1415C0A144F327072C26C246CFB1685270F92
                174E226A937320F17521F0C910E59DA396E683E3BF7369A955C6A22CC00FBEE3
                A722F0EC4DA4AB2A905554893A726D5373EB9F20C2BFB509F1896930B5D90879
                D863DC0D8D42524E31EE9EBF8D4B8646C8F3DC43E1F0C16327A716A7F1E30610
                2FDF11C20B9D82972F73493DB45F244CE24E379C32321331CFA284CB56570AB7
                3634B7A1F10D887B968A79561B1012FE18B1F10950661688B5C9941367675BE1
                A9CB5A64BBBB22E1FB2DF05B60B586783F20B0F7A50FC21C9707E45D3E8FE20B
                C7215FB408377E3C2876FE820CB0919AFA26D4938837E1C9D314CCB15C0779E8
                633C897B8AA2620D728AAB90A3AE12EB6FB97B426E638D944D7457FCB8158136
                8B380CDD08220C5D43ED1DD2D4FE7F20DFD35DB84B111821C85F145792A14A68
                AAEA50DBD08C3A0685E375C4C42763B6F96AC8EE470972756919CDAF476E4915
                72594449251EC9A2E037691A929D9622C56D0382AC176510EF87043E9252B7FB
                8B975495DCBE8CECDDAE38AB6788C4C44CB1036184905F5A25CE3A7BA2B6A10D
                E7FC8261BDEC7BCCA398078744212696C84B34625E415935F2680D83D7A7A4E6
                E29CFE443C5F6D8B24E7E508B2B4AE22DE9E1D027ADC5B680BCD4D5FA46F5D83
                9343F591915B8AC72B1C11B1D80E320B2BDC9E69822B13A7C1F72B439C1AA28F
                639F0FC7620737146A2AB1D0713B0283E4E4F63254D636A2A8AC162A4D0D0A34
                D524BC1A564BB70A4F9E193E1ECA15D6507EB30801669620DE4F089C88528FBB
                9656559CA1A914A3F3FA9391969A83BC926A04873D842CFC21E4847BE1510261
                8A68443E8A86FB3E1F982F7285AD8333C53E5C84A9A8A20645E535282CAB818A
                C0221859D985F0359882670E1678BAD402378D4DAB89F71FAF04F8CF354FCFF3
                F140CA46475C9D361B89E1D1E4BEB6C52A061963C30C75452DD4DA3A146B6B31
                CDC41E5E3E6790989A8D62EE6F47C75C165240488A8AC38D9973F074F13CC4D8
                9AE10F23E34CE27DE581EE9767980427EFFD09299B57E0BEDD52841F3A817C41
                4E3B798D984998B8A4B20EA504DB153B8547B82D2084D5B50929AF45A1400D22
                8F9C4298DD62C4DB1823D29AAE77432319F17E4C1039D0C5DB70EA36C59A3594
                03EB90B0F11B5C5DB094764F3B10E46DBB2AAE682361620D83327D91E30F087F
                188D327A167DEDE325249285F2BA420A8BBFAD23E2BE7640ECFC190836998B5F
                468EE5375177823886EF3B0E1CAA776DE6DCD62C773724393990BB4CA00C8914
                3B6001AFEF9A63CD8465D5F5B0A1531011158D727A167D2CA45D4C9B376A914C
                F9737B8EA9887F8CE9545C9A60D43AA3579F11C4CB2F257113B21B3E3A6D3045
                1EEDB40609F6E64870598F6B660B919F5F4CF1AEC5FC256E2825E20E7226ACA8
                A91719FE800454D434A09CC14208968BBF23B1F5285495C2DF7A099EAEFF1AD1
                A653106C341947478EBB4F7C1D092804F075D865E3C02F8DFD26CF6A7DEEEC28
                8E4A84BD3D82D7BBA2B8BCFA95DBCB05798320D4D2919B6FB7050A3A11DA5A6A
                539F10D2EE8D52121EE24202ED49C0E2B97838CB10E7474F6C5DF5D94053E263
                F78B6B980BAB60353D3D861BF8DEB5982F9225F5DB6F20B7B2867C0389509743
                534D02DA4998AC922E1C0B5B571210239E8508028F9796542074F35684D8D820
                79ED123C9A350E570DC6E3B7417A9789A717E1CFD7F19911E3B962359D0774EE
                DACF6B9841FC7D4B4BC4984D45FA96B5620701B6CB90762F9C04D40B92CABA06
                71E3992D7481223A06557443729B2FA28CD048042D5D49EBEC904AB75ED47403
                F81B8C81C740BD84BE9D3A0F249EAECC7762D068E695A453430DB862359C91DD
                66F6D4F9CA6B88BE4A6E3207D1269390B2DE014A5727049A5A40B66A1D9E9DBF
                84826749D0A84B504DA4E121A15029939178C10F216B9D114C1E546E5A8DE4AF
                17E2A1913E6E8E1E8DC30346154EEEFEC958B2DF83203EC9BC07E85145859568
                E5FEFCC82278B0C7BC8F7B8F3FFC2FBD8C6B13A640317D2CE2AD8D91E9B606CA
                CDABA170588260CBF9B833D78C4ECB5C04CCB3807CBE95E857D211CEF8762562
                CDA72172B21E2E0E1B8503FD8667CDECF1E924B2CBDF8322F1CA6F5D948EF6E7
                8340E51829D106DF90B441D7B9D9910FDD077DD075F09EBE432FF8E88E69BD33
                6E0C1453F5C5394E5E65830C9795C8DAB616393B9D9145C232E80A7FEEB800B1
                14B6C84923E1FFD508787F31BC7557EFC157BEE8D47918D9637211F772FF0B12
                E3705FFE6FA1E2454AB4815709572480DF11AF3CC1B1EA65F661AF593FF71972
                FFD8E723E0AB3B12B7478F847CEC4884198E8262D228844DE0F608DCD11B8EF3
                83BEC491CF86618FCEE05093EE9F1AD3FA3E047EEF0BB7B3FD0E011EBD875217
                15565211E02755DCE90027AA10C189C9AA396EBD0DBB7C34D6F993FEDBDD7506
                85FFAA3324ED406FDD328FDEBAD8AFA35BCEEDDDBD06466CE8D97FD7B8CE1F4E
                A0F9FF24F0AEDF2788BFA20EE20E1CEA3584BAA9B0124F015DC94347573C7BE8
                305EFDA6B10136C43BE177786F423F02FFEDF0B71DD7FCD3C1BBE5170C9FF157
                C44CF426FC3FA5C323EC4AF60A13F0371D5FA75C739BFB799CE7F1FCFFA148D2
                BF01640A1D84694D0E890000000049454E44AE426082}
            end
            object lb_Game_8: TLabel
              Left = 37
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #45824#44592#51473
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Team_8: TLabel
              Left = 91
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #54016#51204
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Item_8: TLabel
              Left = 145
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #50500#53596#51204
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btn_Room_8: TAdvGlassButton
              Tag = 8
              Left = 304
              Top = 11
              Width = 91
              Height = 94
              Cursor = crHandPoint
              BackColor = clNavy
              Caption = 'ENTER'
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
              OnClick = ClickEnterRoomButton
            end
          end
          object pnRoom_5: TAdvSmoothPanel
            Left = 14
            Top = 415
            Width = 416
            Height = 128
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
            Fill.Color = 7422746
            Fill.ColorTo = 9262113
            Fill.ColorMirror = 9262113
            Fill.ColorMirrorTo = 9262113
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtVertical
            Fill.BorderColor = 14922381
            Fill.Rounding = 10
            Fill.ShadowColor = clBlack
            Fill.ShadowOffset = 10
            Fill.Glow = gmNone
            Version = '1.5.0.0'
            TabOrder = 14
            TMSStyle = 4
            object lb_Room_5_NumTitle: TLabel
              Left = 16
              Top = 14
              Width = 26
              Height = 18
              Caption = 'No.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Room_5_Number: TLabel
              Left = 48
              Top = 14
              Width = 10
              Height = 18
              Caption = '5'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Title_Room_5: TLabel
              Left = 80
              Top = 14
              Width = 209
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #51068#51060#49340#49324#50724#50977#52832#54036#44396#49901#51068#51060#49340
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_PlayerCount_Room_5: TLabel
              Left = 218
              Top = 41
              Width = 54
              Height = 45
              Caption = '6/6'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -37
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object img_Team_Room_5: TImage
              Left = 97
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                1C744558745469746C65005465616D3B50656F706C653B47726F75703B557365
                72937B6049000009D8494441545847C595775494571AC6C7925034AB820931AB
                462C481B502054294A114491629080489391367418096D181C507A57AAD2CBC0
                4815180129418D4824A0706CD185644D34AB89D9C41CD7CDB3F712D964D03FCC
                FE91BDE73C87F35EBEF7FD3DDF77EFFB0E03C0FF55AFDCFC33F5CACD3F530C2E
                97FB923E4DD45F7689A7EF7481AB9B3314A733D41FAD7DBFEF8816CE4568DE3A
                1BBAB5B08DADAE3CEFF9D7CA11FAA98971A85EDA188ED77DFB42A2C9CDF1321F
                DC688AC5D7A3CD787CF3133CBAD18F2F4405B898E3064180D693325705CD761F
                25461B4BF10FE5CCE7890554A208CD23E39561F8FE662FC62B43F168B21B5F8F
                34E0764B32068F3BA125D408352C4D64DAAC1174B3998CAE00D53F94339F2716
                5035FAA8082785C9F8BC261A55873420E2396038C305FD7C7B3404ED4015DB1C
                B5117668883F748D9CA13DD56735BC4BD3171A70A7B7146D71FBD0C377FA6F4E
                354B1B790E1B916EBD065C63B9A1F93CB180AAC47963FBF96C5F143A2BE1724D
                3C6A427622D35E1195E1FB2814CD096E688EB4828863FCDD27D106DFF485AA41
                14A2F1AC9B6342F62D31292AC540711CB21D99E0ED9003CFF43D2459AD47ACB1
                1CC23497B7CCE7890554A9D66BF28ABD0C50E2A18B07D79AC939B6E19BF116DC
                3D97894FB8A6188A36C0DDDA60DC6BE5E1C1E56A3C9EEAC4745F01464F7AE10C
                5B0BA70F2861FA5301C9EDC0648D0FA6EA4350EE638C00E65B38ACB234793E4F
                2CA08A325A65196BB40A75A1D6F8E73D11FE757F00CF1E8C6224DB1957B21DF1
                455B347A539DF0F84A25BEBD528399DE2C5CAF0AC170AA03CE466EC3E98FD6A1
                2E78E76CCEB7BD31F876E0184EB10C10A0BEFCA9BBDA3B5AF379620195959595
                44B2BD46A530CAEE979FEE76E2E71911D12004DE4C5C2FF7C140E24E94BB29E1
                6AD67EDCAE0FC764251B17D3F6A13D441B15FBD7A2D0460E69D6EBF0F3743F1E
                9E8BC6839E44E439A9FFC2B5514BB1B0B0909ECF130BA8343535179A9B9BBF5B
                C6B69C9CEECBC58F537578325E8B13B6AB3156E08A930EF2286419A3C25511AD
                FE1A68F565A2DA6503F277AF42CE4E1964EF94C5314B793C19AB22066271ADDC
                0FFC3D8A374C4D4DD792DA8B3827341861B95B1821594C4650A6F2CB06A84C4C
                4C9626381BF3BB78F678D0C5C177A395C8B5DD808E48631CB7DE80AB1D99684F
                3F8C44AB8D38A22B8B506D1984E8C8816BB80C7CA3E528F6D0C3E391D3F8A63B
                0E8290ED609B29A5929A7F6190159CA9CA084C5766F8A76E66F81E5778B50105
                058537B69BEB6C4DF5D9F6FC6C9C0DAE9F49419EB3260A3E5440BEBB3E1E4ED4
                E3C92D21662E14E2BAE0082E17B8A32BD905411A2B10A3BB0CF5514E18AF8D27
                5D61861827E5E77A465BB4D7AD5BF72635D07F83C3E89D0A65B0F8F20CAFC4F7
                C50D90B590E8CDC04463665AF5DED18EA60894721C50CDF54669F84788D49145
                0BD7094FBF10E2F9740B9EDDA9C7F7175231D3148AA9DA082458AC43A4FE3BE8
                3A958C9341B64872D6C7C73E7AF04EDC7CC5C2651593D496245AD431E1CF708F
                5FC3708D5BF5AB81176089C83433BDB41A1B41519BCBF3D64B5128AA75446F13
                07FD55F168AB484469A41DCEF29CF0EC761D9EDDACC64FE38578288AC5B42010
                336DF1C8DBAF0ABE9B3E46CE9F84A8280C3951BBE1C95A8BA4EA1D084C53FAB7
                F391D542F3836F1B129634653A1D799BB2190BED589B561FAFDADD5E72D60DBD
                637C4C7C5582E13B09A819F4444C9101DC62E51196A183CAD660D484EDC2A38B
                59F87134178FFA13F0655330A61BC371AB3E1249369BD0D8C503B7D47436C737
                59094975BAA818DE8B86CB2EC86832052B591E0EC1B23D4C43A93584BD881A78
                33284DBDB171D81F63338504CC87E87A083A2702D1FEB90FCE5C3D04C1882B4A
                06764178291225F1B618C973C3FDD670CC08D8B85BE38B2FDB62D1CDB3432ADB
                0C3D57537F976385FC5E13E49D334476D736E4F598A2E8BC15624F6B60D7E1B7
                6A095B8A1A9066A72B7FDD7135185517C9BC274E9B463DD034E286EA8B8E281D
                DC831C913132BA0C70BADF0DC5555EA8F037C634B91FD3C208028FC31D412452
                EC36A3BC3604CD974308F8B79CF4B3BA486DFF00C75BB590D4A281E496AD4816
                EA62B7DF92AF087BB63396F8242BFCD0F2D96114F49820F79CF1ACDBCC2E3D92
                AC8334927CAC4513B9DD96A81CF44161FB214405EA20DF591D4DE1E6A4CD76E0
                18193CDEEE4A38D5E9873AF2250B4456B339492D5B70F48C3A784235F09A5410
                2F50466C8312F8673460ED27F51361AFA006A43D13DEFF8A53B0159145CA88AE
                5001B74E0D7135AA24491DD99D56281F60A17A3000198D1F222A6F1BA62E9540
                48E6C0D17D9AE0EE6522C94907E9DE7AF04D50414A8D3DAA06D828EDF5445ADB
                7644556F4668F17A8414CBC32FE7AFF03A2E8703712BA9811F087BF60B2C5AAD
                20B9729797ACEB5E3FD92CBB40994EFBA01593FE891FDC3A5AE8F8F468A113A2
                73772228431319750E286E75C7B1131638472EDF10F90D683CEA88139126080E
                5706BFCC129C1C3D3847CA2328C910DCFC0F11936DF3D4338679DB92253565EE
                21D9BDDD45F284BEBD84A7CC7B0B490F3216CFB5E102A23788689F2E21A2CE64
                0EC5AB7242B334FF71B2D50523773270ED7E1E066FC4A2ACEB00E20A8DE1C5DD
                08B798F5A443B6224BB00B6DA387219A0CC0A93E3B0467A8C0DA67F9DF8D1C97
                46935A1426F3A22E6D413A9416ECF6277770DE20A28B9A59EC97CC0CCA6FB6C7
                C8BD545C99E163F04E38FA6EB1D17F2B1003B7C3209AF245DB8407DA27BCD03C
                7610F523E4C20E5922AF771B0AC83DA2B73DAFD3022CFE7A183949F9909AF4E5
                E8BC5920C6140B7E5DB343C93F8579AF7D8C05E1D83EB48CBB10903B5A3F7785
                60D411E5172D5134608C13E70D496B1920BB5B0F19E4C2A6B66B93CBA705BE50
                033CC116240AB4105FA90D3337C9315293BE3DEDFBD73220458748F7A42FCA86
                77A078C804850458D06788DC1E7D648B08B0530729B31DF202D8B805F1F5EA88
                A96522AA4A059C722584972922AE520B66EE920F494D7A04F4985FCB80B4F751
                05B45CF598056611607AA736523BB47E059ED98A440A6C50436CAD2A3EA6C00A
                65449C524468A902828B37817D7223FC0BD68353BA05661E924F484D6A6031D1
                6B19903C18B37E90C5DF84800C52306F33C28B95C0394520258A082F5504A752
                0911A75F004B36C13787CC82B4B5F04C598303BC77E1F8F14AD8862E87D5E125
                D8EE2AD9456AD223782D03B39790485A6F8F8C828DEFBB7E7BFDE4B26DD9EF74
                D8B2578EEF095831B1C777C5BD3D7ECB60EDFB1676B196C2D27B09CCDDA5FF66
                EA26756DC741C96B262E125D86FB25F2F5EC2442E4D517AB925ACB892488E8CB
                8933C582DF1635412F0C6D173AAFE75A7319119D5EF473AE24A23F67BF17DD93
                25A2FFA7CF2E25A2B79F9E3D85D3BAE24CB1E0E545136822354345BF0C2D3627
                6A704E7331FD4B9FA3A23973E059385D624CB1E0D56B2EF97FD54BEB372697F1
                1FA84DD17BBF233D730000000049454E44AE426082}
            end
            object img_Item_Room_5: TImage
              Left = 151
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                20744558745469746C65004944453B546F6F6C733B437573746F6D697A3B4465
                7369676E3BAA5D29920000097A494441545847C5560B548EE916FE870845354A
                6E699AC8A1316E611C7722A4C27227F752462E29A1726D528A14452A738AAE23
                4A4AF7BFBFD245BA21C5A9E492D205C5184C3CB3F737FDD6CFB8CC39EBAC75F6
                5ACFFABEEF7DF7BBF7B3F7FBEEFD7E2200FF57FCC772FC74C27B20F9AA156D64
                208CBDD30B4A107907C5132ED1F0DF13A9D10F21F20E6443F1FCCADF6D097204
                79424719B427F0B840C6EBD445D1910082FF05FAFCB2C81A6ED70A7EE7315932
                7213F48DBA1CF40EDFE9E91F9D4D4EE01510D372D8F75C8E934790E354C3F93D
                48A703EBB1BEDBF1B322379FB3F4FA79119CBBFA44441EF48EA876F38980CBB1
                F06A67CFE0F3767BBCF4688EC908E49C3C4E4FF60AB8509E98751D65F7EBF0E4
                550B1EBFFC1DA5F71E213EA308EEBE91B59B77B82D255DC5D6755F918E488A4F
                8940608A9145CC1AABFDA8697E8EFB8D4DB85C741B9EFEE75EDB3B9FDC377692
                6167D269BFCCDCE188BDB32F2C6D0EC266F7515C48C8C6BDDAA7A86E68465DD3
                0B5AD78CA0C894379BB6BB3B90BE3281B7A9EDA708C8A6B64DDF01A314A7CD5E
                1F6BB9D51537CB1FE066C543DCAD7D0CFFD078D8ED3FE14B3AC25EEB1BAD1AA3
                3B646C9FD1134D86CF5B61137C2E360377AA1B514E19A978508F5A2212416396
                D6CE1EA4FF3581490899901521EA56484F715B2D9DA15D0CE76F4A76F709C5AD
                CA1A641596A3B4FC219C3CCE60F5863D06A4C3C6A467A413416DCE12EBEC0449
                3E11AE4171D93DE41697A3A2E631CEC56762A585FD11D25122C87D48406EC9BA
                DD61FBDC832E8E9B3C8BD32B3D70ED468C9DA5B5D47C4F4BFDF3DF9071F5360A
                6EDEC5F9F82CFCB8ED109F263E6052C24C4279D2CCE5FBDDBC83915D540149DE
                2DA4E6942239AB04A5771FC17CE34F5CF43D090A04E160B642D47EF1DA5DD53E
                8131D8E9E417376CE44466C96524AFDD7FA8FA3AEB832DCD2D6F914E0633F26F
                A3B8B40A16366E3534CF86A495C10454A69A98E5455ECA84F8CA9F8E1332AF23
                4E528CF8F462989A39328141040D026F076F23AF17C92F5865FFAAEED79738E2
                7F1E9BECBD12C64D99D3BBDF403DF5C5668E11A117D2F0F4750B2457CA9076E5
                266EDDA9C1DACDAEAF699D6CB63AE81B2E59B470A56D4B0A459D9475831C1721
                26B51051495771F6520E366C3B885D2EA7E078C01FEBAD9D8ED11A2E532621EA
                30D7D4EEE1FDC74D82F1E028316CF79E80F56E6F845F4C4753CB1BDCA60325CE
                2D1548E497DCC1F2F5FB6A691D9F6CDE868EE3F417CCB3B2757A25CEBE8688B8
                5C4427E723565C88E89402B29185437ED1A878D8881764AB8982394F6762D95A
                3B1F5AAB4A10C91B2DDAF24B5452164ACA6B8413FFA8F9059A7E7F8327A47CFB
                4103455E8694EC9B48A773904235BED5FE48DDB7DAFDB5D840FF41E317985B39
                BECAC82B4524451A122D81C1ECB53030598769466658BC7A070223C5C823E211
                71D9F00F4F4541D97D989A3BF096701644ED26CD5C65B0DACA0955358DC82A28
                4726394ABF724B70CC91B373DED344DACB6BA577101E198B28F725B5051E231A
                D25D7F782BF9C583CA2D07A1172F63A6C912B469DB7E1FD9ED47186E6A6E8FAB
                E43C2C360B27C39211461959B47A1B54D4754ED27C3726C07BD8D1608E65A0DD
                5E6FAAFB6AE4DFA8124848D39E59700B8919C5C8B85282D48C1C14FCBC020D39
                EE78559F83978F325171691FA2FC9C30DD78113B77247BBC3D2A04ED852B6C11
                4ECE7D4393101273190B57D942494DFB679AE30CF241164EB15C0F0D1D9529B3
                CC0E2F33DFD512149E80C2924A94DFABC3D5EB15884DCE16224F49CB46AE9F29
                9ACBC2D1D2908097559E7851EE82A65BA71061339A9DEF265B42A724709FE8A6
                3FD3F4E49A2D2E427616ACB4815257ED7FD1B83681AB8DAB47108104A1D3C871
                73C74F9E6516A36F6459A76F6C8929B32CEA2D36EE6B0C080C479EFF72349586
                E3F5C3303C2FB4C2F30286251A73EDE13655F319ADE73AE7A6C4596570841ADF
                E9CDF41B33D5144AAADA01F42DEB5CE80352E10F5EC4ECD9481702A7B1BB6EDF
                5E43E39CA737B3F3577783D19C6B86E69CB568CA5983675737E3B2DB0C6C9D38
                E879EF9E1ABAA4CF970FDBE106C5413109DE6BAE7F75C2BBCB49A5FB007AB48A
                5E67D6154848BB1B13511CD447A177D68111E2A737C3F0DB9D403C49374553DA
                323C495B8AA6AC1F517CDC008E13FA61B5D12C2C9ABDACA4AB6A0F7624CD826C
                A7E492659BD2B1F78509141DD213BD7D59C99FACD061A896628F0C27BDD42725
                6178F1EF0034262E4463C2023424CEC713C93A14784EC1F6D19A5835631A9C77
                3A60ABF51E18CEB190A8A8F6E84DEBA5246483FAAB63A930817C57BEF2FF743E
                5853A1A764AF5EEAE31B61F8B5EC24EA638C517FC118755146789CBC1AF96E63
                B14D4F03CB268F87DDFA8D38E0EC85B3D1A9D84D9D6EC6DC0DA94A2AEA7DC8CE
                BB76ADD64B26DD9F10E919E8384843A1578AE37071C3B5503C2F398EBAC8E9A8
                8D30406DF83434C49B22F7A751B019AEF9DA64F860386CB082D37E0F1CF33F07
                BF9064EA8045703D1A027D93F5E22ECADD34C99EEC9DF14979E7FCBBDE0ABD12
                760C13D71787E059D131D4044F44CD9909A8393D01F51797207BF730380CE92E
                D1E8DA75ACE1F8A9952B97AEA3C69444FF0A8908A02EE747E03BC0C533982AC8
                4CDC5949ED1BB2FB45129C7679DD5E9D7A5DDC3A24ADAE2804CDF99EB87F6A2C
                610CE19F78746E0132777C0FFBC1DDD3D43BC8711351EBDC59E5DB91A38D33AD
                6C5D119756482452713234192782937181EE83ED74A74C9CBE26AD8BB21A6F07
                5F3C1F3D03D2E8BB8498E99CA88CA7C6927718F74E8CC0BDE37AB8EBA387DAB3
                73916133003B06759374EF20C769E55212AA44415145536FCC3CB1959D1B6253
                8BE01B9C049FD389381A94882822B1798727C64C59EA47BA5CD2D2FF80F78407
                784235C454E75143F65154790D250C4195E710DA7763A46FD1C176DD6E128A5C
                369D1C0D3F153A29AA7C3374F49CB4F55B5D84C8BD89805760BCF08C151760E2
                4CF33AD2E31EF097E6C3C2033CA11AB8B0EF9DAA3033541ED245A5BB2E1E061B
                42BC411BB6035525DDE485B473E44214ADE52ACD9E62470565ADC1A34CD2AC1D
                0ED3355C08EF338902A293F230F8873955A4F359026C44C9525BC539D26202F2
                B7F74585EF54442EEA039B7F7CDCB914FCDD3A2E90F87E84B1C4D2FA0039CEC5
                D9B82CCC5FBE0D03864C73A5F94F6E010B0FF2E5A166AEA5E2B24DA76B956DBF
                AFAB2DB4947DD5E5DFEDB9B0787BBFAEA20FC1E3ADF38A9D149435070E9BEE4B
                515773E4ADCE397AE93FE447850D080D88C057292F60C8FEBB7D94B98CF03CEB
                B13EAFEBDE0A8E5CEAFCB336A42438123EE10C7EFFE24219F95FD8101465F1DF
                C8DFB42112FD01510E806A1B8077730000000049454E44AE426082}
            end
            object img_Game_Room_5: TImage
              Left = 43
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                1974455874536F6674776172650041646F626520496D616765526561647971C9
                653C00000011744558745469746C650054696D653B436C6F636B3BA59641FE00
                000ADF494441545847955707545557167D6926D62466223A4613C782C642442C
                58965811A529A08882A22616149510D11835111393650315512C51B1102B2A08
                FF8B14F9A22020F2A517691F3EF0814FEFEE39E702C6958C6B66EE5A7BDD77DB
                D9FB9E73EE7DEF49597B7749D9BFFD24A97E3F2EA9CE9EF88FA0F2563BDE6EC7
                3B6F008F89B97FB7E3D356130FF365FDB293A6516101CD252AA9A5B2EC6FA0D2
                41FC4EC8EE1DBDB27D8ED8E79D3EE69F7FC63BBEE08CB78A8CA1E0B4B72AEFB4
                777CCE69AF5B69C70E2D0BF8C14D87E6BF4B10625A2A3452F35FD054942765FE
                BC8386A9080165C5528B96485F0315411C7F70EFD0DC93472FABCEF94013740B
                3589F1A87F918146551EC838D5B9A8CB4E47F5B3589406FAA38044657B7BFE11
                B967D797B4FE3D8210D25C5E22099495484DB4E1F4DDDBA99B0A2B1103A4CCB3
                8F2E7709577BAE5CD623DBDBE348FE99E38DDAC70A349514A1495D80FACC64D4
                2444A33A2602559172820CD5D161D4F708F519CFD15890838A470F907FF25863
                AAE77EAF9DD6F33F227B1C9EB7D87EB3A6983C5E28A5EEDAC65C9250C2AA1854
                C4AE653BB6F6CBF63AF4ACF8CE0D3416E6A3312F0B35B10AA41C3E08F9B215B8
                3071064E8D180F3228EA0B13A743E6E088E443FBA00DF12771612426196AFF2B
                C8F0DC9778C979DD176497C3F256139133927ED8C27C9294424A9A356A7E14E4
                D75C36F4CDF4DC97A50995A1A93017B589D182D87782114E4C9A8BCBDBF7E196
                9F0C81B218C8E37344CD6DEEE771DF71539174602FCAEF5E45756C244AE50148
                3BF05B96CF4AC7FE64BF4D84BA40526E75654E494ADEE1263515ABF8F16D67E3
                59DDD2F6EF8D2CBD178486DC0C543EBC0799FD72788F9986EB5E1711A1CCC78B
                222DAAEA1AD1D2FA12D76F87899ADB596AAD18BFEE7509C769BECCCE1EA557CF
                411B76176AF2E4F35F763F5C30469FC3214424B86E664E49526E134A3851DE4B
                DCF3A357819F2F1A5EA4A132E22E6E9898E3B4E912843E4E4352AE06F58DCD78
                F9126F048FA7E469C4FCDFCDED71DDD814EA8B275071CF1FB9674F2166C7F7C7
                89A733F3C56DDAC0BCA2B0EBDF956D769E90B66F6F4B5DFA7354D1CEE54BEC71
                C6C2018AC43C64166AD1D0D48256DAED7F03CF7BF23C070A6501CE2E7084CCD6
                0E45678FA02CF80692F6FCD4E2B76AC564E2EBD4CE2B0AEFFEFDB86D6E778A02
                2881E21450BAEFC07183E978F0248DC82BB0EBD753686E6925BCFCB36E6DAB39
                04DCD722FA5EE269623A665938E1415C0A144F327072C26C246CFB1685270F92
                174E226A937320F17521F0C910E59DA396E683E3BF7369A955C6A22CC00FBEE3
                A722F0EC4DA4AB2A905554893A726D5373EB9F20C2BFB509F1896930B5D90879
                D863DC0D8D42524E31EE9EBF8D4B8646C8F3DC43E1F0C16327A716A7F1E30610
                2FDF11C20B9D82972F73493DB45F244CE24E379C32321331CFA284CB56570AB7
                3634B7A1F10D887B968A79561B1012FE18B1F10950661688B5C9941367675BE1
                A9CB5A64BBBB22E1FB2DF05B60B586783F20B0F7A50FC21C9707E45D3E8FE20B
                C7215FB408377E3C2876FE820CB0919AFA26D4938837E1C9D314CCB15C0779E8
                633C897B8AA2620D728AAB90A3AE12EB6FB97B426E638D944D7457FCB8158136
                8B380CDD08220C5D43ED1DD2D4FE7F20DFD35DB84B111821C85F145792A14A68
                AAEA50DBD08C3A0685E375C4C42763B6F96AC8EE470972756919CDAF476E4915
                72594449251EC9A2E037691A929D9622C56D0382AC176510EF87043E9252B7FB
                8B975495DCBE8CECDDAE38AB6788C4C44CB1036184905F5A25CE3A7BA2B6A10D
                E7FC8261BDEC7BCCA398078744212696C84B34625E415935F2680D83D7A7A4E6
                E29CFE443C5F6D8B24E7E508B2B4AE22DE9E1D027ADC5B680BCD4D5FA46F5D83
                9343F591915B8AC72B1C11B1D80E320B2BDC9E69822B13A7C1F72B439C1AA28F
                639F0FC7620737146A2AB1D0713B0283E4E4F63254D636A2A8AC162A4D0D0A34
                D524BC1A564BB70A4F9E193E1ECA15D6507EB30801669620DE4F089C88528FBB
                9656559CA1A914A3F3FA9391969A83BC926A04873D842CFC21E4847BE1510261
                8A68443E8A86FB3E1F982F7285AD8333C53E5C84A9A8A20645E535282CAB818A
                C0221859D985F0359882670E1678BAD402378D4DAB89F71FAF04F8CF354FCFF3
                F140CA46475C9D361B89E1D1E4BEB6C52A061963C30C75452DD4DA3A146B6B31
                CDC41E5E3E6790989A8D62EE6F47C75C165240488A8AC38D9973F074F13CC4D8
                9AE10F23E34CE27DE581EE9767980427EFFD09299B57E0BEDD52841F3A817C41
                4E3B798D984998B8A4B20EA504DB153B8547B82D2084D5B50929AF45A1400D22
                8F9C4298DD62C4DB1823D29AAE77432319F17E4C1039D0C5DB70EA36C59A3594
                03EB90B0F11B5C5DB094764F3B10E46DBB2AAE682361620D83327D91E30F087F
                188D327A167DEDE325249285F2BA420A8BBFAD23E2BE7640ECFC190836998B5F
                468EE5375177823886EF3B0E1CAA776DE6DCD62C773724393990BB4CA00C8914
                3B6001AFEF9A63CD8465D5F5B0A1531011158D727A167D2CA45D4C9B376A914C
                F9737B8EA9887F8CE9545C9A60D43AA3579F11C4CB2F257113B21B3E3A6D3045
                1EEDB40609F6E64870598F6B660B919F5F4CF1AEC5FC256E2825E20E7226ACA8
                A91719FE800454D434A09CC14208968BBF23B1F5285495C2DF7A099EAEFF1AD1
                A653106C341947478EBB4F7C1D092804F075D865E3C02F8DFD26CF6A7DEEEC28
                8E4A84BD3D82D7BBA2B8BCFA95DBCB05798320D4D2919B6FB7050A3A11DA5A6A
                539F10D2EE8D52121EE24202ED49C0E2B97838CB10E7474F6C5DF5D94053E263
                F78B6B980BAB60353D3D861BF8DEB5982F9225F5DB6F20B7B2867C0389509743
                534D02DA4998AC922E1C0B5B571210239E8508028F9796542074F35684D8D820
                79ED123C9A350E570DC6E3B7417A9789A717E1CFD7F19911E3B962359D0774EE
                DACF6B9841FC7D4B4BC4984D45FA96B5620701B6CB90762F9C04D40B92CABA06
                71E3992D7481223A06557443729B2FA28CD048042D5D49EBEC904AB75ED47403
                F81B8C81C740BD84BE9D3A0F249EAECC7762D068E695A453430DB862359C91DD
                66F6D4F9CA6B88BE4A6E3207D1269390B2DE014A5727049A5A40B66A1D9E9DBF
                84826749D0A84B504DA4E121A15029939178C10F216B9D114C1E546E5A8DE4AF
                17E2A1913E6E8E1E8DC30346154EEEFEC958B2DF83203EC9BC07E85145859568
                E5FEFCC82278B0C7BC8F7B8F3FFC2FBD8C6B13A640317D2CE2AD8D91E9B606CA
                CDABA170588260CBF9B833D78C4ECB5C04CCB3807CBE95E857D211CEF8762562
                CDA72172B21E2E0E1B8503FD8667CDECF1E924B2CBDF8322F1CA6F5D948EF6E7
                8340E51829D106DF90B441D7B9D9910FDD077DD075F09EBE432FF8E88E69BD33
                6E0C1453F5C5394E5E65830C9795C8DAB616393B9D9145C232E80A7FEEB800B1
                14B6C84923E1FFD508787F31BC7557EFC157BEE8D47918D9637211F772FF0B12
                E3705FFE6FA1E2454AB4815709572480DF11AF3CC1B1EA65F661AF593FF71972
                FFD8E723E0AB3B12B7478F847CEC4884198E8262D228844DE0F608DCD11B8EF3
                83BEC491CF86618FCEE05093EE9F1AD3FA3E047EEF0BB7B3FD0E011EBD875217
                15565211E02755DCE90027AA10C189C9AA396EBD0DBB7C34D6F993FEDBDD7506
                85FFAA3324ED406FDD328FDEBAD8AFA35BCEEDDDBD06466CE8D97FD7B8CE1F4E
                A0F9FF24F0AEDF2788BFA20EE20E1CEA3584BAA9B0124F015DC94347573C7BE8
                305EFDA6B10136C43BE177786F423F02FFEDF0B71DD7FCD3C1BBE5170C9FF157
                C44CF426FC3FA5C323EC4AF60A13F0371D5FA75C739BFB799CE7F1FCFFA148D2
                BF01640A1D84694D0E890000000049454E44AE426082}
            end
            object lb_Game_5: TLabel
              Left = 37
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #45824#44592#51473
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Team_5: TLabel
              Left = 91
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #54016#51204
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Item_5: TLabel
              Left = 145
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #50500#53596#51204
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btn_Room_5: TAdvGlassButton
              Tag = 5
              Left = 304
              Top = 11
              Width = 91
              Height = 94
              Cursor = crHandPoint
              BackColor = clNavy
              Caption = 'ENTER'
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
              OnClick = ClickEnterRoomButton
            end
          end
          object pnRoom_6: TAdvSmoothPanel
            Left = 427
            Top = 415
            Width = 416
            Height = 128
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
            Fill.Color = 7422746
            Fill.ColorTo = 9262113
            Fill.ColorMirror = 9262113
            Fill.ColorMirrorTo = 9262113
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtVertical
            Fill.BorderColor = 14922381
            Fill.Rounding = 10
            Fill.ShadowColor = clBlack
            Fill.ShadowOffset = 10
            Fill.Glow = gmNone
            Version = '1.5.0.0'
            TabOrder = 15
            TMSStyle = 4
            object lb_Room_6_NumTitle: TLabel
              Left = 16
              Top = 14
              Width = 26
              Height = 18
              Caption = 'No.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Room_6_Number: TLabel
              Left = 48
              Top = 14
              Width = 10
              Height = 18
              Caption = '6'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Title_Room_6: TLabel
              Left = 80
              Top = 14
              Width = 209
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #51068#51060#49340#49324#50724#50977#52832#54036#44396#49901#51068#51060#49340
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_PlayerCount_Room_6: TLabel
              Left = 218
              Top = 41
              Width = 54
              Height = 45
              Caption = '6/6'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -37
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object img_Team_Room_6: TImage
              Left = 97
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                1C744558745469746C65005465616D3B50656F706C653B47726F75703B557365
                72937B6049000009D8494441545847C595775494571AC6C7925034AB820931AB
                462C481B502054294A114491629080489391367418096D181C507A57AAD2CBC0
                4815180129418D4824A0706CD185644D34AB89D9C41CD7CDB3F712D964D03FCC
                FE91BDE73C87F35EBEF7FD3DDF77EFFB0E03C0FF55AFDCFC33F5CACD3F530C2E
                97FB923E4DD45F7689A7EF7481AB9B3314A733D41FAD7DBFEF8816CE4568DE3A
                1BBAB5B08DADAE3CEFF9D7CA11FAA98971A85EDA188ED77DFB42A2C9CDF1321F
                DC688AC5D7A3CD787CF3133CBAD18F2F4405B898E3064180D693325705CD761F
                25461B4BF10FE5CCE7890554A208CD23E39561F8FE662FC62B43F168B21B5F8F
                34E0764B32068F3BA125D408352C4D64DAAC1174B3998CAE00D53F94339F2716
                5035FAA8082785C9F8BC261A55873420E2396038C305FD7C7B3404ED4015DB1C
                B5117668883F748D9CA13DD56735BC4BD3171A70A7B7146D71FBD0C377FA6F4E
                354B1B790E1B916EBD065C63B9A1F93CB180AAC47963FBF96C5F143A2BE1724D
                3C6A427622D35E1195E1FB2814CD096E688EB4828863FCDD27D106DFF485AA41
                14A2F1AC9B6342F62D31292AC540711CB21D99E0ED9003CFF43D2459AD47ACB1
                1CC23497B7CCE7890554A9D66BF28ABD0C50E2A18B07D79AC939B6E19BF116DC
                3D97894FB8A6188A36C0DDDA60DC6BE5E1C1E56A3C9EEAC4745F01464F7AE10C
                5B0BA70F2861FA5301C9EDC0648D0FA6EA4350EE638C00E65B38ACB234793E4F
                2CA08A325A65196BB40A75A1D6F8E73D11FE757F00CF1E8C6224DB1957B21DF1
                455B347A539DF0F84A25BEBD528399DE2C5CAF0AC170AA03CE466EC3E98FD6A1
                2E78E76CCEB7BD31F876E0184EB10C10A0BEFCA9BBDA3B5AF379620195959595
                44B2BD46A530CAEE979FEE76E2E71911D12004DE4C5C2FF7C140E24E94BB29E1
                6AD67EDCAE0FC764251B17D3F6A13D441B15FBD7A2D0460E69D6EBF0F3743F1E
                9E8BC6839E44E439A9FFC2B5514BB1B0B0909ECF130BA8343535179A9B9BBF5B
                C6B69C9CEECBC58F537578325E8B13B6AB3156E08A930EF2286419A3C25511AD
                FE1A68F565A2DA6503F277AF42CE4E1964EF94C5314B793C19AB22066271ADDC
                0FFC3D8A374C4D4DD792DA8B3827341861B95B1821594C4650A6F2CB06A84C4C
                4C9626381BF3BB78F678D0C5C177A395C8B5DD808E48631CB7DE80AB1D99684F
                3F8C44AB8D38A22B8B506D1984E8C8816BB80C7CA3E528F6D0C3E391D3F8A63B
                0E8290ED609B29A5929A7F6190159CA9CA084C5766F8A76E66F81E5778B50105
                058537B69BEB6C4DF5D9F6FC6C9C0DAE9F49419EB3260A3E5440BEBB3E1E4ED4
                E3C92D21662E14E2BAE0082E17B8A32BD905411A2B10A3BB0CF5514E18AF8D27
                5D61861827E5E77A465BB4D7AD5BF72635D07F83C3E89D0A65B0F8F20CAFC4F7
                C50D90B590E8CDC04463665AF5DED18EA60894721C50CDF54669F84788D49145
                0BD7094FBF10E2F9740B9EDDA9C7F7175231D3148AA9DA082458AC43A4FE3BE8
                3A958C9341B64872D6C7C73E7AF04EDC7CC5C2651593D496245AD431E1CF708F
                5FC3708D5BF5AB81176089C83433BDB41A1B41519BCBF3D64B5128AA75446F13
                07FD55F168AB484469A41DCEF29CF0EC761D9EDDACC64FE38578288AC5B42010
                336DF1C8DBAF0ABE9B3E46CE9F84A8280C3951BBE1C95A8BA4EA1D084C53FAB7
                F391D542F3836F1B129634653A1D799BB2190BED589B561FAFDADD5E72D60DBD
                637C4C7C5582E13B09A819F4444C9101DC62E51196A183CAD660D484EDC2A38B
                59F87134178FFA13F0655330A61BC371AB3E1249369BD0D8C503B7D47436C737
                59094975BAA818DE8B86CB2EC86832052B591E0EC1B23D4C43A93584BD881A78
                33284DBDB171D81F63338504CC87E87A083A2702D1FEB90FCE5C3D04C1882B4A
                06764178291225F1B618C973C3FDD670CC08D8B85BE38B2FDB62D1CDB3432ADB
                0C3D57537F976385FC5E13E49D334476D736E4F598A2E8BC15624F6B60D7E1B7
                6A095B8A1A9066A72B7FDD7135185517C9BC274E9B463DD034E286EA8B8E281D
                DC831C913132BA0C70BADF0DC5555EA8F037C634B91FD3C208028FC31D412452
                EC36A3BC3604CD974308F8B79CF4B3BA486DFF00C75BB590D4A281E496AD4816
                EA62B7DF92AF087BB63396F8242BFCD0F2D96114F49820F79CF1ACDBCC2E3D92
                AC8334927CAC4513B9DD96A81CF44161FB214405EA20DF591D4DE1E6A4CD76E0
                18193CDEEE4A38D5E9873AF2250B4456B339492D5B70F48C3A784235F09A5410
                2F50466C8312F8673460ED27F51361AFA006A43D13DEFF8A53B0159145CA88AE
                5001B74E0D7135AA24491DD99D56281F60A17A3000198D1F222A6F1BA62E9540
                48E6C0D17D9AE0EE6522C94907E9DE7AF04D50414A8D3DAA06D828EDF5445ADB
                7644556F4668F17A8414CBC32FE7AFF03A2E8703712BA9811F087BF60B2C5AAD
                20B9729797ACEB5E3FD92CBB40994EFBA01593FE891FDC3A5AE8F8F468A113A2
                73772228431319750E286E75C7B1131638472EDF10F90D683CEA88139126080E
                5706BFCC129C1C3D3847CA2328C910DCFC0F11936DF3D4338679DB92253565EE
                21D9BDDD45F284BEBD84A7CC7B0B490F3216CFB5E102A23788689F2E21A2CE64
                0EC5AB7242B334FF71B2D50523773270ED7E1E066FC4A2ACEB00E20A8DE1C5DD
                08B798F5A443B6224BB00B6DA387219A0CC0A93E3B0467A8C0DA67F9DF8D1C97
                46935A1426F3A22E6D413A9416ECF6277770DE20A28B9A59EC97CC0CCA6FB6C7
                C8BD545C99E163F04E38FA6EB1D17F2B1003B7C3209AF245DB8407DA27BCD03C
                7610F523E4C20E5922AF771B0AC83DA2B73DAFD3022CFE7A183949F9909AF4E5
                E8BC5920C6140B7E5DB343C93F8579AF7D8C05E1D83EB48CBB10903B5A3F7785
                60D411E5172D5134608C13E70D496B1920BB5B0F19E4C2A6B66B93CBA705BE50
                033CC116240AB4105FA90D3337C9315293BE3DEDFBD73220458748F7A42FCA86
                77A078C804850458D06788DC1E7D648B08B0530729B31DF202D8B805F1F5EA88
                A96522AA4A059C722584972922AE520B66EE920F494D7A04F4985FCB80B4F751
                05B45CF598056611607AA736523BB47E059ED98A440A6C50436CAD2A3EA6C00A
                65449C524468A902828B37817D7223FC0BD68353BA05661E924F484D6A6031D1
                6B19903C18B37E90C5DF84800C52306F33C28B95C0394520258A082F5504A752
                0911A75F004B36C13787CC82B4B5F04C598303BC77E1F8F14AD8862E87D5E125
                D8EE2AD9456AD223782D03B39790485A6F8F8C828DEFBB7E7BFDE4B26DD9EF74
                D8B2578EEF095831B1C777C5BD3D7ECB60EDFB1676B196C2D27B09CCDDA5FF66
                EA26756DC741C96B262E125D86FB25F2F5EC2442E4D517AB925ACB892488E8CB
                8933C582DF1635412F0C6D173AAFE75A7319119D5EF473AE24A23F67BF17DD93
                25A2FFA7CF2E25A2B79F9E3D85D3BAE24CB1E0E545136822354345BF0C2D3627
                6A704E7331FD4B9FA3A23973E059385D624CB1E0D56B2EF97FD54BEB372697F1
                1FA84DD17BBF233D730000000049454E44AE426082}
            end
            object img_Item_Room_6: TImage
              Left = 151
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                20744558745469746C65004944453B546F6F6C733B437573746F6D697A3B4465
                7369676E3BAA5D29920000097A494441545847C5560B548EE916FE870845354A
                6E699AC8A1316E611C7722A4C27227F752462E29A1726D528A14452A738AAE23
                4A4AF7BFBFD245BA21C5A9E492D205C5184C3CB3F737FDD6CFB8CC39EBAC75F6
                5ACFFABEEF7DF7BBF7B3F7FBEEFD7E2200FF57FCC772FC74C27B20F9AA156D64
                208CBDD30B4A107907C5132ED1F0DF13A9D10F21F20E6443F1FCCADF6D097204
                79424719B427F0B840C6EBD445D1910082FF05FAFCB2C81A6ED70A7EE7315932
                7213F48DBA1CF40EDFE9E91F9D4D4EE01510D372D8F75C8E934790E354C3F93D
                48A703EBB1BEDBF1B322379FB3F4FA79119CBBFA44441EF48EA876F38980CBB1
                F06A67CFE0F3767BBCF4688EC908E49C3C4E4FF60AB8509E98751D65F7EBF0E4
                550B1EBFFC1DA5F71E213EA308EEBE91B59B77B82D255DC5D6755F918E488A4F
                8940608A9145CC1AABFDA8697E8EFB8D4DB85C741B9EFEE75EDB3B9FDC377692
                6167D269BFCCDCE188BDB32F2C6D0EC266F7515C48C8C6BDDAA7A86E68465DD3
                0B5AD78CA0C894379BB6BB3B90BE3281B7A9EDA708C8A6B64DDF01A314A7CD5E
                1F6BB9D51537CB1FE066C543DCAD7D0CFFD078D8ED3FE14B3AC25EEB1BAD1AA3
                3B646C9FD1134D86CF5B61137C2E360377AA1B514E19A978508F5A2212416396
                D6CE1EA4FF3581490899901521EA56484F715B2D9DA15D0CE76F4A76F709C5AD
                CA1A641596A3B4FC219C3CCE60F5863D06A4C3C6A467A413416DCE12EBEC0449
                3E11AE4171D93DE41697A3A2E631CEC56762A585FD11D25122C87D48406EC9BA
                DD61FBDC832E8E9B3C8BD32B3D70ED468C9DA5B5D47C4F4BFDF3DF9071F5360A
                6EDEC5F9F82CFCB8ED109F263E6052C24C4279D2CCE5FBDDBC83915D540149DE
                2DA4E6942239AB04A5771FC17CE34F5CF43D090A04E160B642D47EF1DA5DD53E
                8131D8E9E417376CE44466C96524AFDD7FA8FA3AEB832DCD2D6F914E0633F26F
                A3B8B40A16366E3534CF86A495C10454A69A98E5455ECA84F8CA9F8E1332AF23
                4E528CF8F462989A39328141040D026F076F23AF17C92F5865FFAAEED79738E2
                7F1E9BECBD12C64D99D3BBDF403DF5C5668E11A117D2F0F4750B2457CA9076E5
                266EDDA9C1DACDAEAF699D6CB63AE81B2E59B470A56D4B0A459D9475831C1721
                26B51051495771F6520E366C3B885D2EA7E078C01FEBAD9D8ED11A2E532621EA
                30D7D4EEE1FDC74D82F1E028316CF79E80F56E6F845F4C4753CB1BDCA60325CE
                2D1548E497DCC1F2F5FB6A691D9F6CDE868EE3F417CCB3B2757A25CEBE8688B8
                5C4427E723565C88E89402B29185437ED1A878D8881764AB8982394F6762D95A
                3B1F5AAB4A10C91B2DDAF24B5452164ACA6B8413FFA8F9059A7E7F8327A47CFB
                4103455E8694EC9B48A773904235BED5FE48DDB7DAFDB5D840FF41E317985B39
                BECAC82B4524451A122D81C1ECB53030598769466658BC7A070223C5C823E211
                71D9F00F4F4541D97D989A3BF096701644ED26CD5C65B0DACA0955358DC82A28
                4726394ABF724B70CC91B373DED344DACB6BA577101E198B28F725B5051E231A
                D25D7F782BF9C583CA2D07A1172F63A6C912B469DB7E1FD9ED47186E6A6E8FAB
                E43C2C360B27C39211461959B47A1B54D4754ED27C3726C07BD8D1608E65A0DD
                5E6FAAFB6AE4DFA8124848D39E59700B8919C5C8B85282D48C1C14FCBC020D39
                EE78559F83978F325171691FA2FC9C30DD78113B77247BBC3D2A04ED852B6C11
                4ECE7D4393101273190B57D942494DFB679AE30CF241164EB15C0F0D1D9529B3
                CC0E2F33DFD512149E80C2924A94DFABC3D5EB15884DCE16224F49CB46AE9F29
                9ACBC2D1D2908097559E7851EE82A65BA71061339A9DEF265B42A724709FE8A6
                3FD3F4E49A2D2E427616ACB4815257ED7FD1B83681AB8DAB47108104A1D3C871
                73C74F9E6516A36F6459A76F6C8929B32CEA2D36EE6B0C080C479EFF72349586
                E3F5C3303C2FB4C2F30286251A73EDE13655F319ADE73AE7A6C4596570841ADF
                E9CDF41B33D5144AAADA01F42DEB5CE80352E10F5EC4ECD9481702A7B1BB6EDF
                5E43E39CA737B3F3577783D19C6B86E69CB568CA5983675737E3B2DB0C6C9D38
                E879EF9E1ABAA4CF970FDBE106C5413109DE6BAE7F75C2BBCB49A5FB007AB48A
                5E67D6154848BB1B13511CD447A177D68111E2A737C3F0DB9D403C49374553DA
                323C495B8AA6AC1F517CDC008E13FA61B5D12C2C9ABDACA4AB6A0F7624CD826C
                A7E492659BD2B1F78509141DD213BD7D59C99FACD061A896628F0C27BDD42725
                6178F1EF0034262E4463C2023424CEC713C93A14784EC1F6D19A5835631A9C77
                3A60ABF51E18CEB190A8A8F6E84DEBA5246483FAAB63A930817C57BEF2FF743E
                5853A1A764AF5EEAE31B61F8B5EC24EA638C517FC118755146789CBC1AF96E63
                B14D4F03CB268F87DDFA8D38E0EC85B3D1A9D84D9D6EC6DC0DA94A2AEA7DC8CE
                BB76ADD64B26DD9F10E919E8384843A1578AE37071C3B5503C2F398EBAC8E9A8
                8D30406DF83434C49B22F7A751B019AEF9DA64F860386CB082D37E0F1CF33F07
                BF9064EA8045703D1A027D93F5E22ECADD34C99EEC9DF14979E7FCBBDE0ABD12
                760C13D71787E059D131D4044F44CD9909A8393D01F51797207BF730380CE92E
                D1E8DA75ACE1F8A9952B97AEA3C69444FF0A8908A02EE747E03BC0C533982AC8
                4CDC5949ED1BB2FB45129C7679DD5E9D7A5DDC3A24ADAE2804CDF99EB87F6A2C
                610CE19F78746E0132777C0FFBC1DDD3D43BC8711351EBDC59E5DB91A38D33AD
                6C5D119756482452713234192782937181EE83ED74A74C9CBE26AD8BB21A6F07
                5F3C1F3D03D2E8BB8498E99CA88CA7C6927718F74E8CC0BDE37AB8EBA387DAB3
                73916133003B06759374EF20C769E55212AA44415145536FCC3CB1959D1B6253
                8BE01B9C049FD389381A94882822B1798727C64C59EA47BA5CD2D2FF80F78407
                784235C454E75143F65154790D250C4195E710DA7763A46FD1C176DD6E128A5C
                369D1C0D3F153A29AA7C3374F49CB4F55B5D84C8BD89805760BCF08C151760E2
                4CF33AD2E31EF097E6C3C2033CA11AB8B0EF9DAA3033541ED245A5BB2E1E061B
                42BC411BB6035525DDE485B473E44214ADE52ACD9E62470565ADC1A34CD2AC1D
                0ED3355C08EF338902A293F230F8873955A4F359026C44C9525BC539D26202F2
                B7F74585EF54442EEA039B7F7CDCB914FCDD3A2E90F87E84B1C4D2FA0039CEC5
                D9B82CCC5FBE0D03864C73A5F94F6E010B0FF2E5A166AEA5E2B24DA76B956DBF
                AFAB2DB4947DD5E5DFEDB9B0787BBFAEA20FC1E3ADF38A9D149435070E9BEE4B
                515773E4ADCE397AE93FE447850D080D88C057292F60C8FEBB7D94B98CF03CEB
                B13EAFEBDE0A8E5CEAFCB336A42438123EE10C7EFFE24219F95FD8101465F1DF
                C8DFB42112FD01510E806A1B8077730000000049454E44AE426082}
            end
            object img_Game_Room_6: TImage
              Left = 43
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                1974455874536F6674776172650041646F626520496D616765526561647971C9
                653C00000011744558745469746C650054696D653B436C6F636B3BA59641FE00
                000ADF494441545847955707545557167D6926D62466223A4613C782C642442C
                58965811A529A08882A22616149510D11835111393650315512C51B1102B2A08
                FF8B14F9A22020F2A517691F3EF0814FEFEE39E702C6958C6B66EE5A7BDD77DB
                D9FB9E73EE7DEF49597B7749D9BFFD24A97E3F2EA9CE9EF88FA0F2563BDE6EC7
                3B6F008F89B97FB7E3D356130FF365FDB293A6516101CD252AA9A5B2EC6FA0D2
                41FC4EC8EE1DBDB27D8ED8E79D3EE69F7FC63BBEE08CB78A8CA1E0B4B72AEFB4
                777CCE69AF5B69C70E2D0BF8C14D87E6BF4B10625A2A3452F35FD054942765FE
                BC8386A9080165C5528B96485F0315411C7F70EFD0DC93472FABCEF94013740B
                3589F1A87F918146551EC838D5B9A8CB4E47F5B3589406FAA38044657B7BFE11
                B967D797B4FE3D8210D25C5E22099495484DB4E1F4DDDBA99B0A2B1103A4CCB3
                8F2E7709577BAE5CD623DBDBE348FE99E38DDAC70A349514A1495D80FACC64D4
                2444A33A2602559172820CD5D161D4F708F519CFD15890838A470F907FF25863
                AAE77EAF9DD6F33F227B1C9EB7D87EB3A6983C5E28A5EEDAC65C9250C2AA1854
                C4AE653BB6F6CBF63AF4ACF8CE0D3416E6A3312F0B35B10AA41C3E08F9B215B8
                3071064E8D180F3228EA0B13A743E6E088E443FBA00DF12771612426196AFF2B
                C8F0DC9778C979DD176497C3F256139133927ED8C27C9294424A9A356A7E14E4
                D75C36F4CDF4DC97A50995A1A93017B589D182D87782114E4C9A8BCBDBF7E196
                9F0C81B218C8E37344CD6DEEE771DF71539174602FCAEF5E45756C244AE50148
                3BF05B96CF4AC7FE64BF4D84BA40526E75654E494ADEE1263515ABF8F16D67E3
                59DDD2F6EF8D2CBD178486DC0C543EBC0799FD72788F9986EB5E1711A1CCC78B
                222DAAEA1AD1D2FA12D76F87899ADB596AAD18BFEE7509C769BECCCE1EA557CF
                411B76176AF2E4F35F763F5C30469FC3214424B86E664E49526E134A3851DE4B
                DCF3A357819F2F1A5EA4A132E22E6E9898E3B4E912843E4E4352AE06F58DCD78
                F9126F048FA7E469C4FCDFCDED71DDD814EA8B275071CF1FB9674F2166C7F7C7
                89A733F3C56DDAC0BCA2B0EBDF956D769E90B66F6F4B5DFA7354D1CEE54BEC71
                C6C2018AC43C64166AD1D0D48256DAED7F03CF7BF23C070A6501CE2E7084CCD6
                0E45678FA02CF80692F6FCD4E2B76AC564E2EBD4CE2B0AEFFEFDB86D6E778A02
                2881E21450BAEFC07183E978F0248DC82BB0EBD753686E6925BCFCB36E6DAB39
                04DCD722FA5EE269623A665938E1415C0A144F327072C26C246CFB1685270F92
                174E226A937320F17521F0C910E59DA396E683E3BF7369A955C6A22CC00FBEE3
                A722F0EC4DA4AB2A905554893A726D5373EB9F20C2BFB509F1896930B5D90879
                D863DC0D8D42524E31EE9EBF8D4B8646C8F3DC43E1F0C16327A716A7F1E30610
                2FDF11C20B9D82972F73493DB45F244CE24E379C32321331CFA284CB56570AB7
                3634B7A1F10D887B968A79561B1012FE18B1F10950661688B5C9941367675BE1
                A9CB5A64BBBB22E1FB2DF05B60B586783F20B0F7A50FC21C9707E45D3E8FE20B
                C7215FB408377E3C2876FE820CB0919AFA26D4938837E1C9D314CCB15C0779E8
                633C897B8AA2620D728AAB90A3AE12EB6FB97B426E638D944D7457FCB8158136
                8B380CDD08220C5D43ED1DD2D4FE7F20DFD35DB84B111821C85F145792A14A68
                AAEA50DBD08C3A0685E375C4C42763B6F96AC8EE470972756919CDAF476E4915
                72594449251EC9A2E037691A929D9622C56D0382AC176510EF87043E9252B7FB
                8B975495DCBE8CECDDAE38AB6788C4C44CB1036184905F5A25CE3A7BA2B6A10D
                E7FC8261BDEC7BCCA398078744212696C84B34625E415935F2680D83D7A7A4E6
                E29CFE443C5F6D8B24E7E508B2B4AE22DE9E1D027ADC5B680BCD4D5FA46F5D83
                9343F591915B8AC72B1C11B1D80E320B2BDC9E69822B13A7C1F72B439C1AA28F
                639F0FC7620737146A2AB1D0713B0283E4E4F63254D636A2A8AC162A4D0D0A34
                D524BC1A564BB70A4F9E193E1ECA15D6507EB30801669620DE4F089C88528FBB
                9656559CA1A914A3F3FA9391969A83BC926A04873D842CFC21E4847BE1510261
                8A68443E8A86FB3E1F982F7285AD8333C53E5C84A9A8A20645E535282CAB818A
                C0221859D985F0359882670E1678BAD402378D4DAB89F71FAF04F8CF354FCFF3
                F140CA46475C9D361B89E1D1E4BEB6C52A061963C30C75452DD4DA3A146B6B31
                CDC41E5E3E6790989A8D62EE6F47C75C165240488A8AC38D9973F074F13CC4D8
                9AE10F23E34CE27DE581EE9767980427EFFD09299B57E0BEDD52841F3A817C41
                4E3B798D984998B8A4B20EA504DB153B8547B82D2084D5B50929AF45A1400D22
                8F9C4298DD62C4DB1823D29AAE77432319F17E4C1039D0C5DB70EA36C59A3594
                03EB90B0F11B5C5DB094764F3B10E46DBB2AAE682361620D83327D91E30F087F
                188D327A167DEDE325249285F2BA420A8BBFAD23E2BE7640ECFC190836998B5F
                468EE5375177823886EF3B0E1CAA776DE6DCD62C773724393990BB4CA00C8914
                3B6001AFEF9A63CD8465D5F5B0A1531011158D727A167D2CA45D4C9B376A914C
                F9737B8EA9887F8CE9545C9A60D43AA3579F11C4CB2F257113B21B3E3A6D3045
                1EEDB40609F6E64870598F6B660B919F5F4CF1AEC5FC256E2825E20E7226ACA8
                A91719FE800454D434A09CC14208968BBF23B1F5285495C2DF7A099EAEFF1AD1
                A653106C341947478EBB4F7C1D092804F075D865E3C02F8DFD26CF6A7DEEEC28
                8E4A84BD3D82D7BBA2B8BCFA95DBCB05798320D4D2919B6FB7050A3A11DA5A6A
                539F10D2EE8D52121EE24202ED49C0E2B97838CB10E7474F6C5DF5D94053E263
                F78B6B980BAB60353D3D861BF8DEB5982F9225F5DB6F20B7B2867C0389509743
                534D02DA4998AC922E1C0B5B571210239E8508028F9796542074F35684D8D820
                79ED123C9A350E570DC6E3B7417A9789A717E1CFD7F19911E3B962359D0774EE
                DACF6B9841FC7D4B4BC4984D45FA96B5620701B6CB90762F9C04D40B92CABA06
                71E3992D7481223A06557443729B2FA28CD048042D5D49EBEC904AB75ED47403
                F81B8C81C740BD84BE9D3A0F249EAECC7762D068E695A453430DB862359C91DD
                66F6D4F9CA6B88BE4A6E3207D1269390B2DE014A5727049A5A40B66A1D9E9DBF
                84826749D0A84B504DA4E121A15029939178C10F216B9D114C1E546E5A8DE4AF
                17E2A1913E6E8E1E8DC30346154EEEFEC958B2DF83203EC9BC07E85145859568
                E5FEFCC82278B0C7BC8F7B8F3FFC2FBD8C6B13A640317D2CE2AD8D91E9B606CA
                CDABA170588260CBF9B833D78C4ECB5C04CCB3807CBE95E857D211CEF8762562
                CDA72172B21E2E0E1B8503FD8667CDECF1E924B2CBDF8322F1CA6F5D948EF6E7
                8340E51829D106DF90B441D7B9D9910FDD077DD075F09EBE432FF8E88E69BD33
                6E0C1453F5C5394E5E65830C9795C8DAB616393B9D9145C232E80A7FEEB800B1
                14B6C84923E1FFD508787F31BC7557EFC157BEE8D47918D9637211F772FF0B12
                E3705FFE6FA1E2454AB4815709572480DF11AF3CC1B1EA65F661AF593FF71972
                FFD8E723E0AB3B12B7478F847CEC4884198E8262D228844DE0F608DCD11B8EF3
                83BEC491CF86618FCEE05093EE9F1AD3FA3E047EEF0BB7B3FD0E011EBD875217
                15565211E02755DCE90027AA10C189C9AA396EBD0DBB7C34D6F993FEDBDD7506
                85FFAA3324ED406FDD328FDEBAD8AFA35BCEEDDDBD06466CE8D97FD7B8CE1F4E
                A0F9FF24F0AEDF2788BFA20EE20E1CEA3584BAA9B0124F015DC94347573C7BE8
                305EFDA6B10136C43BE177786F423F02FFEDF0B71DD7FCD3C1BBE5170C9FF157
                C44CF426FC3FA5C323EC4AF60A13F0371D5FA75C739BFB799CE7F1FCFFA148D2
                BF01640A1D84694D0E890000000049454E44AE426082}
            end
            object lb_Game_6: TLabel
              Left = 37
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #45824#44592#51473
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Team_6: TLabel
              Left = 91
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #54016#51204
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Item_6: TLabel
              Left = 145
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #50500#53596#51204
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btn_Room_6: TAdvGlassButton
              Tag = 6
              Left = 304
              Top = 11
              Width = 91
              Height = 94
              Cursor = crHandPoint
              BackColor = clNavy
              Caption = 'ENTER'
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
              OnClick = ClickEnterRoomButton
            end
          end
          object pnRoom_9: TAdvSmoothPanel
            Left = 14
            Top = 671
            Width = 416
            Height = 128
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
            Fill.Color = 7422746
            Fill.ColorTo = 9262113
            Fill.ColorMirror = 9262113
            Fill.ColorMirrorTo = 9262113
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtVertical
            Fill.BorderColor = 14922381
            Fill.Rounding = 10
            Fill.ShadowColor = clBlack
            Fill.ShadowOffset = 10
            Fill.Glow = gmNone
            Version = '1.5.0.0'
            TabOrder = 16
            TMSStyle = 4
            object lb_Room_9_NumTitle: TLabel
              Left = 16
              Top = 14
              Width = 26
              Height = 18
              Caption = 'No.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Room_9_Number: TLabel
              Left = 48
              Top = 14
              Width = 10
              Height = 18
              Caption = '9'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Title_Room_9: TLabel
              Left = 80
              Top = 14
              Width = 209
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #51068#51060#49340#49324#50724#50977#52832#54036#44396#49901#51068#51060#49340
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_PlayerCount_Room_9: TLabel
              Left = 218
              Top = 41
              Width = 54
              Height = 45
              Caption = '6/6'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -37
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object img_Team_Room_9: TImage
              Left = 97
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                1C744558745469746C65005465616D3B50656F706C653B47726F75703B557365
                72937B6049000009D8494441545847C595775494571AC6C7925034AB820931AB
                462C481B502054294A114491629080489391367418096D181C507A57AAD2CBC0
                4815180129418D4824A0706CD185644D34AB89D9C41CD7CDB3F712D964D03FCC
                FE91BDE73C87F35EBEF7FD3DDF77EFFB0E03C0FF55AFDCFC33F5CACD3F530C2E
                97FB923E4DD45F7689A7EF7481AB9B3314A733D41FAD7DBFEF8816CE4568DE3A
                1BBAB5B08DADAE3CEFF9D7CA11FAA98971A85EDA188ED77DFB42A2C9CDF1321F
                DC688AC5D7A3CD787CF3133CBAD18F2F4405B898E3064180D693325705CD761F
                25461B4BF10FE5CCE7890554A208CD23E39561F8FE662FC62B43F168B21B5F8F
                34E0764B32068F3BA125D408352C4D64DAAC1174B3998CAE00D53F94339F2716
                5035FAA8082785C9F8BC261A55873420E2396038C305FD7C7B3404ED4015DB1C
                B5117668883F748D9CA13DD56735BC4BD3171A70A7B7146D71FBD0C377FA6F4E
                354B1B790E1B916EBD065C63B9A1F93CB180AAC47963FBF96C5F143A2BE1724D
                3C6A427622D35E1195E1FB2814CD096E688EB4828863FCDD27D106DFF485AA41
                14A2F1AC9B6342F62D31292AC540711CB21D99E0ED9003CFF43D2459AD47ACB1
                1CC23497B7CCE7890554A9D66BF28ABD0C50E2A18B07D79AC939B6E19BF116DC
                3D97894FB8A6188A36C0DDDA60DC6BE5E1C1E56A3C9EEAC4745F01464F7AE10C
                5B0BA70F2861FA5301C9EDC0648D0FA6EA4350EE638C00E65B38ACB234793E4F
                2CA08A325A65196BB40A75A1D6F8E73D11FE757F00CF1E8C6224DB1957B21DF1
                455B347A539DF0F84A25BEBD528399DE2C5CAF0AC170AA03CE466EC3E98FD6A1
                2E78E76CCEB7BD31F876E0184EB10C10A0BEFCA9BBDA3B5AF379620195959595
                44B2BD46A530CAEE979FEE76E2E71911D12004DE4C5C2FF7C140E24E94BB29E1
                6AD67EDCAE0FC764251B17D3F6A13D441B15FBD7A2D0460E69D6EBF0F3743F1E
                9E8BC6839E44E439A9FFC2B5514BB1B0B0909ECF130BA8343535179A9B9BBF5B
                C6B69C9CEECBC58F537578325E8B13B6AB3156E08A930EF2286419A3C25511AD
                FE1A68F565A2DA6503F277AF42CE4E1964EF94C5314B793C19AB22066271ADDC
                0FFC3D8A374C4D4DD792DA8B3827341861B95B1821594C4650A6F2CB06A84C4C
                4C9626381BF3BB78F678D0C5C177A395C8B5DD808E48631CB7DE80AB1D99684F
                3F8C44AB8D38A22B8B506D1984E8C8816BB80C7CA3E528F6D0C3E391D3F8A63B
                0E8290ED609B29A5929A7F6190159CA9CA084C5766F8A76E66F81E5778B50105
                058537B69BEB6C4DF5D9F6FC6C9C0DAE9F49419EB3260A3E5440BEBB3E1E4ED4
                E3C92D21662E14E2BAE0082E17B8A32BD905411A2B10A3BB0CF5514E18AF8D27
                5D61861827E5E77A465BB4D7AD5BF72635D07F83C3E89D0A65B0F8F20CAFC4F7
                C50D90B590E8CDC04463665AF5DED18EA60894721C50CDF54669F84788D49145
                0BD7094FBF10E2F9740B9EDDA9C7F7175231D3148AA9DA082458AC43A4FE3BE8
                3A958C9341B64872D6C7C73E7AF04EDC7CC5C2651593D496245AD431E1CF708F
                5FC3708D5BF5AB81176089C83433BDB41A1B41519BCBF3D64B5128AA75446F13
                07FD55F168AB484469A41DCEF29CF0EC761D9EDDACC64FE38578288AC5B42010
                336DF1C8DBAF0ABE9B3E46CE9F84A8280C3951BBE1C95A8BA4EA1D084C53FAB7
                F391D542F3836F1B129634653A1D799BB2190BED589B561FAFDADD5E72D60DBD
                637C4C7C5582E13B09A819F4444C9101DC62E51196A183CAD660D484EDC2A38B
                59F87134178FFA13F0655330A61BC371AB3E1249369BD0D8C503B7D47436C737
                59094975BAA818DE8B86CB2EC86832052B591E0EC1B23D4C43A93584BD881A78
                33284DBDB171D81F63338504CC87E87A083A2702D1FEB90FCE5C3D04C1882B4A
                06764178291225F1B618C973C3FDD670CC08D8B85BE38B2FDB62D1CDB3432ADB
                0C3D57537F976385FC5E13E49D334476D736E4F598A2E8BC15624F6B60D7E1B7
                6A095B8A1A9066A72B7FDD7135185517C9BC274E9B463DD034E286EA8B8E281D
                DC831C913132BA0C70BADF0DC5555EA8F037C634B91FD3C208028FC31D412452
                EC36A3BC3604CD974308F8B79CF4B3BA486DFF00C75BB590D4A281E496AD4816
                EA62B7DF92AF087BB63396F8242BFCD0F2D96114F49820F79CF1ACDBCC2E3D92
                AC8334927CAC4513B9DD96A81CF44161FB214405EA20DF591D4DE1E6A4CD76E0
                18193CDEEE4A38D5E9873AF2250B4456B339492D5B70F48C3A784235F09A5410
                2F50466C8312F8673460ED27F51361AFA006A43D13DEFF8A53B0159145CA88AE
                5001B74E0D7135AA24491DD99D56281F60A17A3000198D1F222A6F1BA62E9540
                48E6C0D17D9AE0EE6522C94907E9DE7AF04D50414A8D3DAA06D828EDF5445ADB
                7644556F4668F17A8414CBC32FE7AFF03A2E8703712BA9811F087BF60B2C5AAD
                20B9729797ACEB5E3FD92CBB40994EFBA01593FE891FDC3A5AE8F8F468A113A2
                73772228431319750E286E75C7B1131638472EDF10F90D683CEA88139126080E
                5706BFCC129C1C3D3847CA2328C910DCFC0F11936DF3D4338679DB92253565EE
                21D9BDDD45F284BEBD84A7CC7B0B490F3216CFB5E102A23788689F2E21A2CE64
                0EC5AB7242B334FF71B2D50523773270ED7E1E066FC4A2ACEB00E20A8DE1C5DD
                08B798F5A443B6224BB00B6DA387219A0CC0A93E3B0467A8C0DA67F9DF8D1C97
                46935A1426F3A22E6D413A9416ECF6277770DE20A28B9A59EC97CC0CCA6FB6C7
                C8BD545C99E163F04E38FA6EB1D17F2B1003B7C3209AF245DB8407DA27BCD03C
                7610F523E4C20E5922AF771B0AC83DA2B73DAFD3022CFE7A183949F9909AF4E5
                E8BC5920C6140B7E5DB343C93F8579AF7D8C05E1D83EB48CBB10903B5A3F7785
                60D411E5172D5134608C13E70D496B1920BB5B0F19E4C2A6B66B93CBA705BE50
                033CC116240AB4105FA90D3337C9315293BE3DEDFBD73220458748F7A42FCA86
                77A078C804850458D06788DC1E7D648B08B0530729B31DF202D8B805F1F5EA88
                A96522AA4A059C722584972922AE520B66EE920F494D7A04F4985FCB80B4F751
                05B45CF598056611607AA736523BB47E059ED98A440A6C50436CAD2A3EA6C00A
                65449C524468A902828B37817D7223FC0BD68353BA05661E924F484D6A6031D1
                6B19903C18B37E90C5DF84800C52306F33C28B95C0394520258A082F5504A752
                0911A75F004B36C13787CC82B4B5F04C598303BC77E1F8F14AD8862E87D5E125
                D8EE2AD9456AD223782D03B39790485A6F8F8C828DEFBB7E7BFDE4B26DD9EF74
                D8B2578EEF095831B1C777C5BD3D7ECB60EDFB1676B196C2D27B09CCDDA5FF66
                EA26756DC741C96B262E125D86FB25F2F5EC2442E4D517AB925ACB892488E8CB
                8933C582DF1635412F0C6D173AAFE75A7319119D5EF473AE24A23F67BF17DD93
                25A2FFA7CF2E25A2B79F9E3D85D3BAE24CB1E0E545136822354345BF0C2D3627
                6A704E7331FD4B9FA3A23973E059385D624CB1E0D56B2EF97FD54BEB372697F1
                1FA84DD17BBF233D730000000049454E44AE426082}
            end
            object img_Item_Room_9: TImage
              Left = 151
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                20744558745469746C65004944453B546F6F6C733B437573746F6D697A3B4465
                7369676E3BAA5D29920000097A494441545847C5560B548EE916FE870845354A
                6E699AC8A1316E611C7722A4C27227F752462E29A1726D528A14452A738AAE23
                4A4AF7BFBFD245BA21C5A9E492D205C5184C3CB3F737FDD6CFB8CC39EBAC75F6
                5ACFFABEEF7DF7BBF7B3F7FBEEFD7E2200FF57FCC772FC74C27B20F9AA156D64
                208CBDD30B4A107907C5132ED1F0DF13A9D10F21F20E6443F1FCCADF6D097204
                79424719B427F0B840C6EBD445D1910082FF05FAFCB2C81A6ED70A7EE7315932
                7213F48DBA1CF40EDFE9E91F9D4D4EE01510D372D8F75C8E934790E354C3F93D
                48A703EBB1BEDBF1B322379FB3F4FA79119CBBFA44441EF48EA876F38980CBB1
                F06A67CFE0F3767BBCF4688EC908E49C3C4E4FF60AB8509E98751D65F7EBF0E4
                550B1EBFFC1DA5F71E213EA308EEBE91B59B77B82D255DC5D6755F918E488A4F
                8940608A9145CC1AABFDA8697E8EFB8D4DB85C741B9EFEE75EDB3B9FDC377692
                6167D269BFCCDCE188BDB32F2C6D0EC266F7515C48C8C6BDDAA7A86E68465DD3
                0B5AD78CA0C894379BB6BB3B90BE3281B7A9EDA708C8A6B64DDF01A314A7CD5E
                1F6BB9D51537CB1FE066C543DCAD7D0CFFD078D8ED3FE14B3AC25EEB1BAD1AA3
                3B646C9FD1134D86CF5B61137C2E360377AA1B514E19A978508F5A2212416396
                D6CE1EA4FF3581490899901521EA56484F715B2D9DA15D0CE76F4A76F709C5AD
                CA1A641596A3B4FC219C3CCE60F5863D06A4C3C6A467A413416DCE12EBEC0449
                3E11AE4171D93DE41697A3A2E631CEC56762A585FD11D25122C87D48406EC9BA
                DD61FBDC832E8E9B3C8BD32B3D70ED468C9DA5B5D47C4F4BFDF3DF9071F5360A
                6EDEC5F9F82CFCB8ED109F263E6052C24C4279D2CCE5FBDDBC83915D540149DE
                2DA4E6942239AB04A5771FC17CE34F5CF43D090A04E160B642D47EF1DA5DD53E
                8131D8E9E417376CE44466C96524AFDD7FA8FA3AEB832DCD2D6F914E0633F26F
                A3B8B40A16366E3534CF86A495C10454A69A98E5455ECA84F8CA9F8E1332AF23
                4E528CF8F462989A39328141040D026F076F23AF17C92F5865FFAAEED79738E2
                7F1E9BECBD12C64D99D3BBDF403DF5C5668E11A117D2F0F4750B2457CA9076E5
                266EDDA9C1DACDAEAF699D6CB63AE81B2E59B470A56D4B0A459D9475831C1721
                26B51051495771F6520E366C3B885D2EA7E078C01FEBAD9D8ED11A2E532621EA
                30D7D4EEE1FDC74D82F1E028316CF79E80F56E6F845F4C4753CB1BDCA60325CE
                2D1548E497DCC1F2F5FB6A691D9F6CDE868EE3F417CCB3B2757A25CEBE8688B8
                5C4427E723565C88E89402B29185437ED1A878D8881764AB8982394F6762D95A
                3B1F5AAB4A10C91B2DDAF24B5452164ACA6B8413FFA8F9059A7E7F8327A47CFB
                4103455E8694EC9B48A773904235BED5FE48DDB7DAFDB5D840FF41E317985B39
                BECAC82B4524451A122D81C1ECB53030598769466658BC7A070223C5C823E211
                71D9F00F4F4541D97D989A3BF096701644ED26CD5C65B0DACA0955358DC82A28
                4726394ABF724B70CC91B373DED344DACB6BA577101E198B28F725B5051E231A
                D25D7F782BF9C583CA2D07A1172F63A6C912B469DB7E1FD9ED47186E6A6E8FAB
                E43C2C360B27C39211461959B47A1B54D4754ED27C3726C07BD8D1608E65A0DD
                5E6FAAFB6AE4DFA8124848D39E59700B8919C5C8B85282D48C1C14FCBC020D39
                EE78559F83978F325171691FA2FC9C30DD78113B77247BBC3D2A04ED852B6C11
                4ECE7D4393101273190B57D942494DFB679AE30CF241164EB15C0F0D1D9529B3
                CC0E2F33DFD512149E80C2924A94DFABC3D5EB15884DCE16224F49CB46AE9F29
                9ACBC2D1D2908097559E7851EE82A65BA71061339A9DEF265B42A724709FE8A6
                3FD3F4E49A2D2E427616ACB4815257ED7FD1B83681AB8DAB47108104A1D3C871
                73C74F9E6516A36F6459A76F6C8929B32CEA2D36EE6B0C080C479EFF72349586
                E3F5C3303C2FB4C2F30286251A73EDE13655F319ADE73AE7A6C4596570841ADF
                E9CDF41B33D5144AAADA01F42DEB5CE80352E10F5EC4ECD9481702A7B1BB6EDF
                5E43E39CA737B3F3577783D19C6B86E69CB568CA5983675737E3B2DB0C6C9D38
                E879EF9E1ABAA4CF970FDBE106C5413109DE6BAE7F75C2BBCB49A5FB007AB48A
                5E67D6154848BB1B13511CD447A177D68111E2A737C3F0DB9D403C49374553DA
                323C495B8AA6AC1F517CDC008E13FA61B5D12C2C9ABDACA4AB6A0F7624CD826C
                A7E492659BD2B1F78509141DD213BD7D59C99FACD061A896628F0C27BDD42725
                6178F1EF0034262E4463C2023424CEC713C93A14784EC1F6D19A5835631A9C77
                3A60ABF51E18CEB190A8A8F6E84DEBA5246483FAAB63A930817C57BEF2FF743E
                5853A1A764AF5EEAE31B61F8B5EC24EA638C517FC118755146789CBC1AF96E63
                B14D4F03CB268F87DDFA8D38E0EC85B3D1A9D84D9D6EC6DC0DA94A2AEA7DC8CE
                BB76ADD64B26DD9F10E919E8384843A1578AE37071C3B5503C2F398EBAC8E9A8
                8D30406DF83434C49B22F7A751B019AEF9DA64F860386CB082D37E0F1CF33F07
                BF9064EA8045703D1A027D93F5E22ECADD34C99EEC9DF14979E7FCBBDE0ABD12
                760C13D71787E059D131D4044F44CD9909A8393D01F51797207BF730380CE92E
                D1E8DA75ACE1F8A9952B97AEA3C69444FF0A8908A02EE747E03BC0C533982AC8
                4CDC5949ED1BB2FB45129C7679DD5E9D7A5DDC3A24ADAE2804CDF99EB87F6A2C
                610CE19F78746E0132777C0FFBC1DDD3D43BC8711351EBDC59E5DB91A38D33AD
                6C5D119756482452713234192782937181EE83ED74A74C9CBE26AD8BB21A6F07
                5F3C1F3D03D2E8BB8498E99CA88CA7C6927718F74E8CC0BDE37AB8EBA387DAB3
                73916133003B06759374EF20C769E55212AA44415145536FCC3CB1959D1B6253
                8BE01B9C049FD389381A94882822B1798727C64C59EA47BA5CD2D2FF80F78407
                784235C454E75143F65154790D250C4195E710DA7763A46FD1C176DD6E128A5C
                369D1C0D3F153A29AA7C3374F49CB4F55B5D84C8BD89805760BCF08C151760E2
                4CF33AD2E31EF097E6C3C2033CA11AB8B0EF9DAA3033541ED245A5BB2E1E061B
                42BC411BB6035525DDE485B473E44214ADE52ACD9E62470565ADC1A34CD2AC1D
                0ED3355C08EF338902A293F230F8873955A4F359026C44C9525BC539D26202F2
                B7F74585EF54442EEA039B7F7CDCB914FCDD3A2E90F87E84B1C4D2FA0039CEC5
                D9B82CCC5FBE0D03864C73A5F94F6E010B0FF2E5A166AEA5E2B24DA76B956DBF
                AFAB2DB4947DD5E5DFEDB9B0787BBFAEA20FC1E3ADF38A9D149435070E9BEE4B
                515773E4ADCE397AE93FE447850D080D88C057292F60C8FEBB7D94B98CF03CEB
                B13EAFEBDE0A8E5CEAFCB336A42438123EE10C7EFFE24219F95FD8101465F1DF
                C8DFB42112FD01510E806A1B8077730000000049454E44AE426082}
            end
            object img_Game_Room_9: TImage
              Left = 43
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                1974455874536F6674776172650041646F626520496D616765526561647971C9
                653C00000011744558745469746C650054696D653B436C6F636B3BA59641FE00
                000ADF494441545847955707545557167D6926D62466223A4613C782C642442C
                58965811A529A08882A22616149510D11835111393650315512C51B1102B2A08
                FF8B14F9A22020F2A517691F3EF0814FEFEE39E702C6958C6B66EE5A7BDD77DB
                D9FB9E73EE7DEF49597B7749D9BFFD24A97E3F2EA9CE9EF88FA0F2563BDE6EC7
                3B6F008F89B97FB7E3D356130FF365FDB293A6516101CD252AA9A5B2EC6FA0D2
                41FC4EC8EE1DBDB27D8ED8E79D3EE69F7FC63BBEE08CB78A8CA1E0B4B72AEFB4
                777CCE69AF5B69C70E2D0BF8C14D87E6BF4B10625A2A3452F35FD054942765FE
                BC8386A9080165C5528B96485F0315411C7F70EFD0DC93472FABCEF94013740B
                3589F1A87F918146551EC838D5B9A8CB4E47F5B3589406FAA38044657B7BFE11
                B967D797B4FE3D8210D25C5E22099495484DB4E1F4DDDBA99B0A2B1103A4CCB3
                8F2E7709577BAE5CD623DBDBE348FE99E38DDAC70A349514A1495D80FACC64D4
                2444A33A2602559172820CD5D161D4F708F519CFD15890838A470F907FF25863
                AAE77EAF9DD6F33F227B1C9EB7D87EB3A6983C5E28A5EEDAC65C9250C2AA1854
                C4AE653BB6F6CBF63AF4ACF8CE0D3416E6A3312F0B35B10AA41C3E08F9B215B8
                3071064E8D180F3228EA0B13A743E6E088E443FBA00DF12771612426196AFF2B
                C8F0DC9778C979DD176497C3F256139133927ED8C27C9294424A9A356A7E14E4
                D75C36F4CDF4DC97A50995A1A93017B589D182D87782114E4C9A8BCBDBF7E196
                9F0C81B218C8E37344CD6DEEE771DF71539174602FCAEF5E45756C244AE50148
                3BF05B96CF4AC7FE64BF4D84BA40526E75654E494ADEE1263515ABF8F16D67E3
                59DDD2F6EF8D2CBD178486DC0C543EBC0799FD72788F9986EB5E1711A1CCC78B
                222DAAEA1AD1D2FA12D76F87899ADB596AAD18BFEE7509C769BECCCE1EA557CF
                411B76176AF2E4F35F763F5C30469FC3214424B86E664E49526E134A3851DE4B
                DCF3A357819F2F1A5EA4A132E22E6E9898E3B4E912843E4E4352AE06F58DCD78
                F9126F048FA7E469C4FCDFCDED71DDD814EA8B275071CF1FB9674F2166C7F7C7
                89A733F3C56DDAC0BCA2B0EBDF956D769E90B66F6F4B5DFA7354D1CEE54BEC71
                C6C2018AC43C64166AD1D0D48256DAED7F03CF7BF23C070A6501CE2E7084CCD6
                0E45678FA02CF80692F6FCD4E2B76AC564E2EBD4CE2B0AEFFEFDB86D6E778A02
                2881E21450BAEFC07183E978F0248DC82BB0EBD753686E6925BCFCB36E6DAB39
                04DCD722FA5EE269623A665938E1415C0A144F327072C26C246CFB1685270F92
                174E226A937320F17521F0C910E59DA396E683E3BF7369A955C6A22CC00FBEE3
                A722F0EC4DA4AB2A905554893A726D5373EB9F20C2BFB509F1896930B5D90879
                D863DC0D8D42524E31EE9EBF8D4B8646C8F3DC43E1F0C16327A716A7F1E30610
                2FDF11C20B9D82972F73493DB45F244CE24E379C32321331CFA284CB56570AB7
                3634B7A1F10D887B968A79561B1012FE18B1F10950661688B5C9941367675BE1
                A9CB5A64BBBB22E1FB2DF05B60B586783F20B0F7A50FC21C9707E45D3E8FE20B
                C7215FB408377E3C2876FE820CB0919AFA26D4938837E1C9D314CCB15C0779E8
                633C897B8AA2620D728AAB90A3AE12EB6FB97B426E638D944D7457FCB8158136
                8B380CDD08220C5D43ED1DD2D4FE7F20DFD35DB84B111821C85F145792A14A68
                AAEA50DBD08C3A0685E375C4C42763B6F96AC8EE470972756919CDAF476E4915
                72594449251EC9A2E037691A929D9622C56D0382AC176510EF87043E9252B7FB
                8B975495DCBE8CECDDAE38AB6788C4C44CB1036184905F5A25CE3A7BA2B6A10D
                E7FC8261BDEC7BCCA398078744212696C84B34625E415935F2680D83D7A7A4E6
                E29CFE443C5F6D8B24E7E508B2B4AE22DE9E1D027ADC5B680BCD4D5FA46F5D83
                9343F591915B8AC72B1C11B1D80E320B2BDC9E69822B13A7C1F72B439C1AA28F
                639F0FC7620737146A2AB1D0713B0283E4E4F63254D636A2A8AC162A4D0D0A34
                D524BC1A564BB70A4F9E193E1ECA15D6507EB30801669620DE4F089C88528FBB
                9656559CA1A914A3F3FA9391969A83BC926A04873D842CFC21E4847BE1510261
                8A68443E8A86FB3E1F982F7285AD8333C53E5C84A9A8A20645E535282CAB818A
                C0221859D985F0359882670E1678BAD402378D4DAB89F71FAF04F8CF354FCFF3
                F140CA46475C9D361B89E1D1E4BEB6C52A061963C30C75452DD4DA3A146B6B31
                CDC41E5E3E6790989A8D62EE6F47C75C165240488A8AC38D9973F074F13CC4D8
                9AE10F23E34CE27DE581EE9767980427EFFD09299B57E0BEDD52841F3A817C41
                4E3B798D984998B8A4B20EA504DB153B8547B82D2084D5B50929AF45A1400D22
                8F9C4298DD62C4DB1823D29AAE77432319F17E4C1039D0C5DB70EA36C59A3594
                03EB90B0F11B5C5DB094764F3B10E46DBB2AAE682361620D83327D91E30F087F
                188D327A167DEDE325249285F2BA420A8BBFAD23E2BE7640ECFC190836998B5F
                468EE5375177823886EF3B0E1CAA776DE6DCD62C773724393990BB4CA00C8914
                3B6001AFEF9A63CD8465D5F5B0A1531011158D727A167D2CA45D4C9B376A914C
                F9737B8EA9887F8CE9545C9A60D43AA3579F11C4CB2F257113B21B3E3A6D3045
                1EEDB40609F6E64870598F6B660B919F5F4CF1AEC5FC256E2825E20E7226ACA8
                A91719FE800454D434A09CC14208968BBF23B1F5285495C2DF7A099EAEFF1AD1
                A653106C341947478EBB4F7C1D092804F075D865E3C02F8DFD26CF6A7DEEEC28
                8E4A84BD3D82D7BBA2B8BCFA95DBCB05798320D4D2919B6FB7050A3A11DA5A6A
                539F10D2EE8D52121EE24202ED49C0E2B97838CB10E7474F6C5DF5D94053E263
                F78B6B980BAB60353D3D861BF8DEB5982F9225F5DB6F20B7B2867C0389509743
                534D02DA4998AC922E1C0B5B571210239E8508028F9796542074F35684D8D820
                79ED123C9A350E570DC6E3B7417A9789A717E1CFD7F19911E3B962359D0774EE
                DACF6B9841FC7D4B4BC4984D45FA96B5620701B6CB90762F9C04D40B92CABA06
                71E3992D7481223A06557443729B2FA28CD048042D5D49EBEC904AB75ED47403
                F81B8C81C740BD84BE9D3A0F249EAECC7762D068E695A453430DB862359C91DD
                66F6D4F9CA6B88BE4A6E3207D1269390B2DE014A5727049A5A40B66A1D9E9DBF
                84826749D0A84B504DA4E121A15029939178C10F216B9D114C1E546E5A8DE4AF
                17E2A1913E6E8E1E8DC30346154EEEFEC958B2DF83203EC9BC07E85145859568
                E5FEFCC82278B0C7BC8F7B8F3FFC2FBD8C6B13A640317D2CE2AD8D91E9B606CA
                CDABA170588260CBF9B833D78C4ECB5C04CCB3807CBE95E857D211CEF8762562
                CDA72172B21E2E0E1B8503FD8667CDECF1E924B2CBDF8322F1CA6F5D948EF6E7
                8340E51829D106DF90B441D7B9D9910FDD077DD075F09EBE432FF8E88E69BD33
                6E0C1453F5C5394E5E65830C9795C8DAB616393B9D9145C232E80A7FEEB800B1
                14B6C84923E1FFD508787F31BC7557EFC157BEE8D47918D9637211F772FF0B12
                E3705FFE6FA1E2454AB4815709572480DF11AF3CC1B1EA65F661AF593FF71972
                FFD8E723E0AB3B12B7478F847CEC4884198E8262D228844DE0F608DCD11B8EF3
                83BEC491CF86618FCEE05093EE9F1AD3FA3E047EEF0BB7B3FD0E011EBD875217
                15565211E02755DCE90027AA10C189C9AA396EBD0DBB7C34D6F993FEDBDD7506
                85FFAA3324ED406FDD328FDEBAD8AFA35BCEEDDDBD06466CE8D97FD7B8CE1F4E
                A0F9FF24F0AEDF2788BFA20EE20E1CEA3584BAA9B0124F015DC94347573C7BE8
                305EFDA6B10136C43BE177786F423F02FFEDF0B71DD7FCD3C1BBE5170C9FF157
                C44CF426FC3FA5C323EC4AF60A13F0371D5FA75C739BFB799CE7F1FCFFA148D2
                BF01640A1D84694D0E890000000049454E44AE426082}
            end
            object lb_Game_9: TLabel
              Left = 37
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #45824#44592#51473
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Team_9: TLabel
              Left = 91
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #54016#51204
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Item_9: TLabel
              Left = 145
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #50500#53596#51204
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btn_Room_9: TAdvGlassButton
              Tag = 9
              Left = 304
              Top = 11
              Width = 91
              Height = 94
              Cursor = crHandPoint
              BackColor = clNavy
              Caption = 'ENTER'
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
              OnClick = ClickEnterRoomButton
            end
          end
          object pnRoom_10: TAdvSmoothPanel
            Left = 427
            Top = 671
            Width = 416
            Height = 128
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
            Fill.Color = 7422746
            Fill.ColorTo = 9262113
            Fill.ColorMirror = 9262113
            Fill.ColorMirrorTo = 9262113
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtVertical
            Fill.BorderColor = 14922381
            Fill.Rounding = 10
            Fill.ShadowColor = clBlack
            Fill.ShadowOffset = 10
            Fill.Glow = gmNone
            Version = '1.5.0.0'
            TabOrder = 17
            TMSStyle = 4
            object lb_Room_10_NumTitle: TLabel
              Left = 16
              Top = 14
              Width = 26
              Height = 18
              Caption = 'No.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Room_10_Number: TLabel
              Left = 48
              Top = 14
              Width = 20
              Height = 18
              Caption = '10'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Title_Room_10: TLabel
              Left = 80
              Top = 14
              Width = 209
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #51068#51060#49340#49324#50724#50977#52832#54036#44396#49901#51068#51060#49340
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_PlayerCount_Room_10: TLabel
              Left = 218
              Top = 41
              Width = 54
              Height = 45
              Caption = '6/6'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -37
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object img_Team_Room_10: TImage
              Left = 97
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                1C744558745469746C65005465616D3B50656F706C653B47726F75703B557365
                72937B6049000009D8494441545847C595775494571AC6C7925034AB820931AB
                462C481B502054294A114491629080489391367418096D181C507A57AAD2CBC0
                4815180129418D4824A0706CD185644D34AB89D9C41CD7CDB3F712D964D03FCC
                FE91BDE73C87F35EBEF7FD3DDF77EFFB0E03C0FF55AFDCFC33F5CACD3F530C2E
                97FB923E4DD45F7689A7EF7481AB9B3314A733D41FAD7DBFEF8816CE4568DE3A
                1BBAB5B08DADAE3CEFF9D7CA11FAA98971A85EDA188ED77DFB42A2C9CDF1321F
                DC688AC5D7A3CD787CF3133CBAD18F2F4405B898E3064180D693325705CD761F
                25461B4BF10FE5CCE7890554A208CD23E39561F8FE662FC62B43F168B21B5F8F
                34E0764B32068F3BA125D408352C4D64DAAC1174B3998CAE00D53F94339F2716
                5035FAA8082785C9F8BC261A55873420E2396038C305FD7C7B3404ED4015DB1C
                B5117668883F748D9CA13DD56735BC4BD3171A70A7B7146D71FBD0C377FA6F4E
                354B1B790E1B916EBD065C63B9A1F93CB180AAC47963FBF96C5F143A2BE1724D
                3C6A427622D35E1195E1FB2814CD096E688EB4828863FCDD27D106DFF485AA41
                14A2F1AC9B6342F62D31292AC540711CB21D99E0ED9003CFF43D2459AD47ACB1
                1CC23497B7CCE7890554A9D66BF28ABD0C50E2A18B07D79AC939B6E19BF116DC
                3D97894FB8A6188A36C0DDDA60DC6BE5E1C1E56A3C9EEAC4745F01464F7AE10C
                5B0BA70F2861FA5301C9EDC0648D0FA6EA4350EE638C00E65B38ACB234793E4F
                2CA08A325A65196BB40A75A1D6F8E73D11FE757F00CF1E8C6224DB1957B21DF1
                455B347A539DF0F84A25BEBD528399DE2C5CAF0AC170AA03CE466EC3E98FD6A1
                2E78E76CCEB7BD31F876E0184EB10C10A0BEFCA9BBDA3B5AF379620195959595
                44B2BD46A530CAEE979FEE76E2E71911D12004DE4C5C2FF7C140E24E94BB29E1
                6AD67EDCAE0FC764251B17D3F6A13D441B15FBD7A2D0460E69D6EBF0F3743F1E
                9E8BC6839E44E439A9FFC2B5514BB1B0B0909ECF130BA8343535179A9B9BBF5B
                C6B69C9CEECBC58F537578325E8B13B6AB3156E08A930EF2286419A3C25511AD
                FE1A68F565A2DA6503F277AF42CE4E1964EF94C5314B793C19AB22066271ADDC
                0FFC3D8A374C4D4DD792DA8B3827341861B95B1821594C4650A6F2CB06A84C4C
                4C9626381BF3BB78F678D0C5C177A395C8B5DD808E48631CB7DE80AB1D99684F
                3F8C44AB8D38A22B8B506D1984E8C8816BB80C7CA3E528F6D0C3E391D3F8A63B
                0E8290ED609B29A5929A7F6190159CA9CA084C5766F8A76E66F81E5778B50105
                058537B69BEB6C4DF5D9F6FC6C9C0DAE9F49419EB3260A3E5440BEBB3E1E4ED4
                E3C92D21662E14E2BAE0082E17B8A32BD905411A2B10A3BB0CF5514E18AF8D27
                5D61861827E5E77A465BB4D7AD5BF72635D07F83C3E89D0A65B0F8F20CAFC4F7
                C50D90B590E8CDC04463665AF5DED18EA60894721C50CDF54669F84788D49145
                0BD7094FBF10E2F9740B9EDDA9C7F7175231D3148AA9DA082458AC43A4FE3BE8
                3A958C9341B64872D6C7C73E7AF04EDC7CC5C2651593D496245AD431E1CF708F
                5FC3708D5BF5AB81176089C83433BDB41A1B41519BCBF3D64B5128AA75446F13
                07FD55F168AB484469A41DCEF29CF0EC761D9EDDACC64FE38578288AC5B42010
                336DF1C8DBAF0ABE9B3E46CE9F84A8280C3951BBE1C95A8BA4EA1D084C53FAB7
                F391D542F3836F1B129634653A1D799BB2190BED589B561FAFDADD5E72D60DBD
                637C4C7C5582E13B09A819F4444C9101DC62E51196A183CAD660D484EDC2A38B
                59F87134178FFA13F0655330A61BC371AB3E1249369BD0D8C503B7D47436C737
                59094975BAA818DE8B86CB2EC86832052B591E0EC1B23D4C43A93584BD881A78
                33284DBDB171D81F63338504CC87E87A083A2702D1FEB90FCE5C3D04C1882B4A
                06764178291225F1B618C973C3FDD670CC08D8B85BE38B2FDB62D1CDB3432ADB
                0C3D57537F976385FC5E13E49D334476D736E4F598A2E8BC15624F6B60D7E1B7
                6A095B8A1A9066A72B7FDD7135185517C9BC274E9B463DD034E286EA8B8E281D
                DC831C913132BA0C70BADF0DC5555EA8F037C634B91FD3C208028FC31D412452
                EC36A3BC3604CD974308F8B79CF4B3BA486DFF00C75BB590D4A281E496AD4816
                EA62B7DF92AF087BB63396F8242BFCD0F2D96114F49820F79CF1ACDBCC2E3D92
                AC8334927CAC4513B9DD96A81CF44161FB214405EA20DF591D4DE1E6A4CD76E0
                18193CDEEE4A38D5E9873AF2250B4456B339492D5B70F48C3A784235F09A5410
                2F50466C8312F8673460ED27F51361AFA006A43D13DEFF8A53B0159145CA88AE
                5001B74E0D7135AA24491DD99D56281F60A17A3000198D1F222A6F1BA62E9540
                48E6C0D17D9AE0EE6522C94907E9DE7AF04D50414A8D3DAA06D828EDF5445ADB
                7644556F4668F17A8414CBC32FE7AFF03A2E8703712BA9811F087BF60B2C5AAD
                20B9729797ACEB5E3FD92CBB40994EFBA01593FE891FDC3A5AE8F8F468A113A2
                73772228431319750E286E75C7B1131638472EDF10F90D683CEA88139126080E
                5706BFCC129C1C3D3847CA2328C910DCFC0F11936DF3D4338679DB92253565EE
                21D9BDDD45F284BEBD84A7CC7B0B490F3216CFB5E102A23788689F2E21A2CE64
                0EC5AB7242B334FF71B2D50523773270ED7E1E066FC4A2ACEB00E20A8DE1C5DD
                08B798F5A443B6224BB00B6DA387219A0CC0A93E3B0467A8C0DA67F9DF8D1C97
                46935A1426F3A22E6D413A9416ECF6277770DE20A28B9A59EC97CC0CCA6FB6C7
                C8BD545C99E163F04E38FA6EB1D17F2B1003B7C3209AF245DB8407DA27BCD03C
                7610F523E4C20E5922AF771B0AC83DA2B73DAFD3022CFE7A183949F9909AF4E5
                E8BC5920C6140B7E5DB343C93F8579AF7D8C05E1D83EB48CBB10903B5A3F7785
                60D411E5172D5134608C13E70D496B1920BB5B0F19E4C2A6B66B93CBA705BE50
                033CC116240AB4105FA90D3337C9315293BE3DEDFBD73220458748F7A42FCA86
                77A078C804850458D06788DC1E7D648B08B0530729B31DF202D8B805F1F5EA88
                A96522AA4A059C722584972922AE520B66EE920F494D7A04F4985FCB80B4F751
                05B45CF598056611607AA736523BB47E059ED98A440A6C50436CAD2A3EA6C00A
                65449C524468A902828B37817D7223FC0BD68353BA05661E924F484D6A6031D1
                6B19903C18B37E90C5DF84800C52306F33C28B95C0394520258A082F5504A752
                0911A75F004B36C13787CC82B4B5F04C598303BC77E1F8F14AD8862E87D5E125
                D8EE2AD9456AD223782D03B39790485A6F8F8C828DEFBB7E7BFDE4B26DD9EF74
                D8B2578EEF095831B1C777C5BD3D7ECB60EDFB1676B196C2D27B09CCDDA5FF66
                EA26756DC741C96B262E125D86FB25F2F5EC2442E4D517AB925ACB892488E8CB
                8933C582DF1635412F0C6D173AAFE75A7319119D5EF473AE24A23F67BF17DD93
                25A2FFA7CF2E25A2B79F9E3D85D3BAE24CB1E0E545136822354345BF0C2D3627
                6A704E7331FD4B9FA3A23973E059385D624CB1E0D56B2EF97FD54BEB372697F1
                1FA84DD17BBF233D730000000049454E44AE426082}
            end
            object img_Item_Room_10: TImage
              Left = 151
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                20744558745469746C65004944453B546F6F6C733B437573746F6D697A3B4465
                7369676E3BAA5D29920000097A494441545847C5560B548EE916FE870845354A
                6E699AC8A1316E611C7722A4C27227F752462E29A1726D528A14452A738AAE23
                4A4AF7BFBFD245BA21C5A9E492D205C5184C3CB3F737FDD6CFB8CC39EBAC75F6
                5ACFFABEEF7DF7BBF7B3F7FBEEFD7E2200FF57FCC772FC74C27B20F9AA156D64
                208CBDD30B4A107907C5132ED1F0DF13A9D10F21F20E6443F1FCCADF6D097204
                79424719B427F0B840C6EBD445D1910082FF05FAFCB2C81A6ED70A7EE7315932
                7213F48DBA1CF40EDFE9E91F9D4D4EE01510D372D8F75C8E934790E354C3F93D
                48A703EBB1BEDBF1B322379FB3F4FA79119CBBFA44441EF48EA876F38980CBB1
                F06A67CFE0F3767BBCF4688EC908E49C3C4E4FF60AB8509E98751D65F7EBF0E4
                550B1EBFFC1DA5F71E213EA308EEBE91B59B77B82D255DC5D6755F918E488A4F
                8940608A9145CC1AABFDA8697E8EFB8D4DB85C741B9EFEE75EDB3B9FDC377692
                6167D269BFCCDCE188BDB32F2C6D0EC266F7515C48C8C6BDDAA7A86E68465DD3
                0B5AD78CA0C894379BB6BB3B90BE3281B7A9EDA708C8A6B64DDF01A314A7CD5E
                1F6BB9D51537CB1FE066C543DCAD7D0CFFD078D8ED3FE14B3AC25EEB1BAD1AA3
                3B646C9FD1134D86CF5B61137C2E360377AA1B514E19A978508F5A2212416396
                D6CE1EA4FF3581490899901521EA56484F715B2D9DA15D0CE76F4A76F709C5AD
                CA1A641596A3B4FC219C3CCE60F5863D06A4C3C6A467A413416DCE12EBEC0449
                3E11AE4171D93DE41697A3A2E631CEC56762A585FD11D25122C87D48406EC9BA
                DD61FBDC832E8E9B3C8BD32B3D70ED468C9DA5B5D47C4F4BFDF3DF9071F5360A
                6EDEC5F9F82CFCB8ED109F263E6052C24C4279D2CCE5FBDDBC83915D540149DE
                2DA4E6942239AB04A5771FC17CE34F5CF43D090A04E160B642D47EF1DA5DD53E
                8131D8E9E417376CE44466C96524AFDD7FA8FA3AEB832DCD2D6F914E0633F26F
                A3B8B40A16366E3534CF86A495C10454A69A98E5455ECA84F8CA9F8E1332AF23
                4E528CF8F462989A39328141040D026F076F23AF17C92F5865FFAAEED79738E2
                7F1E9BECBD12C64D99D3BBDF403DF5C5668E11A117D2F0F4750B2457CA9076E5
                266EDDA9C1DACDAEAF699D6CB63AE81B2E59B470A56D4B0A459D9475831C1721
                26B51051495771F6520E366C3B885D2EA7E078C01FEBAD9D8ED11A2E532621EA
                30D7D4EEE1FDC74D82F1E028316CF79E80F56E6F845F4C4753CB1BDCA60325CE
                2D1548E497DCC1F2F5FB6A691D9F6CDE868EE3F417CCB3B2757A25CEBE8688B8
                5C4427E723565C88E89402B29185437ED1A878D8881764AB8982394F6762D95A
                3B1F5AAB4A10C91B2DDAF24B5452164ACA6B8413FFA8F9059A7E7F8327A47CFB
                4103455E8694EC9B48A773904235BED5FE48DDB7DAFDB5D840FF41E317985B39
                BECAC82B4524451A122D81C1ECB53030598769466658BC7A070223C5C823E211
                71D9F00F4F4541D97D989A3BF096701644ED26CD5C65B0DACA0955358DC82A28
                4726394ABF724B70CC91B373DED344DACB6BA577101E198B28F725B5051E231A
                D25D7F782BF9C583CA2D07A1172F63A6C912B469DB7E1FD9ED47186E6A6E8FAB
                E43C2C360B27C39211461959B47A1B54D4754ED27C3726C07BD8D1608E65A0DD
                5E6FAAFB6AE4DFA8124848D39E59700B8919C5C8B85282D48C1C14FCBC020D39
                EE78559F83978F325171691FA2FC9C30DD78113B77247BBC3D2A04ED852B6C11
                4ECE7D4393101273190B57D942494DFB679AE30CF241164EB15C0F0D1D9529B3
                CC0E2F33DFD512149E80C2924A94DFABC3D5EB15884DCE16224F49CB46AE9F29
                9ACBC2D1D2908097559E7851EE82A65BA71061339A9DEF265B42A724709FE8A6
                3FD3F4E49A2D2E427616ACB4815257ED7FD1B83681AB8DAB47108104A1D3C871
                73C74F9E6516A36F6459A76F6C8929B32CEA2D36EE6B0C080C479EFF72349586
                E3F5C3303C2FB4C2F30286251A73EDE13655F319ADE73AE7A6C4596570841ADF
                E9CDF41B33D5144AAADA01F42DEB5CE80352E10F5EC4ECD9481702A7B1BB6EDF
                5E43E39CA737B3F3577783D19C6B86E69CB568CA5983675737E3B2DB0C6C9D38
                E879EF9E1ABAA4CF970FDBE106C5413109DE6BAE7F75C2BBCB49A5FB007AB48A
                5E67D6154848BB1B13511CD447A177D68111E2A737C3F0DB9D403C49374553DA
                323C495B8AA6AC1F517CDC008E13FA61B5D12C2C9ABDACA4AB6A0F7624CD826C
                A7E492659BD2B1F78509141DD213BD7D59C99FACD061A896628F0C27BDD42725
                6178F1EF0034262E4463C2023424CEC713C93A14784EC1F6D19A5835631A9C77
                3A60ABF51E18CEB190A8A8F6E84DEBA5246483FAAB63A930817C57BEF2FF743E
                5853A1A764AF5EEAE31B61F8B5EC24EA638C517FC118755146789CBC1AF96E63
                B14D4F03CB268F87DDFA8D38E0EC85B3D1A9D84D9D6EC6DC0DA94A2AEA7DC8CE
                BB76ADD64B26DD9F10E919E8384843A1578AE37071C3B5503C2F398EBAC8E9A8
                8D30406DF83434C49B22F7A751B019AEF9DA64F860386CB082D37E0F1CF33F07
                BF9064EA8045703D1A027D93F5E22ECADD34C99EEC9DF14979E7FCBBDE0ABD12
                760C13D71787E059D131D4044F44CD9909A8393D01F51797207BF730380CE92E
                D1E8DA75ACE1F8A9952B97AEA3C69444FF0A8908A02EE747E03BC0C533982AC8
                4CDC5949ED1BB2FB45129C7679DD5E9D7A5DDC3A24ADAE2804CDF99EB87F6A2C
                610CE19F78746E0132777C0FFBC1DDD3D43BC8711351EBDC59E5DB91A38D33AD
                6C5D119756482452713234192782937181EE83ED74A74C9CBE26AD8BB21A6F07
                5F3C1F3D03D2E8BB8498E99CA88CA7C6927718F74E8CC0BDE37AB8EBA387DAB3
                73916133003B06759374EF20C769E55212AA44415145536FCC3CB1959D1B6253
                8BE01B9C049FD389381A94882822B1798727C64C59EA47BA5CD2D2FF80F78407
                784235C454E75143F65154790D250C4195E710DA7763A46FD1C176DD6E128A5C
                369D1C0D3F153A29AA7C3374F49CB4F55B5D84C8BD89805760BCF08C151760E2
                4CF33AD2E31EF097E6C3C2033CA11AB8B0EF9DAA3033541ED245A5BB2E1E061B
                42BC411BB6035525DDE485B473E44214ADE52ACD9E62470565ADC1A34CD2AC1D
                0ED3355C08EF338902A293F230F8873955A4F359026C44C9525BC539D26202F2
                B7F74585EF54442EEA039B7F7CDCB914FCDD3A2E90F87E84B1C4D2FA0039CEC5
                D9B82CCC5FBE0D03864C73A5F94F6E010B0FF2E5A166AEA5E2B24DA76B956DBF
                AFAB2DB4947DD5E5DFEDB9B0787BBFAEA20FC1E3ADF38A9D149435070E9BEE4B
                515773E4ADCE397AE93FE447850D080D88C057292F60C8FEBB7D94B98CF03CEB
                B13EAFEBDE0A8E5CEAFCB336A42438123EE10C7EFFE24219F95FD8101465F1DF
                C8DFB42112FD01510E806A1B8077730000000049454E44AE426082}
            end
            object img_Game_Room_10: TImage
              Left = 43
              Top = 48
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
                1974455874536F6674776172650041646F626520496D616765526561647971C9
                653C00000011744558745469746C650054696D653B436C6F636B3BA59641FE00
                000ADF494441545847955707545557167D6926D62466223A4613C782C642442C
                58965811A529A08882A22616149510D11835111393650315512C51B1102B2A08
                FF8B14F9A22020F2A517691F3EF0814FEFEE39E702C6958C6B66EE5A7BDD77DB
                D9FB9E73EE7DEF49597B7749D9BFFD24A97E3F2EA9CE9EF88FA0F2563BDE6EC7
                3B6F008F89B97FB7E3D356130FF365FDB293A6516101CD252AA9A5B2EC6FA0D2
                41FC4EC8EE1DBDB27D8ED8E79D3EE69F7FC63BBEE08CB78A8CA1E0B4B72AEFB4
                777CCE69AF5B69C70E2D0BF8C14D87E6BF4B10625A2A3452F35FD054942765FE
                BC8386A9080165C5528B96485F0315411C7F70EFD0DC93472FABCEF94013740B
                3589F1A87F918146551EC838D5B9A8CB4E47F5B3589406FAA38044657B7BFE11
                B967D797B4FE3D8210D25C5E22099495484DB4E1F4DDDBA99B0A2B1103A4CCB3
                8F2E7709577BAE5CD623DBDBE348FE99E38DDAC70A349514A1495D80FACC64D4
                2444A33A2602559172820CD5D161D4F708F519CFD15890838A470F907FF25863
                AAE77EAF9DD6F33F227B1C9EB7D87EB3A6983C5E28A5EEDAC65C9250C2AA1854
                C4AE653BB6F6CBF63AF4ACF8CE0D3416E6A3312F0B35B10AA41C3E08F9B215B8
                3071064E8D180F3228EA0B13A743E6E088E443FBA00DF12771612426196AFF2B
                C8F0DC9778C979DD176497C3F256139133927ED8C27C9294424A9A356A7E14E4
                D75C36F4CDF4DC97A50995A1A93017B589D182D87782114E4C9A8BCBDBF7E196
                9F0C81B218C8E37344CD6DEEE771DF71539174602FCAEF5E45756C244AE50148
                3BF05B96CF4AC7FE64BF4D84BA40526E75654E494ADEE1263515ABF8F16D67E3
                59DDD2F6EF8D2CBD178486DC0C543EBC0799FD72788F9986EB5E1711A1CCC78B
                222DAAEA1AD1D2FA12D76F87899ADB596AAD18BFEE7509C769BECCCE1EA557CF
                411B76176AF2E4F35F763F5C30469FC3214424B86E664E49526E134A3851DE4B
                DCF3A357819F2F1A5EA4A132E22E6E9898E3B4E912843E4E4352AE06F58DCD78
                F9126F048FA7E469C4FCDFCDED71DDD814EA8B275071CF1FB9674F2166C7F7C7
                89A733F3C56DDAC0BCA2B0EBDF956D769E90B66F6F4B5DFA7354D1CEE54BEC71
                C6C2018AC43C64166AD1D0D48256DAED7F03CF7BF23C070A6501CE2E7084CCD6
                0E45678FA02CF80692F6FCD4E2B76AC564E2EBD4CE2B0AEFFEFDB86D6E778A02
                2881E21450BAEFC07183E978F0248DC82BB0EBD753686E6925BCFCB36E6DAB39
                04DCD722FA5EE269623A665938E1415C0A144F327072C26C246CFB1685270F92
                174E226A937320F17521F0C910E59DA396E683E3BF7369A955C6A22CC00FBEE3
                A722F0EC4DA4AB2A905554893A726D5373EB9F20C2BFB509F1896930B5D90879
                D863DC0D8D42524E31EE9EBF8D4B8646C8F3DC43E1F0C16327A716A7F1E30610
                2FDF11C20B9D82972F73493DB45F244CE24E379C32321331CFA284CB56570AB7
                3634B7A1F10D887B968A79561B1012FE18B1F10950661688B5C9941367675BE1
                A9CB5A64BBBB22E1FB2DF05B60B586783F20B0F7A50FC21C9707E45D3E8FE20B
                C7215FB408377E3C2876FE820CB0919AFA26D4938837E1C9D314CCB15C0779E8
                633C897B8AA2620D728AAB90A3AE12EB6FB97B426E638D944D7457FCB8158136
                8B380CDD08220C5D43ED1DD2D4FE7F20DFD35DB84B111821C85F145792A14A68
                AAEA50DBD08C3A0685E375C4C42763B6F96AC8EE470972756919CDAF476E4915
                72594449251EC9A2E037691A929D9622C56D0382AC176510EF87043E9252B7FB
                8B975495DCBE8CECDDAE38AB6788C4C44CB1036184905F5A25CE3A7BA2B6A10D
                E7FC8261BDEC7BCCA398078744212696C84B34625E415935F2680D83D7A7A4E6
                E29CFE443C5F6D8B24E7E508B2B4AE22DE9E1D027ADC5B680BCD4D5FA46F5D83
                9343F591915B8AC72B1C11B1D80E320B2BDC9E69822B13A7C1F72B439C1AA28F
                639F0FC7620737146A2AB1D0713B0283E4E4F63254D636A2A8AC162A4D0D0A34
                D524BC1A564BB70A4F9E193E1ECA15D6507EB30801669620DE4F089C88528FBB
                9656559CA1A914A3F3FA9391969A83BC926A04873D842CFC21E4847BE1510261
                8A68443E8A86FB3E1F982F7285AD8333C53E5C84A9A8A20645E535282CAB818A
                C0221859D985F0359882670E1678BAD402378D4DAB89F71FAF04F8CF354FCFF3
                F140CA46475C9D361B89E1D1E4BEB6C52A061963C30C75452DD4DA3A146B6B31
                CDC41E5E3E6790989A8D62EE6F47C75C165240488A8AC38D9973F074F13CC4D8
                9AE10F23E34CE27DE581EE9767980427EFFD09299B57E0BEDD52841F3A817C41
                4E3B798D984998B8A4B20EA504DB153B8547B82D2084D5B50929AF45A1400D22
                8F9C4298DD62C4DB1823D29AAE77432319F17E4C1039D0C5DB70EA36C59A3594
                03EB90B0F11B5C5DB094764F3B10E46DBB2AAE682361620D83327D91E30F087F
                188D327A167DEDE325249285F2BA420A8BBFAD23E2BE7640ECFC190836998B5F
                468EE5375177823886EF3B0E1CAA776DE6DCD62C773724393990BB4CA00C8914
                3B6001AFEF9A63CD8465D5F5B0A1531011158D727A167D2CA45D4C9B376A914C
                F9737B8EA9887F8CE9545C9A60D43AA3579F11C4CB2F257113B21B3E3A6D3045
                1EEDB40609F6E64870598F6B660B919F5F4CF1AEC5FC256E2825E20E7226ACA8
                A91719FE800454D434A09CC14208968BBF23B1F5285495C2DF7A099EAEFF1AD1
                A653106C341947478EBB4F7C1D092804F075D865E3C02F8DFD26CF6A7DEEEC28
                8E4A84BD3D82D7BBA2B8BCFA95DBCB05798320D4D2919B6FB7050A3A11DA5A6A
                539F10D2EE8D52121EE24202ED49C0E2B97838CB10E7474F6C5DF5D94053E263
                F78B6B980BAB60353D3D861BF8DEB5982F9225F5DB6F20B7B2867C0389509743
                534D02DA4998AC922E1C0B5B571210239E8508028F9796542074F35684D8D820
                79ED123C9A350E570DC6E3B7417A9789A717E1CFD7F19911E3B962359D0774EE
                DACF6B9841FC7D4B4BC4984D45FA96B5620701B6CB90762F9C04D40B92CABA06
                71E3992D7481223A06557443729B2FA28CD048042D5D49EBEC904AB75ED47403
                F81B8C81C740BD84BE9D3A0F249EAECC7762D068E695A453430DB862359C91DD
                66F6D4F9CA6B88BE4A6E3207D1269390B2DE014A5727049A5A40B66A1D9E9DBF
                84826749D0A84B504DA4E121A15029939178C10F216B9D114C1E546E5A8DE4AF
                17E2A1913E6E8E1E8DC30346154EEEFEC958B2DF83203EC9BC07E85145859568
                E5FEFCC82278B0C7BC8F7B8F3FFC2FBD8C6B13A640317D2CE2AD8D91E9B606CA
                CDABA170588260CBF9B833D78C4ECB5C04CCB3807CBE95E857D211CEF8762562
                CDA72172B21E2E0E1B8503FD8667CDECF1E924B2CBDF8322F1CA6F5D948EF6E7
                8340E51829D106DF90B441D7B9D9910FDD077DD075F09EBE432FF8E88E69BD33
                6E0C1453F5C5394E5E65830C9795C8DAB616393B9D9145C232E80A7FEEB800B1
                14B6C84923E1FFD508787F31BC7557EFC157BEE8D47918D9637211F772FF0B12
                E3705FFE6FA1E2454AB4815709572480DF11AF3CC1B1EA65F661AF593FF71972
                FFD8E723E0AB3B12B7478F847CEC4884198E8262D228844DE0F608DCD11B8EF3
                83BEC491CF86618FCEE05093EE9F1AD3FA3E047EEF0BB7B3FD0E011EBD875217
                15565211E02755DCE90027AA10C189C9AA396EBD0DBB7C34D6F993FEDBDD7506
                85FFAA3324ED406FDD328FDEBAD8AFA35BCEEDDDBD06466CE8D97FD7B8CE1F4E
                A0F9FF24F0AEDF2788BFA20EE20E1CEA3584BAA9B0124F015DC94347573C7BE8
                305EFDA6B10136C43BE177786F423F02FFEDF0B71DD7FCD3C1BBE5170C9FF157
                C44CF426FC3FA5C323EC4AF60A13F0371D5FA75C739BFB799CE7F1FCFFA148D2
                BF01640A1D84694D0E890000000049454E44AE426082}
            end
            object lb_Game_10: TLabel
              Left = 37
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #45824#44592#51473
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Team_10: TLabel
              Left = 91
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #54016#51204
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Item_10: TLabel
              Left = 145
              Top = 86
              Width = 45
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = #50500#53596#51204
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -15
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btn_Room_10: TAdvGlassButton
              Tag = 10
              Left = 304
              Top = 11
              Width = 91
              Height = 94
              Cursor = crHandPoint
              BackColor = clNavy
              Caption = 'ENTER'
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
              OnClick = ClickEnterRoomButton
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
          Width = 1186
          Height = 819
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
          TMSStyle = 4
          object lb_InGame_NextBlock: TLabel
            Left = 455
            Top = 22
            Width = 36
            Height = 18
            Caption = 'Next'
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
          object lb_PlayerID_1: TLabel
            Left = 90
            Top = 360
            Width = 106
            Height = 20
            Alignment = taCenter
            AutoSize = False
            Caption = 'pdmzzang0724'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_PlayerGrade_1: TLabel
            Left = 120
            Top = 386
            Width = 45
            Height = 20
            Alignment = taCenter
            AutoSize = False
            Caption = #52488#44256#49688
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_PlayerNumber_1: TLabel
            Left = 55
            Top = 360
            Width = 16
            Height = 37
            Alignment = taCenter
            Caption = '1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -27
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_PlayerNumber_2: TLabel
            Left = 229
            Top = 360
            Width = 16
            Height = 37
            Alignment = taCenter
            Caption = '2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -27
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_PlayerID_2: TLabel
            Left = 264
            Top = 360
            Width = 106
            Height = 20
            Alignment = taCenter
            AutoSize = False
            Caption = 'fenix24'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_PlayerGrade_2: TLabel
            Left = 294
            Top = 386
            Width = 45
            Height = 20
            Alignment = taCenter
            AutoSize = False
            Caption = #49888
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_PlayerNumber_3: TLabel
            Left = 55
            Top = 743
            Width = 16
            Height = 37
            Alignment = taCenter
            Caption = '3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -27
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_PlayerID_3: TLabel
            Left = 90
            Top = 743
            Width = 106
            Height = 20
            Alignment = taCenter
            AutoSize = False
            Caption = 'jwm'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_PlayerGrade_3: TLabel
            Left = 120
            Top = 769
            Width = 45
            Height = 20
            Alignment = taCenter
            AutoSize = False
            Caption = #54616#49688
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_PlayerNumber_4: TLabel
            Left = 229
            Top = 743
            Width = 16
            Height = 37
            Alignment = taCenter
            Caption = '4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -27
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_PlayerID_4: TLabel
            Left = 264
            Top = 743
            Width = 106
            Height = 20
            Alignment = taCenter
            AutoSize = False
            Caption = 'blingjiny'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_PlayerGrade_4: TLabel
            Left = 294
            Top = 769
            Width = 45
            Height = 20
            Alignment = taCenter
            AutoSize = False
            Caption = #51473#49688
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_PlayerNumber_5: TLabel
            Left = 403
            Top = 743
            Width = 16
            Height = 37
            Alignment = taCenter
            Caption = '5'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -27
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_PlayerID_5: TLabel
            Left = 438
            Top = 743
            Width = 106
            Height = 20
            Alignment = taCenter
            AutoSize = False
            Caption = 'kingdom'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_PlayerGrade_5: TLabel
            Left = 468
            Top = 769
            Width = 45
            Height = 20
            Alignment = taCenter
            AutoSize = False
            Caption = #47336#53412
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGradientActiveCaption
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
          end
          object grid_P1: TAdvStringGrid
            Tag = 1
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
            TabOrder = 0
            OnDrawCell = OnDrawCell_OtherPlayer
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
            Tag = 2
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
            TabOrder = 1
            OnDrawCell = OnDrawCell_OtherPlayer
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
            Tag = 3
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
            TabOrder = 2
            OnDrawCell = OnDrawCell_OtherPlayer
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
            Tag = 4
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
            TabOrder = 3
            OnDrawCell = OnDrawCell_OtherPlayer
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
            Tag = 5
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
            TabOrder = 4
            OnDrawCell = OnDrawCell_OtherPlayer
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
            TabOrder = 6
            OnDrawCell = grid_MineDrawCell
            OnKeyDown = grid_MineKeyDown
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
            TabOrder = 5
            Visible = False
          end
          object ed_Chat_InGame: TAdvEdit
            Left = 937
            Top = 766
            Width = 146
            Height = 26
            BorderColor = 10240280
            EditAlign = eaDefault
            EmptyTextStyle = []
            FocusFontColor = clMoneyGreen
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
            BorderStyle = bsNone
            Color = 7422746
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 48
            ParentFont = False
            TabOrder = 8
            Text = ''
            Visible = True
            OnKeyDown = ed_Chat_InGameKeyDown
            Version = '3.3.5.3'
          end
          object btn_Send_InGameChat: TAdvGlassButton
            Left = 1092
            Top = 762
            Width = 80
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
            TabOrder = 9
            Version = '1.3.0.2'
            OnClick = btn_Send_InGameChatClick
          end
          object btn_QUIT_InGame: TAdvGlassButton
            Left = 1058
            Top = 373
            Width = 114
            Height = 72
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
            TabOrder = 10
            Version = '1.3.0.2'
            OnClick = btn_QUIT_InGameClick
          end
          object btn_StartGame: TAdvGlassButton
            Left = 937
            Top = 373
            Width = 114
            Height = 72
            Cursor = crHandPoint
            BackColor = clNavy
            Caption = 'START'
            CornerRadius = 16
            Enabled = False
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
            TabOrder = 11
            Version = '1.3.0.2'
            OnClick = btn_StartGameClick
          end
          object btn_PauseGame: TAdvGlassButton
            Left = 937
            Top = 255
            Width = 222
            Height = 32
            Cursor = crHandPoint
            BackColor = clNavy
            Caption = 'PAUSE'
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
            TabOrder = 12
            Version = '1.3.0.2'
          end
          object btn_Setting_InGame: TAdvGlassButton
            Left = 939
            Top = 293
            Width = 222
            Height = 32
            Cursor = crHandPoint
            BackColor = clNavy
            Caption = 'SETTING'
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
            TabOrder = 13
            Version = '1.3.0.2'
          end
          object btn_Log_InGame: TAdvGlassButton
            Left = 937
            Top = 331
            Width = 222
            Height = 32
            Cursor = crHandPoint
            BackColor = clNavy
            Caption = 'LOG'
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
            TabOrder = 14
            Version = '1.3.0.2'
            OnClick = btn_Log_InGameClick
          end
          object memo_Chat_Game: TcxMemo
            Left = 935
            Top = 451
            TabStop = False
            ParentFont = False
            ParentShowHint = False
            Properties.ReadOnly = True
            ShowHint = False
            Style.BorderStyle = ebsNone
            Style.Color = 7422746
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clInactiveBorder
            Style.Font.Height = -15
            Style.Font.Name = #47569#51008' '#44256#46357
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = True
            Style.LookAndFeel.SkinName = 'Black'
            Style.Shadow = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.SkinName = 'Black'
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.SkinName = 'Black'
            StyleHot.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.SkinName = 'Black'
            TabOrder = 15
            Height = 305
            Width = 237
          end
          object pn_Cover: TAdvSmoothPanel
            Left = 577
            Top = 13
            Width = 324
            Height = 84
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
            Fill.Color = clBlack
            Fill.ColorTo = 5780500
            Fill.ColorMirror = 5780500
            Fill.ColorMirrorTo = clBlack
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtVertical
            Fill.BorderColor = clBlack
            Fill.Rounding = 0
            Fill.ShadowOffset = 0
            Fill.Glow = gmNone
            Version = '1.5.0.0'
            TabOrder = 16
            TMSStyle = 4
            object lb_MyPlayNumber: TLabel
              Left = 37
              Top = 0
              Width = 31
              Height = 71
              Alignment = taCenter
              Caption = '6'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -53
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_MyID: TLabel
              Left = 120
              Top = 9
              Width = 172
              Height = 32
              Alignment = taCenter
              AutoSize = False
              Caption = 'fenix0724'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -24
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_MyGrade: TLabel
              Left = 188
              Top = 47
              Width = 48
              Height = 21
              Alignment = taCenter
              AutoSize = False
              Caption = #50689#50885
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGradientActiveCaption
              Font.Height = -16
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object pn_Dead: TAdvSmoothPanel
            Left = 577
            Top = 331
            Width = 324
            Height = 122
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
            Fill.Color = clRed
            Fill.ColorTo = 166
            Fill.ColorMirror = 166
            Fill.ColorMirrorTo = clMaroon
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtVertical
            Fill.BorderColor = clBlack
            Fill.Rounding = 0
            Fill.ShadowOffset = 0
            Fill.Glow = gmNone
            Version = '1.5.0.0'
            Visible = False
            TabOrder = 17
            TMSStyle = 4
            object lb_Dead: TLabel
              Left = 91
              Top = 27
              Width = 146
              Height = 71
              Alignment = taCenter
              Caption = 'DEAD'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clCream
              Font.Height = -53
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
          end
          object pn_Dead_1: TAdvSmoothPanel
            Left = 32
            Top = 202
            Width = 164
            Height = 53
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
            Fill.Color = clRed
            Fill.ColorTo = 166
            Fill.ColorMirror = 166
            Fill.ColorMirrorTo = clMaroon
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtVertical
            Fill.BorderColor = clBlack
            Fill.Rounding = 0
            Fill.ShadowOffset = 0
            Fill.Glow = gmNone
            Version = '1.5.0.0'
            Visible = False
            TabOrder = 18
            TMSStyle = 4
            object Label1: TLabel
              Left = 42
              Top = 4
              Width = 74
              Height = 37
              Alignment = taCenter
              Caption = 'DEAD'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clCream
              Font.Height = -27
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
          end
          object pn_Dead_2: TAdvSmoothPanel
            Left = 206
            Top = 202
            Width = 164
            Height = 53
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
            Fill.Color = clRed
            Fill.ColorTo = 166
            Fill.ColorMirror = 166
            Fill.ColorMirrorTo = clMaroon
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtVertical
            Fill.BorderColor = clBlack
            Fill.Rounding = 0
            Fill.ShadowOffset = 0
            Fill.Glow = gmNone
            Version = '1.5.0.0'
            Visible = False
            TabOrder = 19
            TMSStyle = 4
            object Label2: TLabel
              Left = 42
              Top = 4
              Width = 74
              Height = 37
              Alignment = taCenter
              Caption = 'DEAD'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clCream
              Font.Height = -27
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
          end
          object pn_Dead_3: TAdvSmoothPanel
            Left = 32
            Top = 585
            Width = 164
            Height = 53
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
            Fill.Color = clRed
            Fill.ColorTo = 166
            Fill.ColorMirror = 166
            Fill.ColorMirrorTo = clMaroon
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtVertical
            Fill.BorderColor = clBlack
            Fill.Rounding = 0
            Fill.ShadowOffset = 0
            Fill.Glow = gmNone
            Version = '1.5.0.0'
            Visible = False
            TabOrder = 20
            TMSStyle = 4
            object Label3: TLabel
              Left = 42
              Top = 4
              Width = 74
              Height = 37
              Alignment = taCenter
              Caption = 'DEAD'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clCream
              Font.Height = -27
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
          end
          object pn_Dead_4: TAdvSmoothPanel
            Left = 207
            Top = 585
            Width = 164
            Height = 53
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
            Fill.Color = clRed
            Fill.ColorTo = 166
            Fill.ColorMirror = 166
            Fill.ColorMirrorTo = clMaroon
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtVertical
            Fill.BorderColor = clBlack
            Fill.Rounding = 0
            Fill.ShadowOffset = 0
            Fill.Glow = gmNone
            Version = '1.5.0.0'
            Visible = False
            TabOrder = 21
            TMSStyle = 4
            object Label4: TLabel
              Left = 42
              Top = 4
              Width = 74
              Height = 37
              Alignment = taCenter
              Caption = 'DEAD'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clCream
              Font.Height = -27
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
          end
          object pn_Dead_5: TAdvSmoothPanel
            Left = 380
            Top = 585
            Width = 164
            Height = 53
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
            Fill.Color = clRed
            Fill.ColorTo = 166
            Fill.ColorMirror = 166
            Fill.ColorMirrorTo = clMaroon
            Fill.GradientType = gtVertical
            Fill.GradientMirrorType = gtVertical
            Fill.BorderColor = clBlack
            Fill.Rounding = 0
            Fill.ShadowOffset = 0
            Fill.Glow = gmNone
            Version = '1.5.0.0'
            Visible = False
            TabOrder = 22
            TMSStyle = 4
            object Label5: TLabel
              Left = 42
              Top = 4
              Width = 74
              Height = 37
              Alignment = taCenter
              Caption = 'DEAD'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clCream
              Font.Height = -27
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        HelpContext = 3
        Caption = 'Test'
        object _pnBase_04_Log: TPanel
          Left = 0
          Top = 0
          Width = 1186
          Height = 819
          Align = alClient
          BevelOuter = bvNone
          Color = clBlack
          ParentBackground = False
          TabOrder = 0
          object ImgSrc_Wait: TImage
            Left = 723
            Top = 32
            Width = 32
            Height = 32
            AutoSize = True
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
              000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
              14744558745469746C6500416E6E6F756E63653B537065616BE1D8436C000009
              16494441545847AD970750955716C73FDD4D71D4C4945D373B999D9DCD8EB3BB
              C96693D5D9C4757615A2A26854A2A0D2548A852252F5D1CB0B4DE920BD8BE893
              C7A317A5F920C8A33DBA1405015144A5082A20FADF733FBA51276673667E73BF
              F7DDFBDDF3BFE79E5B1EB743FD188F8ABA2977212DFF4FE2F4A29C0B6985C3E7
              2579391E8189BE1CC72D50A1FAB44B321E3BF748CE9E60E52F62CC31D98284A4
              EC3FE6E4CBEEDDBE731F4F9E4CE056EF3DE41455C1CD2F818958C8DA300136AE
              119CAD6B3895E1ECBBFFDFA6042C4C4A2FCC644E45C9B9D87FD80EE7C439E8BD
              3B8084E4029C700971646D880521B1995C7C52C18F28EE19E2E47D235C79EFF0
              4F62AE2D4814E7AE299056E16A4B07D475ADA1B6DF0ABBB4CCD178F51A8ACB1B
              E11396044B8700276AFB2BD6FE9716B0F05C725E6C7BE72DF8879E838E911334
              0FDA62378970F38E40F7ADBB90E45C81D03B1E66B67E2F15F1B305580A5C968A
              520A860607876172FC140C2D3CA067ECC28BD0D03D81017A4F738FECFC4A78F8
              27E0A8C0CB993EFB35C14FC9EB322DC05D52C7C385468B14720B64A86F6C83B9
              9D1FCC6C7C6064E9015D432768E9DBA0B2BA014557EA91572C47094D47587C3A
              8CAC3C5DA8B3B788375F83378819E1C20B728EC145C4A70A2AE4579179B10436
              C260089C82604E228E98B942C7C0018949D9A86D6A4751691DEA9A6EA0A1F906
              4262D31096908D70C6992C1EFF847C389CAD7C196376F1B2624194D46CCDB7DA
              4B49003F8DF49E22109B72B6ED7A37E245D970F28C80837B38AC9D4F130170F7
              8941765E293ABA7A915722E7F381A7A70F3769C574DEEC9B47C9B53E1476F4A3
              F0C6000AA89C26AFFD3EC4F21E9CBED48C13D1A5F55AB6E19F4C456301171C2D
              96F5F6DD47789C04EEBE71F00A4AA0E714D0B244596523BAC861DFBD41A4E65E
              41DFDD41F40F3EC4E0E0081E3F1EC3C4C4D379F43C1A43C1BD47A8191A857CF0
              31315BB277A5B78721AABE8963C1854D5F287CF70E1F89C0F0A41B430F46101C
              95049FE044044526A18356C4D5B66E1AF91D9EE1914710A51661747494677C7C
              9C1C4EE0D9B367F318A60D2CF3CE08AAC969D5C023626E39F95C7C6B082EA22A
              68BB882D49C09B9C4F68E2D0E8D838C2625310129D0CBFD0448C3CA486657528
              97B7A0B2A61563E34F109998851E8A06A3BBE72E3ABBEF503486F955325DF6DE
              1B82F7A5164497752258DA3E4BF1EC736871077CB29BA0EE945246021671A702
              13C658F8A2CEA4233A2183D67E149E3E7D8AA4B402A4E796F2B0D10545494850
              2BCA4950B9BC19D2B2065CBF711BED9D04E5487B672FAE130E923A04165CC3C9
              9C66A2E5B972F2D93FAF0DDFD988C749C062CECD3796179028BE88B3849D3008
              132420302209A1B1A93C4C8077C87988334A8862BE8C13E54156DDC2478917C6
              D302B3B80AB8A737C14E5C0FFB24425C4725C14AF68E4A5B512D944DCF8E9080
              251C65FED0E8E81852B3A448CE2882C0D10F77EEF6C3CE35148E1E11107AC582
              4D9147C0190444A6F0F84748402725B20B2A89AA292A21B958011D7F29ACE2AB
              601421835178D964398F32E8F81561EDA1485A8314015B61F04DB60BE6E69721
              2BEF0A9C3DC39091538C4366EE386CEE41DBAF3FCDEF03389D8A8283470C1C3C
              6360E716053A156953CA44F81C3C43D3A07C42823DDFE760874306913E07FA6D
              9F815DCED9D86421C2CA3DA76C48C0DB9CA5BD5F4567D76DFC505683C2926A5C
              48CDC7A1A3CED0D4B3C61E5D018E09BCD075B317D62EC130B509E231B2F285C0
              258C129625ED2C064211BE31390FE5E312AC37BBF023942C930909566A0436BF
              FBFB4F7F4302DEE04CACDC4595D58DA8AE6DE5D77D69793D0AA495888A4F8195
              AD178427C35055D30C0BFB80190147CCBDE01B2AA11D30671EDBAD44D8484E36
              5848A0602A2692A64A31FE639888AF74A3F1B99A7FF3C75F697ECA8F9E6DCBFA
              C6F6C2B4ACCB68BBD685DA86EBA8A96BC50FB25AA4661621384284AC5C29D273
              A43866EDC73B373EEE07DDA3C249E8D0D23176C67E4367A8E87BE09F7B42F005
              F18FDDC13C9FAB05E1EFAA81F84C35007F53F1AA58A1EC68BF64F95F7E3BE59C
              DF8EB95D9A465B4E05C4A1AFAF1F2DB42537B576A0822292912D45588C18F50D
              AD3815180F13C1A4009313DED8B84DC7873E66217C9FA17C3452BAC928068A07
              7C61EE781AFA9627A167318986811336A818A451BB0F8925043B9816AED8EEC5
              ADD8E1CD712BFEFAE5EF8E980A1F0C0F3FA4FD9CD672470FE4B5CDC8A4448C8A
              97E0FEFD411C317585A97520F61D76C486ADFB99F365041B053BE1DE52323E83
              AD9E52ACD38FE6372CB7D3E7E11624826BE039A8E9DA4DFCFB9BDD5F53BB4504
              3FEA3506E7A898B5A5EA072C45C5A5D5E8EABE4D3B5C2FE4F52DC8CC2D86243D
              0F2557E4D0A3706B1D7280E2666D763F64CED9513C7D1F58B8F6601C3442ABB1
              7A5F246A1AAF232DBF1C6979E508884A81B29A690EB56123E78F62E6FC79016F
              2B6DD3DAE2E8168CFB0383BC80AA9A269AF7CB148D6ED80B03A1A96F8B759B34
              98F3F708DE39251DC760CFFFD20ABFB84A230C1BF5C33044E74655633B2A1BDA
              61E9741A8ADFEAEDA3367CC24D3B7F5E000BE3B29D9A2697E575CD7431694529
              2DC982CB32D4522454B52DF0DF0D7BFDA8CD8C7362C11C012CAC4BB44DBC60FD
              7D18FA874620AB6943A1AC01DB352C063E5CFE87E554CF7CF0A17F9100D6E1A2
              55AB95561D3EE63C504DA367D77216053D6307282869C450FD07C48CF3F55B75
              B8F55B0FD0236F4CC03BDA473D211086A1AF7F0825D5CD88A05CD8B4D3308BD5
              112CFC2F35368FACC1E295AB95BE56DE79F0F23635E3F1CD2AFAD27593CE59A6
              4FAE596AABA8BC9F53DC42503965ECDB655A466E242014B7E82A5F58DE40BB66
              0414B6EC67975836FF934BEE45B66DB7312BA645B04C7D976023662167D7A799
              916F5639C42928EFE314364F3265ECBBF7B50C5C70820474D2717D91AE6F8656
              27B14651558BEA1613FCF7C42B8DCF688275387D819C56FEAA8F59DB0F340E39
              E0B84B08AED3D19C2595D3FF0B013EFB72ED6AAA638362FDFE249B7636975719
              AB6742DFDBAB6703131B3F5C6DBF89B4C24A6CDF6B828F3EFEE4CF54C722F8F2
              7E00FC6CC858C72C4A8B1536ABEFDAA9615AA54A7F6854F75960C3363D19BD67
              F9C3AF0062C6E6F531F7C7EB3265AC73E684251BDB6E3F9A626EF2CEB3797DCC
              FDF1BA4C1913301D092684859CC19E5F987CB37D80FB1F35BEEBDC0AA5118500
              00000049454E44AE426082}
          end
          object ImgSrc_Game: TImage
            Left = 669
            Top = 32
            Width = 32
            Height = 32
            AutoSize = True
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
              000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
              0F744558745469746C650053686F773B4579653B49E30725000008A549444154
              5847C597095454D71DC65F0C261A936A12BB44D3A45BEC316D6D8CD1D42A1044
              901D0786658061931D849161DF65934DF66D4018760111655306140CA025B8B0
              289BCABE2B082A58CC69CFD77B9F198E4D49CFE9E9A9FD9FF39B7BDF7DEFDDEF
              FBDF6D661800FF57566D7C95ACDAF82A59B5F155F2DFC46B3FC0FF2CA4026B08
              AFBF84CC4BD06B7A9FF29F19EACA11325D6257A693927D8CE9C81230EDA75CE8
              2D56345DA0BDA939EE08BFF9A4455E73B4596753A4091AC30C511FA48B5A5F6D
              54B9ABDC293BAA509467BDCF5AA8B4ED27E49DB5046A883592A8B295893DF063
              264A6E137362EF06D2F4BDA0A20981C79898002113EA7D8C36B1C2E5C78D3EBC
              966075EA66BAC3527F893786AB8331DD188347ADC97872538485B6544CD445A0
              B7C81D2D274D51E9760862939D7F4BE56C2BF094DBBA8DF4F106813522E0F318
              4F731E13FC391DACEF4507C936C15F40ABAC3041A639DECAB53BDFEDF9447D04
              114AC362A718CF7A8AF0D7FE322C0F54E0DBE18BF876B41ECBC3B57876AF1A0B
              5DC5986E4AC39D224F48FCB490C9DDFEF750B9CDA1BFDA28F336ED8FF6ED616E
              B8BA815B22475AB0E2CE9C3F6DB82972940C5604E0414B2216DA7331D4928D92
              8C3084F90B6169660165150E3EDBAD844F3F53C05707B460626C86201F771465
              44E15E7311265BB2D095EF89F382838853FEF0EAFE0FD66E267DD36959B3AA81
              EB2976B458A3B8F397EB6F89ECFB07CE0560AA2905F50591F0153AC3CC900763
              4D15E81E5282868A1AD434B950E39A4289630C550D1DA82A2A435D6E3FB4E565
              C1D5388C634E4EA8CE89C6404D2C1AC37948D5FE6478CB86351B8906354113FD
              97A0C3BEF6EB18B373BDC5DE682D3E81604F01BC6CF9B0E29B62CF0162C02110
              CE81890848C8455CCE79A497D422A9B00A89F91508492D845B582A4C9D83F0A5
              220F7A1A5AB0E56AC0CBD9115F8B83D178828F68E58FEA89065D81D2C5B912F4
              42A640A8A1D92E72407982374204D6883F711C67CB2B7190EB0241683E02532A
              9057DB862B7D23A8BA7E071E1119D03DE20397A0149CAE6F43DE8536241437C0
              3FB10C725A4EC8CE3D8D305F0F08F97A28887045859B1A9C77BEC7235AEB0934
              E195A017EB2E85190F9E8D1522DACD0667CF96A3BFFF2E4E1554C1D031167EC9
              D5882B6844F3C0049AEE8FE29BF1191615430194B847A1C927F32FB94E4C5C47
              2C79CE4C988490D87CF4F6F6A1B4A4141E7C0E72FC6D91A0BD7D8C686D22AC4C
              05FD582B76523A541D6587782F5B486AEB30363E89274F16E1E29F066B5F3102
              52AA9179AE1597BA0788F0343A1ECEE3C6D42C14398E50386C07056D3B3878C7
              A1BCF10E924A9A208C380D23FB13784CFA181D1DC7858B12F89AE94064A70E8B
              4F5ED7209A2BA3C0665FE9AD999DEA61BE5C5D518DE1A131CC2F2C6271E9390C
              6CC36117508880E41A882BDA20084E42EBD80B036EE1699055B5C07E82ACAA25
              5990F6A86AEA454AC955320D5590D771C3D2B3E7987FBC88E1917154D748E0A3
              7760D9ED77326944F34704BA16D88F0D35BE5AFDF9A2F4F9EEDB7D989E9AC3C2
              E3253C5D5C86BE4D28CCDCB2E07EF21CD2CF5C85BCFA11EC51E061378B11A953
              786C29AB628EF2863B88CD6B845B541914B99E78BAB44C46E1191E3C5C40EFDD
              61881213A7BD76C87412CDF708EC7EA406DEB672CBBDD770A90D4303E3989E7E
              84D9478BC4F933D87A2482EF9A010F6220ADA4053C6B3FECD8AB833FFE994320
              25A9EF604B0E8CEDFC590371C48063700159A0215820E273F34B98997D82E1B1
              079034B443C528AEFF6503740ADE323D2A8ACC2E6C26062630363187A9070B78
              405E8ACF3C8FC3565170093D83885397907EFA0A76CB1BE0D3CFD55FB08BA286
              5DFBB8C82D6F22D3741D61A23A1838C4C23F32170FE79E62E6E1134C4CCF1303
              B338296AC057878F47124D7A26B0534017E11B5FC8EAFDC6C9AF74F666FB0006
              866630323E87F1A97974748FE0A08117ACFC72E1155381187103324B9B6068E9
              853DF2FAF842960B03730FE495B7A0A8A61D31398D708F3C0B798E3B9ABFE921
              C20B1825090D8ECEE256F718F46DC50B1FFF56FEF744F32DC2CA5664A741C73C
              CA2122B90E3DFDE3B83B3883819187181A9B4364F219A89804C1D62F1F3E7195
              88CBBF823C926999A40BA517DB512AE94466592BC2D3EBE09B500935D3E3F00A
              CBC63049820ADF1B9E41EFFD69F846D4609FAA27FDA67B9740877F651BB25B91
              F0AEBE75524A7A5E33BA7A27D0737712BD03D3E823D87B2641C9C00F767E79F0
              3E5981E03409A2B32FB3A2D15997C94928814B48319479FE30718A443779B79F
              24D1736F0AB7FB261097D988039CD04CA2F153C23A02CD9E35408356D8ED48D8
              AC6B199FE4155E89866B77D1D933862ED24157EF2482620A21ABED0A8E4D34AC
              BCB2E04A86DA25BC848C4C2EF4EC62B05FCB15C7024464DA4689E824BA7AC671
              F96A3F9C7CCBC8591122227D6F2148877E459CB1702DA4C5CB26DE57D014F278
              F6E2F1B044092E3676E346D7086EDD1EC185860EF884E780631184BD1ACE0417
              689A064018988173E4986E27CFDC609FEB4660CC05A8F3D32677C9D99A913E7F
              4658F91E50E76790E2BB30131432A62E05B42A35417F446C5CBF61D347CADCE3
              81BA56198336EEC58848AE4776C95F70BEB6032D6DF7D17A6B10ADED436CFD7C
              6D27B24E5F4358621DCC058550334E1EDAAFEE13FCE6BA777E4DFAA25B8E26B6
              22AE66F29201BE733E63E29CC7183BE5D14B6A824217093D2EE982D9F2872FF5
              140FEA06C7AA1BC5D66A9A25F71DB63CB5CCB1CC0229A1659EB9AC6694D4AFA4
              172591D70C88DFBE4B4795BCF373C2FB043AE4ECEF00C26B5458CA4A181FCD67
              8C8838CF31973174C8650CEC7368B37434A811EAFE1D02CD842EA2AD848F08BF
              F88E8F0954F00302FDE1418F596A9EBECB0A4BB35ED5801111E6116143226C60
              97C3E8DB89193D1B31C3B5C9A6B7A546A466E8F4BC49A0A6A80885D6691BBD47
              9FA143BD22BC9AF83F199066AD4FC56DB35F885B6733BA041DAB2C46E74816C3
              2190904ECFBF459D9F4944453F282C858DD5FEADBC4A566D7C95ACDAF8EA00F3
              0F09BDCBE7AF59ECB40000000049454E44AE426082}
          end
          object ImgSrc_Team: TImage
            Left = 723
            Top = 80
            Width = 32
            Height = 32
            AutoSize = True
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
              000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
              1C744558745469746C65005465616D3B50656F706C653B47726F75703B557365
              72937B6049000009D8494441545847C595775494571AC6C7925034AB820931AB
              462C481B502054294A114491629080489391367418096D181C507A57AAD2CBC0
              4815180129418D4824A0706CD185644D34AB89D9C41CD7CDB3F712D964D03FCC
              FE91BDE73C87F35EBEF7FD3DDF77EFFB0E03C0FF55AFDCFC33F5CACD3F530C2E
              97FB923E4DD45F7689A7EF7481AB9B3314A733D41FAD7DBFEF8816CE4568DE3A
              1BBAB5B08DADAE3CEFF9D7CA11FAA98971A85EDA188ED77DFB42A2C9CDF1321F
              DC688AC5D7A3CD787CF3133CBAD18F2F4405B898E3064180D693325705CD761F
              25461B4BF10FE5CCE7890554A208CD23E39561F8FE662FC62B43F168B21B5F8F
              34E0764B32068F3BA125D408352C4D64DAAC1174B3998CAE00D53F94339F2716
              5035FAA8082785C9F8BC261A55873420E2396038C305FD7C7B3404ED4015DB1C
              B5117668883F748D9CA13DD56735BC4BD3171A70A7B7146D71FBD0C377FA6F4E
              354B1B790E1B916EBD065C63B9A1F93CB180AAC47963FBF96C5F143A2BE1724D
              3C6A427622D35E1195E1FB2814CD096E688EB4828863FCDD27D106DFF485AA41
              14A2F1AC9B6342F62D31292AC540711CB21D99E0ED9003CFF43D2459AD47ACB1
              1CC23497B7CCE7890554A9D66BF28ABD0C50E2A18B07D79AC939B6E19BF116DC
              3D97894FB8A6188A36C0DDDA60DC6BE5E1C1E56A3C9EEAC4745F01464F7AE10C
              5B0BA70F2861FA5301C9EDC0648D0FA6EA4350EE638C00E65B38ACB234793E4F
              2CA08A325A65196BB40A75A1D6F8E73D11FE757F00CF1E8C6224DB1957B21DF1
              455B347A539DF0F84A25BEBD528399DE2C5CAF0AC170AA03CE466EC3E98FD6A1
              2E78E76CCEB7BD31F876E0184EB10C10A0BEFCA9BBDA3B5AF379620195959595
              44B2BD46A530CAEE979FEE76E2E71911D12004DE4C5C2FF7C140E24E94BB29E1
              6AD67EDCAE0FC764251B17D3F6A13D441B15FBD7A2D0460E69D6EBF0F3743F1E
              9E8BC6839E44E439A9FFC2B5514BB1B0B0909ECF130BA8343535179A9B9BBF5B
              C6B69C9CEECBC58F537578325E8B13B6AB3156E08A930EF2286419A3C25511AD
              FE1A68F565A2DA6503F277AF42CE4E1964EF94C5314B793C19AB22066271ADDC
              0FFC3D8A374C4D4DD792DA8B3827341861B95B1821594C4650A6F2CB06A84C4C
              4C9626381BF3BB78F678D0C5C177A395C8B5DD808E48631CB7DE80AB1D99684F
              3F8C44AB8D38A22B8B506D1984E8C8816BB80C7CA3E528F6D0C3E391D3F8A63B
              0E8290ED609B29A5929A7F6190159CA9CA084C5766F8A76E66F81E5778B50105
              058537B69BEB6C4DF5D9F6FC6C9C0DAE9F49419EB3260A3E5440BEBB3E1E4ED4
              E3C92D21662E14E2BAE0082E17B8A32BD905411A2B10A3BB0CF5514E18AF8D27
              5D61861827E5E77A465BB4D7AD5BF72635D07F83C3E89D0A65B0F8F20CAFC4F7
              C50D90B590E8CDC04463665AF5DED18EA60894721C50CDF54669F84788D49145
              0BD7094FBF10E2F9740B9EDDA9C7F7175231D3148AA9DA082458AC43A4FE3BE8
              3A958C9341B64872D6C7C73E7AF04EDC7CC5C2651593D496245AD431E1CF708F
              5FC3708D5BF5AB81176089C83433BDB41A1B41519BCBF3D64B5128AA75446F13
              07FD55F168AB484469A41DCEF29CF0EC761D9EDDACC64FE38578288AC5B42010
              336DF1C8DBAF0ABE9B3E46CE9F84A8280C3951BBE1C95A8BA4EA1D084C53FAB7
              F391D542F3836F1B129634653A1D799BB2190BED589B561FAFDADD5E72D60DBD
              637C4C7C5582E13B09A819F4444C9101DC62E51196A183CAD660D484EDC2A38B
              59F87134178FFA13F0655330A61BC371AB3E1249369BD0D8C503B7D47436C737
              59094975BAA818DE8B86CB2EC86832052B591E0EC1B23D4C43A93584BD881A78
              33284DBDB171D81F63338504CC87E87A083A2702D1FEB90FCE5C3D04C1882B4A
              06764178291225F1B618C973C3FDD670CC08D8B85BE38B2FDB62D1CDB3432ADB
              0C3D57537F976385FC5E13E49D334476D736E4F598A2E8BC15624F6B60D7E1B7
              6A095B8A1A9066A72B7FDD7135185517C9BC274E9B463DD034E286EA8B8E281D
              DC831C913132BA0C70BADF0DC5555EA8F037C634B91FD3C208028FC31D412452
              EC36A3BC3604CD974308F8B79CF4B3BA486DFF00C75BB590D4A281E496AD4816
              EA62B7DF92AF087BB63396F8242BFCD0F2D96114F49820F79CF1ACDBCC2E3D92
              AC8334927CAC4513B9DD96A81CF44161FB214405EA20DF591D4DE1E6A4CD76E0
              18193CDEEE4A38D5E9873AF2250B4456B339492D5B70F48C3A784235F09A5410
              2F50466C8312F8673460ED27F51361AFA006A43D13DEFF8A53B0159145CA88AE
              5001B74E0D7135AA24491DD99D56281F60A17A3000198D1F222A6F1BA62E9540
              48E6C0D17D9AE0EE6522C94907E9DE7AF04D50414A8D3DAA06D828EDF5445ADB
              7644556F4668F17A8414CBC32FE7AFF03A2E8703712BA9811F087BF60B2C5AAD
              20B9729797ACEB5E3FD92CBB40994EFBA01593FE891FDC3A5AE8F8F468A113A2
              73772228431319750E286E75C7B1131638472EDF10F90D683CEA88139126080E
              5706BFCC129C1C3D3847CA2328C910DCFC0F11936DF3D4338679DB92253565EE
              21D9BDDD45F284BEBD84A7CC7B0B490F3216CFB5E102A23788689F2E21A2CE64
              0EC5AB7242B334FF71B2D50523773270ED7E1E066FC4A2ACEB00E20A8DE1C5DD
              08B798F5A443B6224BB00B6DA387219A0CC0A93E3B0467A8C0DA67F9DF8D1C97
              46935A1426F3A22E6D413A9416ECF6277770DE20A28B9A59EC97CC0CCA6FB6C7
              C8BD545C99E163F04E38FA6EB1D17F2B1003B7C3209AF245DB8407DA27BCD03C
              7610F523E4C20E5922AF771B0AC83DA2B73DAFD3022CFE7A183949F9909AF4E5
              E8BC5920C6140B7E5DB343C93F8579AF7D8C05E1D83EB48CBB10903B5A3F7785
              60D411E5172D5134608C13E70D496B1920BB5B0F19E4C2A6B66B93CBA705BE50
              033CC116240AB4105FA90D3337C9315293BE3DEDFBD73220458748F7A42FCA86
              77A078C804850458D06788DC1E7D648B08B0530729B31DF202D8B805F1F5EA88
              A96522AA4A059C722584972922AE520B66EE920F494D7A04F4985FCB80B4F751
              05B45CF598056611607AA736523BB47E059ED98A440A6C50436CAD2A3EA6C00A
              65449C524468A902828B37817D7223FC0BD68353BA05661E924F484D6A6031D1
              6B19903C18B37E90C5DF84800C52306F33C28B95C0394520258A082F5504A752
              0911A75F004B36C13787CC82B4B5F04C598303BC77E1F8F14AD8862E87D5E125
              D8EE2AD9456AD223782D03B39790485A6F8F8C828DEFBB7E7BFDE4B26DD9EF74
              D8B2578EEF095831B1C777C5BD3D7ECB60EDFB1676B196C2D27B09CCDDA5FF66
              EA26756DC741C96B262E125D86FB25F2F5EC2442E4D517AB925ACB892488E8CB
              8933C582DF1635412F0C6D173AAFE75A7319119D5EF473AE24A23F67BF17DD93
              25A2FFA7CF2E25A2B79F9E3D85D3BAE24CB1E0E545136822354345BF0C2D3627
              6A704E7331FD4B9FA3A23973E059385D624CB1E0D56B2EF97FD54BEB372697F1
              1FA84DD17BBF233D730000000049454E44AE426082}
          end
          object ImgSrc_Item: TImage
            Left = 669
            Top = 128
            Width = 32
            Height = 32
            AutoSize = True
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
              000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
              12744558745469746C65005374617475733B466C61673B83001E630000081449
              4441545847C596795453571EC79F75B4D676D46A15516C6B5D202848D8040414
              28900012640D44F67D0081004611042A20C826CABEBAC6DA28880A8212414144
              D0D2511099535BC04AA532C719ED38634FE77CE7DE042C8499FFAAF3CEF9E4BD
              7B7FB9BFDFE7DDDC7B8101F07F45FEF1DB3583F0CE2466DC19D9C5740EC7326D
              0F2399E607A14CFDDD00A6E6B61773AAC38D397ADD89A990DA332597ED989226
              5B19C553B0618A1A6DE55CB2610AA7C0650A1AB8D304DEF18E2DBFEA1D5B01EF
              D8B2ABA43D739CC952AFE526789DB4C186249D0C97395C6F4320F78B5CE610E5
              0285C3E453CE73A608D06433B3BFB4C13F5E3D424092363A8762D13128C4F587
              91900E84E1D2BDC017B5B77DBAC437DCCB2BAF3886E79EE5ACA6630832215972
              929426A61CACB366F26490E7731C26EF9C35937BCE4A464E0DB9131405666589
              B968EA0B80FF5E6D10CBA77D8FCE63F8691B46FFDE8DB17F5DC7F05F5BD1FD7D
              012EF524A0BC918F9C5AAB96E4EA2DDA642C159971FB2FA798E19FBA640C8DDE
              FA9F644A2C99CCAF2CA70B78C594A3E0642B6CDD23C00B513B9F586A8EAA263E
              EA7B42D1FF2C0D63BF5CC1D03F8B31F8A212BD3F54E3C68322145FE4BF4CAA32
              3525E36512434F3B99C763DD448216EB24DC9C46FA490B264D6C3E45804EE36C
              AF98321C3ED9021BB730D807A9EE8D3C6084B20617D47605E0DE4F2978FAAA1E
              03CFD3F0F5E86E9CEDDE8ED2261E0ED53A22F584F95D327E0EE10FE3B964EB63
              70B483197C72833CCADB84A96B4841E05D2F6119F28F5F05C72514B6FE6B3D42
              F6E9A1F8822324ED3EB8339288272FEBD0F72C19371F0921B9E58E827A0EE22B
              F490526D85C44AD306FF04F63A92878ACC22509989854C9F6713DE25D0387D9E
              A92830C74B588ADCA3CDB0760E86B9EB4A23BA160AEA78105FF3C4AD21111EFF
              2CC1DDB13D68FD2E1CE20E5764D79A6157B92EFE94A585F8226BA49DE0FE2A2A
              32AECB126FF516659BB148CE0FE2322C5617489CCD4F5DF789AABB1D54257D10
              31185768D44362B31505DEF3240239472EC3725B20D4F5177FE69BA845A6782B
              4EB478A0EDDB180CBF1093E917E1F2803F8EB63920F5B40144653A08CED084BB
              481D99C71D20BE2AC4998E087CD9160471BB272EDC0987F47E3C59BC0771FFC7
              9368EE2E8157BC460DA93767B2009DA6B99ED125C8AA6AC2E73C3F7C307FB6B2
              4F221B076BEC704CCAC7D5811DF8EE5915BA46A271B1D70B25CD564811EB21AE
              541B81E91AF0D8A58ED02C4DC414B351DAE88A96FE340C3F6BC2E88B0EFCF8E2
              3A7E78DE8C3F0F1E85773C7B846DA6F429A9374B51E07DCFE8621CA8688085BD
              2F0D28F9ED65FF9C2DE1E288D40D57FAC230305682F6E1709CE971455E833192
              4EEA22B6840DBF7DEBE111AF8E902C0D44176A21E1B80E32EB0C5176CD128D0F
              82D0F6BD101DE45C094F37F8B789938A23C9FD9EACA682C01FB74715617FD945
              98D979D2803211789E759A83EA665734F586A06F34172D0F0371AC938B9CFA4D
              A49036A20BB4E095A40E8FDD2C0466AC47E4E10DD8734C1B197506286AD98C13
              DD1C9CEF13202EDF049BB629EFA2750874514ED9055460DEF6A842A416D5618B
              8D800654FC92D8BF664B88C0151722108C9EC769A8EFE7E34887350E90371455
              6921FCA00604F12CB8EF62C12F751DC2F23420AA6423BD66230AA5A638D6658D
              9D457AD0DFAA5448722E20D01D30C3D2FB9329E700359A2F883C8C94825A9872
              F858A5B990ED97CC46F6196B544B5DD0D8EB8FCEE1785CB8EF8ACA764BA49DD1
              87B058132107D6812F52037FA71A7C92590826ED98124D249FD6436EA3097C93
              58D0E17E5444F27F48A0DB50760E6C11A84C135820D8710849F967616CE90A43
              5B155EC0176C1C9058A04ACA43639F2FF9DB1087BA5E6794B69A23E9942E220A
              D621205D1D4E4255B8C6A94190A0067FD28E2CD0400499192BBF15AF342D16C6
              90DC538A1B392D654CDC964D13F8D023221F09795FC1C8DC09568255BB83D2B5
              9029D98223AD0EB8DCEF876BDF4622AFD602C1FB35E02C5C035EF86AF0C2D612
              0135B8C4AAC24DA40AE79835E0047C0A2347E51BAB74E61991BCF30974DA65C5
              DBEFE73186DB9418C71DE4989824404FAE85EEE17988CF16C360330F7641AA92
              881C36324E6F466299097CE23541AC7FD968AFD4A26BB3248D6DB9C48D65B0C8
              908CFB786BE85AA953240B963E2B478C5D548EA81B2FFA9CF42F22BC3F9E5B56
              BCE56E06D37A2F8B312002F661AAD30416251499E1C9DF6EC22D4A1D0EE16A8F
              FDF76D808560C54B5DDB25352CE305BEF317CFA6FB97269E47A0C9E976A277BA
              B83E1A873ECF25C88F5B5298D2F4750AD3FC4D2A23FD269D31745CCAD805AF79
              2D40BF400516EF29DC82C67BFE44603DEC4254FBCD059F252AAD9C4B54998504
              BA7D269FF3F4AD26A06DDA3F117B5DD88014DBE8A0445822C360DB5286AE016E
              00F977424160896B480684A955D033B6A18195045A98BE0D8DBF4E3A81299FAC
              6485BE094CDC96339B5C969162CAB2379E80B6693F4741804E97924BD07E44A7
              5410012E0D2C27C84FACF1A4FA3CF95BD04434C966F7158CB9E727B264933113
              7C2C8B9910416357B9C804B44DFBFF9BC052E7C034EC482E838EA1350D907D22
              DB3A34FE662E05016547FF2F10B6B718DA06965304E8F7DE04F20FB9002DB46C
              9B6F1242F71482AD6F4103F42778AB02CB79DE0908161D82969E190DD015F656
              0554ECB7EF46605C1E347536D3C08AF1FEB726B0C2CE6327FC6272A1A96D3A21
              40F7FDDBFB096CF842F844654243CB9806DEEA1AA007CD220B87E0B6751B3681
              A5B1B18DB6C7FBDFB800BDE8714A0F1D7A962B8FDF699BF64F1BF87B21FF905F
              7416E88947DF989E09938FDE69037F1FC0FC079FEF1713DB09C40A0000000049
              454E44AE426082}
          end
          object ImgSrc_Private: TImage
            Left = 669
            Top = 80
            Width = 32
            Height = 32
            AutoSize = True
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
              000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
              32744558745469746C6500437573746F6D65723B456D706C6F7965653B506572
              736F6E3B436F6E746163743B557365723B436C69656E747E1136E8000009F049
              4441545847C596775454D716C6AF496CD1A829767A8F8C8248AF8A8803086AA4
              0411E955A48522835441460816BA80F42203520208468D8FA211410DEA03A2C4
              16139F468D64259A97A85FF619829AB548D65B8B3FDE5EEB3777E69E7BF6B7F7
              3EFB9C3B1C80FF2BE3DE7C9D461F6D42976BDD6EC09D0833E63AA34DF96713D7
              EEEFDB6DD9733EC5F24E6FB205CEC4AF797C2AD2B8AF2D50B7A9C16BB9EDE1AD
              AA53AA9C54B88ACDCAE3FA7C9D716F8EC1ACDE4B8BABF7D45CDAE8ADD5D2BA4D
              F779678C31AE146DC5DDD37BF1E852319EDEAEC3C3F3A9B8D91A848BD9D6680D
              5C860A47C587A5F60ADA257672621FE3F91E63DC9B6330AB735FBEB8C95F67E4
              4AC9565CCA3422B12CFC72AB01BFDC10E1A7E10AFC74B5142303B978D0138D87
              3DB1B856ED888E9D6A2875947B727083A4E18403A871599AD29D6281EB0D1EE8
              885A82FB3DA97870FE001EF4EDC50FE7D270FFCB14FCA72B0EB75BFD085FDC6C
              F2C2A9600594D82FC25EB3F7BA261C40C566956B17B26D7021D302D5CE92688B
              D0C4F5C66DB8D91C82EB4D81B826F2C460B13D060E6DC215A227D910C7FD6551
              6AB7087B56CD7936E1008AED149EF5A6ADC167416A28DAB410A240639439CAE0
              44C40A74C5E9E174A2114E45EBA23D54032237051CF590468B9B148AE9D964E3
              596227E3F91E63DC9B6330CB5B2FF9DF13947585930CB2374AE3B7C7836813BA
              61AFF9FBC8B29C8B3CEB79C8B19A8734D3F7B0537716BC55A6E1C8C78B516833
              1FF1FA339F4C38800C8B05B7EA3C9549642E096F057EBD0EFCDC8B3BE70AD12E
              DC849CCD4AD8672B8F227F0DD40A56A2AF260ABB57CE7E9E633117D1DAD3BF26
              1793C6F33DC6B837C76026347DAFA1D8419A327C1737CE94034F87819F3A8091
              2F801F3F076EA5E2C5752146BEDC8E1FBBFCF0A82F1502EDE9C85CB700E12BA6
              364E388058FD996EE9E61F20C964169EFF3C083CB90A3C3A312AFE88B8918C17
              D7E2F1E0A407EEB5D1F9F04538A2B4DF46A2C96C04AABDE533E1008C25264F49
              E52F7C9EE32085678FCF530014C4C3B6511E34015FC7E3D9BF05B8DBEC803B0D
              B6B8DDEC8518BDD908D39CFE4267FE1B33271C00D99BF5C12B07DB628DF0E40E
              65FCCB00091F057E6806BE2F0386A2F06B6F206E8BAC71A3DA0683158E48E3CB
              62175F8EADFF64E29F03F81FEC8D02576D971A7FDEEF77CF6652035EA6008E01
              F7EB81E13DC095706A07177C536A8AE1722B9C4EB7409CDEECDF428C24BD68AE
              3800B197BFB3F8A29562522AF85C418BEB5FF8D3DE2066E43BCB675DA9F6A7D2
              9FA2ECDB816FF603978281FE607C27B2C250AE1EAE9659A031540B814BA7EDA3
              39EF126F119376641B729144449601179EA1CF7D7280A14743646301ECAFDDF4
              7701B00CA609CC175A34471A50D9ABA8F3F3818B01C436FCDAED8EE102430CE6
              E861A8C88CBA7F116C6426AFA5396CFD59F05C58A601174682A1FBF5B8907D7A
              5C70BA2E17F4A92E1B7A15404EA3D33F05C04AF97EE6FA855FDDED4C02BE2BC3
              8BFE4FF05BB70BEE8AF818CAD1C650A129BA530C20D09876819E5D444C25C401
              BC12D5E1B6A7E97001A9DADC36A1361B7A15406ED316EED6C86131B747AA89C3
              A30F8C06F026F18EAFD66C7BD1765DFC7EA3084F2F25E15E9D156E5598D1FAAF
              C540E12A646F588C75D2933FA667DF27C4E527B8D2D3765CC9695BAEA87B2357
              D4B581F3DBADC9F9246BB2A1D72AD0E4C4DD7C5C35CA48255D2B461F7815C0DB
              3B025605A7D8F250E5A385AB2DB178786E0F6E37B9E1EC3E331438C822C4703E
              36AC1637DF2CE2650316777F44E21BB8439DEBB9C24E6BCE2B5183F34CD06043
              1C1777C8848B2B5CC91DA8B3E7BE7954C65D67FC58CA86D8E431F1A9F18996E6
              E5C95B9E77544520738B3A924D3EC02EDD99C40CEC329C03A1A504B2DC7910D8
              AA3CB3B3935F437366102C08367F5261A70D57D0B18ECB27DC62D539D79D6A74
              9B2C26DF8430E68415EBB8E18787D82D26CAD68E95704A643A5F6B77C9C6CADC
              7AD7E7036732719FFE055D1045A12A74350E7A6821CF551D459ECB7124440F6D
              3BF4914F6FC59034FDDF5D046AE5962E8A5AE4833523EB07E68FF99DE42C58C6
              6D895A4A5FC90479469C20D7887D7D5D786A78BAB9E9AE229BA359F55BD07E51
              80C1FB79A83B1980613A0BEEF5E560B0518033D92EE84AB7C5BFF658E38B4473
              7A1919C02F4A1D955F3A21A5C60C7E422D3886F35AF92EF296E4733631FD4FFF
              933E0EE3D1858CED4FB297A58EDCB7D636A1D0FA5C0E091FEF8F46FFDD34F4DE
              8945E78DED3871CD1B792D9BD050EB8B9EC6085C6D8CC4854277340AAD208CD1
              8757BC06728F5B62EF311DA4346B606FBB1112AA8CE093AC01FB60D55EF3AD0A
              CEA4C102994288770817460703D99BD2CA736604A5E9D7E63438E3E4E59D38FF
              ED6E74DF0CC7B1AF5DD032608FE6015BBA3AE0D8900BCA3BEC905AC347588601
              02F6E82022DB10C995A6C83FC547DA512D2436F2105BB704D12215C4885491DC
              A889D8721D7826A9639DB7720DE9B1438A05C112177F4CF18CD50816565BA2F5
              8A1F3E1FF447D365071CE95F8F3A313684356ABFB282E8A215EA2F7D84A64B0E
              F8ECB2131AFA1D51D26D898CE3C648FE6C1912EA7988A9FD1082C3CAD851A984
              C80A4584972B20A242193BAB79704DE061A5BD4C0069B2DE60551797E26DDF64
              CDFE928ECD28ECE263DF716D149F598DCA3E3E2A7BD7A28AA8EC5D83F25E3394
              F5AC46E9D955283A6D82DC0E7DA41ED54052D3322492706C2D655DA38CA82A25
              1254445899023E29914748316DD122598416C9212053197C778533A4C9CE0AB6
              4BC451CCF2D9B5E2694D8F33D2DBB5B1A76D39D2DA3570E0A40E891822BFCB08
              85DDC6743544CE293D649CD0A1526B50699722E1080F71A225D8795805519471
              44390997CA23B4584E2C1A542883C002196CCF9722A4117C5009169E0A0F4873
              21C19641DC9573DCE396E33005B0BB458D508790AE8C945675A4D0EF9466DAFB
              54E2A4A6A5E26CE3698D63485850AD42A5A6328BB325511266A241625169041C
              94C2B65C49F8E510D91208CA53C05A77F99F497331C1B6E76805B646AB21B1CC
              8C9CF290D0A08A046A242694D0405096F14754C5258EA9F910D124CAB28D7C99
              2D95F91065FB175129F8E748C097447DB324E093B9181EE912708A9303DF5381
              FD115840882BC07A60FA2A7B59E3F57E2A59F6A1AADF3B45A9C2357E093C854B
              B02DE3432A9B0A420A94119CAF84C03C25041D5440185B5B5A537189F365E09B
              2103CF7469787C2A0DF73429B80825E1142F0DDB08196C089685959F3CD6B8CA
              DF33B4953AC4339E67419AECB866D57F79064C23D81E9DCB3398B7C270A3D466
              D3CDB23116EE8A224B6FA51E2B6FC5014B2FC5418A7ED0C253F1DB75BE4AB0F2
              5184A5B7222CBC1460EE267FC7CC456E688CD5CEB27D260ED20DBAD61249EAAB
              1778C8F0E6B0D34E9A9847BC438CBE2BEC425539BB9025F4FDE529C8CAC24E2C
              B64D5840AC5BD9A4F9046B1CF6AA9520A408E6700CF65BF24FD8385B6336E703
              620EC1FC31BFCC3F4B9812E7B83F00697901FF8E4C464E0000000049454E44AE
              426082}
          end
          object ImgSrc_Notem: TImage
            Left = 723
            Top = 128
            Width = 32
            Height = 32
            AutoSize = True
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
              000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
              29744558745469746C650052656D6F76653B44656C6574653B426172733B5269
              62626F6E3B5374616E646172643B63564830000007D6494441545847C5967B54
              55551EC7AF35932528A68834285C107C5C4179280AA8A0C8430151011D0719CB
              547C04A9808280A082C84314310B46407CD1226C413EC25010C4D7882294AEA4
              888B0FD0204573A4D5C4F9CEEF772EE726DCEBAAFE997E6B7DD89B7DF6FE7DBF
              7B9FBDF7B932007F2A5A1BFF9FA8FE688F3EC42BDD70FD8F04F7EF3D5E23C7CB
              0C4803FF4AF4ED86EBBFD708F77995788D78A31BCEC16D3DC66B33200DEE5BB9
              7061A8327947A73239A9B32220E03D6A7BBDFB599F1B8B17CB98DAC5812A0255
              F033E22FC41B657EF3431A13133B1B13123A4BE7CE5D476DFDBA9FA94DF43620
              89BF7E6E817FE49DBD69F8EFBD3A11E59E149CF1F30BA3673C1BD144D783AF64
              22ADCC97D4A416EF77CAD7777DD3AE24FCACBC869F9B6AF01DD54FCDF18DA667
              3ADD7D4413DA0CBC56EEE7B7BE99C47FBA598D27A585E8387E043FD555A02923
              05A5BE3D67F24B4BBDEC97FBF554558BEB7CE6ED13D6989E84E757BF40FBA10F
              D0969D8A6755C568DCB91D27BCBC23A80FAF24BF4E0D03AF4C92CB751BE2E33B
              9F5F3B838E92C3785C942BF2A82807CF6BCAC0898F7BF9F04ABC3813B578F16C
              AFB06F5313F09FCBA568CBCBC0837D4978B83711AD19DBD0F1F951DC8A8AEE1C
              6B68A8477D7915350CBCEA653172E0C5652B9EB417E5E38782AC5F39FA11DA8F
              7C48894F81058A67CD6613BA046F3446F798C7ACF086E46D7876E124DAF6A7A3
              359385B7A275573C5AD2627137391AD54B973F73363619CC5A84E60A107DF759
              D9BC5D1914D8D57620136DF9DD1CD883EFF3980CFC78BE040D3BB6E21337CF70
              EA3F902974F388B89DB4053F5695E061562A5A766DC1FDF438DC27E17BC99B70
              677B24CEFA7A77ED568C7F97FAF33ED2FA0A7829D959BFDD632C57562C5AD8F5
              203B0D0FFFB5130FB399343CC8223E4AC1D3B345F83A210E87A6BB461D72718D
              BA95B0194F2B3E45EB0749B8BF7333EEA6C4E0EE0E124EDC88E66DE138EDE5D9
              956C3E7A0DE5EE4FF091662D0D031CD2FBD44D19316A75D9FC795D2D7BB78B89
              B96CA1656DD9436424E031BDD39BF1D1221D6585621B2F33CFF64EC206346F0D
              87326E1D4EBACD1412E4E67C8C07106A710E0D0339160A2EB80377ECBFDDC47C
              F5E73EDE5D77D3E3718FD919877B6934C354D52C7F283E8047270E535B1CCD74
              0394345B65FC7A3491706374284A5C9C85B8BF9984502EDE78BC577A5C661A06
              B2E523654F2B8E71553231207E987CCD094F8FAEE6A428DC219A6986CD899150
              D22C95DB22A0DC128626168D5D8BEF6242493804DF6E5C85222747216A885128
              E5E07DA216DF6B644A852A340CEC1B6626EBF8A240D671BA80FF559B881E6A14
              72CC6192707B4D10BE890846E38655688C5A8346493062251AD6BD8BDBA14B70
              6B59003EB61E2F440C1AFA3E8DED21DE5E9227DB3D74185555A16160CF5BC6B2
              47270E12F9B247C7F3B9493C19847E98BE6158A1AD8D50BFD0135F320B3C501F
              A0A22EC01DF5FEEEA8F377C311C518E13DBDC17CE11810D2A5D3A7AD304BC6EC
              1C6C48FFAA42C3C049173759FBA7FB65EDC7F6F3BFBC023C98930CC9B0B1DF7C
              71C9627C15341737E6BB753313B5F35C513B9F10CB99A8FA7B00D2ACECE269CC
              50423A727D1E1CCE9431A903D9972A340C7C36C555F67DC13EAE4AE2BC7C6F66
              5ADB6FBAB47C2994C951A85BE485EB7367E0BA2F331DD7E64CC7751F172A9D51
              E3E38C6F36ADC6F9254148B79C104363F9D2E115144DB4E4A4C93E993085AAAA
              D03050ECE0C28524CE0307ED1E3721BAFA9D7FA229211CB50B3C51E34D42DED3
              88A9A8F19A8AAB5ED37075369512B3A6E0EBF0E5A80C5C8454854D2CE56013EA
              2FE9C7B68E54A842C300450FF1744BDB98AAA04034C6AD45AD9F1BFE4DC9453C
              9D7085F1601CBB71C01577075C769F8CCB6E9371336409CA17042069D4B8CD94
              4B9F50EF07428CDE067A88A7296C62E83644032DE9355A724E7E454C4E222470
              69E664E48D3015988B3326E192ABBD8A1913A99C888B54D6072F42D9BC794830
              B78CA39C43881E26B419E0773E2865B475CC597F3F5ACA15B4D42EBF262738F1
              059789C833930B2B74F46299031623846AE709D46E47D8E282B32DAAA7D911B6
              B8F18E1F4ABDBDB1D56CAC648227A861801BF81DF54FB4B00A3BED3307B7DE7F
              1B57664DA584AAC4D5CE949C384F89734D4D8435BA0337527F2366B5EEC0C83C
              F31142D5146B9C57335EA4CA691CAEFDC307C75DDD112B1FBD81FAF3AD287ECA
              7B1BE04B47FFA89D73475D70202ED33BAE9E6A83F3229490A872B2468EDC5812
              E7F3C43F4E180336916B662A9C73B04225716E3263897393545CF6F340BE95E3
              13EACBC753FC26683570D0DAA9EDE26C671253B9AF7264281925CD31192EB010
              F56371E9E719C3758355BA7A51B9A672A1DC5E818A8984FD18A8EA637066A225
              7215F6EDDC8FD06A80130D88341E195C68632F543AB0F3B1A820CA89FDC6C37A
              8B4B9B89E13AB70D5DA9A3B729576E229CB11B85B344B92D95C4E15156C23A43
              D3D5D487AF67F148BE68808313F126D48F30325F5B60652394D9297066820259
              46465AC56B9705C86A97FA53B587094336913D7CB8707AFC48948EB3C0418BB1
              42A8819C7F45F1F24B17934ABB97017E205EBD616F99ADFC506ED54E3C0AD6D1
              E3EF398BAB8F51B29EBEEC45B8ADFB99B812CB75F44233872B1E670E53B48718
              98F08F911E5733A16180434AC22E79B7F22086974D722E0E7E49BC38FE4D82BF
              3C0CD7D5B721218636031C52123E2AFC4A18AEFF96B814BF7BFCCB0C48C19D5F
              E48FC66F8E571BF8F380EC7FD99CCA8311307FDD0000000049454E44AE426082}
          end
          object memo_LOG: TAdvMemo
            Left = 14
            Top = 8
            Width = 441
            Height = 793
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
            ShowRightMargin = False
            SmartTabs = False
            TabOrder = 0
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
          object btn_Back_LogScreen: TAdvGlassButton
            Left = 1048
            Top = 24
            Width = 120
            Height = 74
            Cursor = crHandPoint
            BackColor = clNavy
            Caption = 'BACK'
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
            TabOrder = 1
            Version = '1.3.0.2'
            OnClick = btn_Back_LogScreenClick
          end
        end
      end
    end
  end
  object tm_Level: TTimer
    Enabled = False
    OnTimer = tm_LevelTimer
  end
  object tm_PlayTime: TTimer
    Enabled = False
    OnTimer = tm_PlayTimeTimer
    Left = 28
  end
end
