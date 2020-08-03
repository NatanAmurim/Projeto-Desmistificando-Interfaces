object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Conhecendo interfaces'
  ClientHeight = 299
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object editNome: TEdit
    Left = 64
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object editSobreNome: TEdit
    Left = 64
    Top = 91
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnUnir: TButton
    Left = 64
    Top = 118
    Width = 75
    Height = 25
    Caption = 'Unir'
    TabOrder = 2
    OnClick = btnUnirClick
  end
  object memoNomeSobreNome: TMemo
    Left = 64
    Top = 160
    Width = 345
    Height = 89
    TabOrder = 3
  end
  object cmbTipoPessoa: TComboBox
    Left = 64
    Top = 34
    Width = 145
    Height = 21
    TabOrder = 4
    OnChange = cmbTipoPessoaChange
    Items.Strings = (
      'F'#237'sica'
      'Jur'#237'dica')
  end
end
