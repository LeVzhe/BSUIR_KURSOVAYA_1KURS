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
    procedure Monday_btnClick(Sender: TObject);
  
  private

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses fill_listbox,
      HolydayList,
      CurrentDayList;
{$R *.dfm}


procedure TForm1.FormCreate(Sender: TObject);

var
  currentNode: HolydayList.adr;
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


procedure TForm1.Monday_btnClick(Sender: TObject);
var
  currentNode: CurrentDayList.adr;
begin
  actual_day_listbox.clear;
  CurrentDayList.ClearList();
  currentNode := fill_listbox.fillCurrentDay();
  while True do
  begin
    actual_day_listbox.addItem(currentNode^.element, nil);
    currentNode := currentNode^.next;

    if currentNode = nil then
      Break;
  end;
end;

end.

