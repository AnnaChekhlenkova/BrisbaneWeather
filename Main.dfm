object MainForm: TMainForm
  Left = 348
  Top = 103
  Width = 966
  Height = 854
  Caption = 'Brisbane Weather'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    950
    816)
  PixelsPerInch = 96
  TextHeight = 13
  object lSourse: TLabel
    Left = 9
    Top = 14
    Width = 34
    Height = 13
    Caption = 'Source'
  end
  object edSourse: TEdit
    Left = 54
    Top = 11
    Width = 550
    Height = 21
    TabOrder = 0
    Text = 
      'http://rss.weatherzone.com.au/?u=12994-1285&lt=aploc&lc=9388&obs' +
      '=1&fc=1&warn=1'
    OnChange = edSourseChange
  end
  object bbStart: TBitBtn
    Left = 614
    Top = 7
    Width = 156
    Height = 25
    Caption = 'Download data'
    TabOrder = 1
    OnClick = bbStartClick
    Glyph.Data = {
      36060000424D3606000000000000360000002800000020000000100000000100
      18000000000000060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF98B0A298B0A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEA8A8A8A8A8A8FE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFA9AEA600B66900B669A9AEA6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEAAAAAA8A8A8A8A8A8AAA
      AAAAFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFF
      FFFFFFA9B0A600AE6500E0A400E0A400AE65A9B0A6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEABABAB848484B4B4B4B4B4B484
      8484ABABABFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFF
      A9B0A600AC6600DCA500D09900D09900DCA500AC66A9B0A6FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEABABAB838383B2B2B2A7A7A7A7A7A7B2
      B2B2838383ABABABFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFA9B1A6
      00A96500D7A500CC9900CD9B00CD9B00CC9900D7A500A965A9B1A6FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEACACAC818181AFAFAFA5A5A5A6A6A6A6A6A6A5
      A5A5AFAFAF818181ACACACFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEB2C7BA00A464
      00D2A600C89900CA9C03C38703C38700CA9C00C89900D2A600A765A9B1A6FFFF
      FFFFFFFFFFFFFFFFFFFFC0C0C07E7E7EACACACA3A3A3A5A5A59B9B9B9B9B9BA5
      A5A5A3A3A3ACACAC808080ACACACFEFEFEFEFEFEFEFEFEFEFEFECADFD100CA90
      00C49B00C49C00C589DDDFD5DDDFD500C58900C49C00C59A00CFA600A566A9B2
      A5FFFFFFFFFFFFFFFFFFD7D7D7A1A1A1A1A1A1A1A1A19C9C9CDADADADADADA9C
      9C9CA1A1A1A1A1A1ABABAB7F7F7FACACACFEFEFEFEFEFEFEFEFEFFFFFFD2DACD
      03C58F03C58FD2DACDFFFFFFFFFFFFD2DACD08C68F00BE9A00C19A00CAA600A3
      66A9B2A5FFFFFFFFFFFFFEFEFED4D4D49E9E9E9E9E9ED4D4D4FEFEFEFEFEFED4
      D4D49F9F9F9D9D9D9F9F9FA8A8A87E7E7EACACACFEFEFEFEFEFEFFFFFFFFFFFF
      C0DBCAC0DBCAFFFFFFFFFFFFFFFFFFFFFFFFD0DACC16C69600B99900BD9A00C6
      A600A166A9B4A6FFFFFFFEFEFEFEFEFED2D2D2D2D2D2FEFEFEFEFEFEFEFEFEFE
      FEFED3D3D3A3A3A39A9A9A9D9D9DA5A5A57D7D7DADADADFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEDACB24C79C00B49900B9
      9B00C1A8009861B2C9BAFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFED3D3D3A7A7A79797979B9B9BA3A3A3767676C1C1C1FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCDAC930C9A200AE
      9700AF9731CCA8C6DFCFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFED2D2D2ABABAB939393939393AFAFAFD6D6D6FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9DAC835C6
      A635C6A6C9DAC8FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFED1D1D1ABABABABABABD1D1D1FEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCDB
      C7BCDBC7FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFED0D0D0D0D0D0FEFEFEFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE}
    NumGlyphs = 2
  end
  object gbMain: TGroupBox
    Left = 7
    Top = 39
    Width = 941
    Height = 774
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = '  Weather  '
    TabOrder = 2
    object mData: TMemo
      Left = 2
      Top = 15
      Width = 937
      Height = 757
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
end
