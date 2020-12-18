object FormSignUp: TFormSignUp
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormSignUp'
  ClientHeight = 282
  ClientWidth = 442
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
  object _pnBase_01_SignUp: TAdvSmoothPanel
    Left = 0
    Top = 0
    Width = 442
    Height = 282
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
    object lb_Title_SignUp_ID: TLabel
      Left = 113
      Top = 49
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
    object lb_Title_SignUp_PW: TLabel
      Left = 58
      Top = 81
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
    object lb_Title_SignUp_UserName: TLabel
      Left = 49
      Top = 114
      Width = 82
      Height = 18
      Caption = 'User Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGradientActiveCaption
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ed_ID: TAdvEdit
      Left = 143
      Top = 46
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
    object ed_PW: TAdvEdit
      Left = 143
      Top = 78
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
    object btn_SignUp: TAdvGlassButton
      Left = 140
      Top = 172
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
      TabOrder = 3
      Version = '1.3.0.2'
      OnClick = btn_SignUpClick
    end
    object btn_EXIT: TAdvGlassButton
      Left = 140
      Top = 210
      Width = 172
      Height = 32
      Cursor = crHandPoint
      BackColor = clNavy
      Caption = 'EXIT'
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
      OnClick = btn_EXITClick
    end
    object ed_UserName: TAdvEdit
      Left = 143
      Top = 110
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
      TabOrder = 2
      Text = ''
      Visible = True
      Version = '3.3.5.3'
    end
  end
end
