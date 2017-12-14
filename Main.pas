unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML, StdCtrls, Buttons, RxRichEd;

type
  TMainForm = class(TForm)
    edSourse: TEdit;
    lSourse: TLabel;
    bbStart: TBitBtn;
    gbMain: TGroupBox;
    mData: TMemo;
    procedure edSourseChange(Sender: TObject);
    procedure bbStartClick(Sender: TObject);
  private
    { Private declarations }
    function DeleteMetaTags(vStr: string): string;
    procedure ReadInfo(aNode: IXMLDOMNode);
    procedure ReadDetails(aNode: IXMLDOMNode);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.edSourseChange(Sender: TObject);
begin
  bbStart.Enabled := (edSourse.Text <> '');
end;

procedure TMainForm.bbStartClick(Sender: TObject);
var
  aXMLD: DOMDocument;
  aNode: IXMLDOMNode;
  aURL: string;
begin
  aURL := edSourse.Text;
  if (Copy(aURL, 0, 11) <> 'http://rss.') then
  begin
    ShowMessage('Please check the source of the data');
    Exit;
  end;

  try
    mData.Clear;
    aXMLD := CoDOMDocument.Create;
    try
      aXMLD.async := false;
      aXMLD.load(aURL);

      if aXMLD.parseError.errorCode <> 0 then
      begin
        ShowMessage('Loading error : ' + aXMLD.parseError.reason);
        Exit;
      end;

      aNode:= aXMLD.documentElement.SelectSingleNode('//rss');

      if aNode.attributes.getNamedItem('version').text <> '2.0' then
      begin
        mData.Lines.Add('Loading error: This version of the program supports only RSS 2.0');
        Exit;
      end;
      aNode := aNode.SelectSingleNode('//channel');

      ReadInfo(aNode);
      ReadDetails(aNode);
    finally
      aXMLD := nil;
    end;
  except
    ShowMessage('Data reading error');
  end;
end;

procedure TMainForm.ReadInfo(aNode: IXMLDOMNode);
begin
  try
    gbMain.caption := aNode.selectSingleNode('//title').text;

    mData.Lines.Add('Info: ');
    mData.Lines.Add(aNode.selectSingleNode('//title').text);
    mData.Lines.Add(aNode.selectSingleNode('//description').text);
    mData.Lines.Add('');
  except
    ShowMessage('Error reading of the headers');
  end;
end;   

procedure TMainForm.ReadDetails(aNode: IXMLDOMNode);
var
  i: integer;       
  aNodeDetail: IXMLDOMNode;
begin
  try
    mData.Lines.Add('Details: ');

    for i := 0 to aNode.selectNodes('//item').length  - 1 do
    begin
      aNodeDetail := aNode.selectNodes('//item').item[i];
      mData.Lines.Add(aNodeDetail.childNodes.item[0].text);
      mData.Lines.Add(DeleteMetaTags(aNodeDetail.childNodes.item[1].text));
      mData.Lines.Add('');
    end;
  except
    ShowMessage('Error reading of the details');
  end;
end;

function TMainForm.DeleteMetaTags(vStr: string): string;
var
  aStr: string;
  p1, p2: integer;
begin
  Result := '';
  aStr := StringReplace(vStr, '&#176;', '', [rfReplaceAll]);
  aStr := StringReplace(aStr, '<br />', #10#13, [rfReplaceAll]);
  while Length(aStr) > 0 do
  begin
    p1 := pos('<', aStr);
    if p1 = 0 then
    begin
      Result := Result + aStr;
      Exit;
    end else
    begin
      Result := Result + Copy(aStr, 0, p1 - 1);
      p2 := pos('>', aStr);
      if p2 = 0 then
      begin
        ShowMessage('Data reading error');
        Exit;
      end;
      aStr := Copy(aStr, p2 + 1, Length(aStr));
    end;
  end;
end;

end.
