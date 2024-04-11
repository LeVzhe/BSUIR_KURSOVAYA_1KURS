unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Priority_listbox: TListBox;
    actual_day_listbox: TListBox;
    Holiday_listbox: TListBox;
    Tuesday_btn: TButton;
    Wednesday_btn: TButton;
    Thursday_btn: TButton;
    Friday_btn: TButton;
    Monday_btn: TButton;
    Priority_label: TLabel;
    Actual_label: TLabel;
    Holiday_label: TLabel;
    Article_label: TLabel;
    procedure FormCreate(Sender: TObject);
  
  private

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses fill_listbox, dvunSpisok;
{$R *.dfm}


procedure TForm1.FormCreate(Sender: TObject);

var
  currentNode: dvunSpisok.adr;
  today: integer;

begin
  currentNode := fill_listbox.fillHoliday();
  today := DayOfWeek(Now)-1;
  while True do
  begin
    holiday_listbox.addItem(currentNode^.element, nil);
    currentNode := currentNode^.next;

    if currentNode = nil then
      Break;

  end;
  //holiday_listbox.addItem(intToStr(Today), nil);// для проверки, какой сейчас день недели

end;

end.

