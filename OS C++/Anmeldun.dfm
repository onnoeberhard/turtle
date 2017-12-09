object Form1: TForm1
  Left = 193
  Top = 113
  Width = 971
  Height = 581
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 16
    Width = 681
    Height = 97
    AutoSize = False
    Caption = 'WILLKOMMEN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -96
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 488
    Top = 120
    Width = 305
    Height = 49
    AutoSize = False
    Caption = 'BEI TURTLE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -47
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 344
    Top = 128
    Width = 66
    Height = 75
    Caption = '!!!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -67
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object RadioButton1: TRadioButton
    Left = 32
    Top = 248
    Width = 201
    Height = 57
    Caption = 'Mit Passwort'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 592
    Top = 264
    Width = 273
    Height = 57
    Caption = 'Ohne Passwort'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = RadioButton2Click
  end
  object Panel1: TPanel
    Left = 32
    Top = 295
    Width = 473
    Height = 241
    Enabled = False
    TabOrder = 2
    object Label4: TLabel
      Left = 40
      Top = 8
      Width = 31
      Height = 13
      Caption = 'NAME'
    end
    object Label5: TLabel
      Left = 40
      Top = 64
      Width = 46
      Height = 13
      Caption = 'Password'
    end
    object Label6: TLabel
      Left = 40
      Top = 128
      Width = 104
      Height = 13
      Caption = 'Password best'#228'tiegen'
    end
    object Edit1: TEdit
      Left = 104
      Top = 16
      Width = 273
      Height = 21
      TabOrder = 0
    end
    object MaskEdit1: TMaskEdit
      Left = 104
      Top = 88
      Width = 273
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
    object MaskEdit2: TMaskEdit
      Left = 104
      Top = 152
      Width = 272
      Height = 21
      PasswordChar = '*'
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 520
    Top = 312
    Width = 433
    Height = 57
    Enabled = False
    TabOrder = 3
    object Label7: TLabel
      Left = 24
      Top = 8
      Width = 31
      Height = 13
      Caption = 'NAME'
    end
    object Edit2: TEdit
      Left = 80
      Top = 16
      Width = 297
      Height = 21
      TabOrder = 0
    end
  end
  object Button1: TButton
    Left = 784
    Top = 487
    Width = 137
    Height = 49
    Caption = 'Okay'
    TabOrder = 4
    OnClick = Button1Click
  end
end
