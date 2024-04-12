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
    procedure Tuesday_btnClick(Sender: TObject);
    procedure Wednesday_btnClick(Sender: TObject);
    procedure Thursday_btnClick(Sender: TObject);
    procedure Friday_btnClick(Sender: TObject);
  
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

var
  CurrentActiveDay: integer;

////////UPDATE/////////////////
procedure FillList();
var
  currentNode: CurrentDayList.adr;
  HolydayNode: HolydayList.adr;
begin
  currentNode := fill_listbox.fillCurrentDay(CurrentActiveDay);
  HolydayNode := fill_listbox.fillHoliday();

  while True do
  begin
    form1.holiday_listbox.addItem(HolydayNode^.element, nil);
    HolydayNode := HolydayNode^.next;

    if HolydayNode = nil then
      Break;

  end;

  while True do
  begin
    form1.actual_day_listbox.addItem(currentNode^.element, nil);
    currentNode := currentNode^.next;

    if currentNode = nil then
      Break;
  end;
end;

procedure ClearList();
begin
  form1.actual_day_listbox.clear();
  form1.holiday_listbox.clear();
  CurrentDayList.ClearList();
  HolydayList.ClearList();
end;

procedure UpdateFormList;
begin
  ClearList();
  FillList();
  case CurrentActiveDay of
    1: form1.Actual_label.Caption := 'Планы на ПОНЕДЕЛЬНИК';
    2: form1.Actual_label.Caption := 'Планы на ВТОРНИК';
    3: form1.Actual_label.Caption := 'Планы на СРЕДУ';
    4: form1.Actual_label.Caption := 'Планы на ЧЕТВЕРГ';
    5: form1.Actual_label.Caption := 'Планы на ПЯТНИЦУ';
    else form1.Actual_label.Caption := 'Планы на день';
  end;
end;
//////////////////////////

procedure TForm1.FormCreate(Sender: TObject);
begin
  CurrentActiveDay := DayOfWeek(Now)-1;
  case CurrentActiveDay of
    1: form1.Article_label.Caption := 'Сегодня ПОНЕДЕЛЬНИК';
    2: form1.Article_label.Caption := 'Сегодня ВТОРНИК';
    3: form1.Article_label.Caption := 'Сегодня СРЕДА';
    4: form1.Article_label.Caption := 'Сегодня ЧЕТВЕРГ';
    5: form1.Article_label.Caption := 'Сегодня ПЯТНИЦА';
    6: form1.Article_label.Caption := 'Сегодня СУББОТА';
    0: form1.Article_label.Caption := 'Сегодня ВОСКРЕСЕНИЕ';
    else form1.Article_label.Caption := 'Продуктивная неделя';
  end;
  if (CurrentActiveDay = 6) or (CurrentActiveDay = 0) then
    CurrentActiveDay := 5;

  UpdateFormList();
end;

procedure TForm1.Monday_btnClick(Sender: TObject);
begin
  CurrentActiveDay := 1;
  UpdateFormList();
end;

procedure TForm1.Tuesday_btnClick(Sender: TObject);
begin
  CurrentActiveDay := 2;
  UpdateFormList();
end;

procedure TForm1.Wednesday_btnClick(Sender: TObject);
begin
  CurrentActiveDay := 3;
  UpdateFormList();
end;

procedure TForm1.Thursday_btnClick(Sender: TObject);
begin
  CurrentActiveDay := 4;
  UpdateFormList();
end;

procedure TForm1.Friday_btnClick(Sender: TObject);
begin
  CurrentActiveDay := 5;
  UpdateFormList();
end;


end.

