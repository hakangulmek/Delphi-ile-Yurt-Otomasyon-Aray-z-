object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 586
  ClientWidth = 1124
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 257
    Height = 369
    Caption = 'Genel Bilgiler'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 53
      Width = 62
      Height = 15
      Caption = 'Ad'#305' Soyad'#305' :'
    end
    object Label2: TLabel
      Left = 15
      Top = 112
      Width = 63
      Height = 15
      Caption = 'Kay'#305't Tarihi :'
    end
    object TLabel
      Left = 16
      Top = 176
      Width = 38
      Height = 15
      Caption = 'Okulu :'
    end
    object Label3: TLabel
      Left = 16
      Top = 248
      Width = 48
      Height = 15
      Caption = 'B'#246'l'#252'm'#252' :'
    end
    object Label4: TLabel
      Left = 16
      Top = 320
      Width = 35
      Height = 15
      Caption = 'S'#305'n'#305'f'#305' : '
    end
    object Edit1: TEdit
      Left = 84
      Top = 50
      Width = 121
      Height = 23
      TabOrder = 0
    end
    object DateTimePicker1: TDateTimePicker
      Left = 84
      Top = 104
      Width = 121
      Height = 33
      Date = 44920.000000000000000000
      Time = 0.570590497685771000
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 84
      Top = 173
      Width = 121
      Height = 23
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 84
      Top = 245
      Width = 121
      Height = 23
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 84
      Top = 317
      Width = 121
      Height = 23
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox
    Left = 279
    Top = 8
    Width = 258
    Height = 369
    Caption = 'Kimlik Bilgileri'
    TabOrder = 1
    object Label5: TLabel
      Left = 32
      Top = 56
      Width = 74
      Height = 15
      Caption = 'TC Kimlik No :'
    end
    object Label6: TLabel
      Left = 32
      Top = 88
      Width = 58
      Height = 15
      Caption = 'Anne Ad'#305' : '
    end
    object Label7: TLabel
      Left = 32
      Top = 128
      Width = 53
      Height = 15
      Caption = 'Baba Ad'#305' :'
    end
    object Label8: TLabel
      Left = 32
      Top = 168
      Width = 53
      Height = 15
      Caption = 'Baba Ad'#305' :'
    end
    object Label9: TLabel
      Left = 32
      Top = 208
      Width = 15
      Height = 15
      Caption = #304'l : '
    end
    object Label10: TLabel
      Left = 32
      Top = 248
      Width = 27
      Height = 15
      Caption = #304'l'#231'e : '
    end
    object Label11: TLabel
      Left = 32
      Top = 288
      Width = 80
      Height = 15
      Caption = 'Dogum Tarihi : '
    end
    object Label12: TLabel
      Left = 32
      Top = 320
      Width = 68
      Height = 15
      Caption = 'Do'#287'um Yeri :'
    end
    object Edit5: TEdit
      Left = 112
      Top = 50
      Width = 121
      Height = 23
      TabOrder = 0
    end
    object TEdit
      Left = 112
      Top = 85
      Width = 121
      Height = 23
      TabOrder = 1
    end
    object Edit6: TEdit
      Left = 112
      Top = 125
      Width = 121
      Height = 23
      TabOrder = 2
    end
    object TEdit
      Left = 112
      Top = 165
      Width = 121
      Height = 23
      TabOrder = 3
    end
    object Edit7: TEdit
      Left = 112
      Top = 205
      Width = 121
      Height = 23
      TabOrder = 4
    end
    object Edit8: TEdit
      Left = 112
      Top = 245
      Width = 121
      Height = 23
      TabOrder = 5
    end
    object DateTimePicker2: TDateTimePicker
      Left = 112
      Top = 280
      Width = 122
      Height = 23
      Date = 44920.000000000000000000
      Time = 0.579356851849297500
      TabOrder = 6
    end
    object Edit10: TEdit
      Left = 112
      Top = 317
      Width = 121
      Height = 23
      TabOrder = 7
    end
  end
  object GroupBox3: TGroupBox
    Left = 559
    Top = 8
    Width = 258
    Height = 369
    Caption = #304'leti'#351'im Bilgileri'
    TabOrder = 2
    object Label13: TLabel
      Left = 24
      Top = 56
      Width = 66
      Height = 15
      Caption = 'Telefon No : '
    end
    object Label14: TLabel
      Left = 24
      Top = 128
      Width = 46
      Height = 15
      Caption = 'E-Posta :'
    end
    object Label15: TLabel
      Left = 24
      Top = 208
      Width = 57
      Height = 15
      Caption = 'Ev Adresi : '
    end
    object Edit9: TEdit
      Left = 96
      Top = 50
      Width = 121
      Height = 23
      TabOrder = 0
    end
    object Edit11: TEdit
      Left = 96
      Top = 125
      Width = 121
      Height = 23
      TabOrder = 1
    end
    object Edit12: TEdit
      Left = 96
      Top = 208
      Width = 121
      Height = 23
      TabOrder = 2
    end
  end
  object GroupBox4: TGroupBox
    Left = 823
    Top = 8
    Width = 258
    Height = 369
    Caption = 'Oda Bilgileri'
    TabOrder = 3
  end
  object Button1: TButton
    Left = 936
    Top = 383
    Width = 121
    Height = 33
    Caption = 'Kayd'#305' Tamamla '
    TabOrder = 4
  end
  object Button2: TButton
    Left = 936
    Top = 422
    Width = 121
    Height = 33
    Caption = #304'leri '
    TabOrder = 5
  end
  object Button3: TButton
    Left = 936
    Top = 461
    Width = 121
    Height = 33
    Caption = 'Geri'
    TabOrder = 6
  end
end
