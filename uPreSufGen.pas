unit uPreSufGen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfPreSufGen = class(TForm)
    bvl1: TBevel;
    bvl3: TBevel;
    lbl1: TLabel;
    bvl2: TBevel;
    lbl3: TLabel;
    lbl4: TLabel;
    mmoGenTxt: TMemo;
    btnClose: TBitBtn;
    btnGen: TBitBtn;
    mmoSorceText: TMemo;
    ePref: TEdit;
    lbl2: TLabel;
    eSuf: TEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    bClrSorceText: TButton;
    bPasteSorceText: TButton;
    bClrPasteSorceText: TButton;
    procedure btnGenClick(Sender: TObject);
    procedure bClrSorceTextClick(Sender: TObject);
    procedure bPasteSorceTextClick(Sender: TObject);
    procedure bClrPasteSorceTextClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
// Процедура генерирования текста
procedure GenText();

var
  fPreSufGen: TfPreSufGen;

implementation

{$R *.dfm}

procedure TfPreSufGen.btnGenClick(Sender: TObject);
begin
  mmoGenTxt.Clear;
//  CheckErr;
  GenText;
  mmoGenTxt.SelectAll;
  mmoGenTxt.CopyToClipboard;
end;

//______________________________________________________________________________
// Процедура генерирования текста
procedure GenText();
var
  i:Integer;
begin
  with fPreSufGen do
  for i:=0 to mmoSorceText.Lines.Count-1 do
    mmoGenTxt.Lines.Add(ePref.Text+mmoSorceText.Lines.Strings[i]+eSuf.Text);
end;

procedure TfPreSufGen.bClrSorceTextClick(Sender: TObject);
begin
  mmoSorceText.Clear;
end;

procedure TfPreSufGen.bPasteSorceTextClick(Sender: TObject);
begin
  mmoSorceText.PasteFromClipboard;
end;

procedure TfPreSufGen.bClrPasteSorceTextClick(Sender: TObject);
begin
  mmoSorceText.Clear;
  mmoSorceText.PasteFromClipboard;
end;

end.
