unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus, ExtCtrls;

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
    Drag_btn: TButton;
    btn_onTimer: TTimer;
    Panel1: TPanel;
    Panel2: TPanel;
    Current_Edit: TEdit;
    Holiday_Edit: TEdit;
    Current_mark_btn: TButton;
    Current_del_button: TButton;
    Current_clean_btn: TButton;
    current_add_btn: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Holiday_add_btn: TButton;
    Holiday_del_btn: TButton;
    Holiday_mark_btn: TButton;
    Holiday_clean_btn: TButton;

    procedure FormCreate(Sender: TObject);
    procedure Monday_btnClick(Sender: TObject);
    procedure Tuesday_btnClick(Sender: TObject);
    procedure Wednesday_btnClick(Sender: TObject);
    procedure Thursday_btnClick(Sender: TObject);
    procedure Friday_btnClick(Sender: TObject);
    procedure btn_onTimerTimer(Sender: TObject);
    procedure Drag_btnClick(Sender: TObject);
    procedure current_add_btnClick(Sender: TObject);
    procedure Holiday_add_btnClick(Sender: TObject);
    procedure Current_EditKeyPress(Sender: TObject; var Key: Char);
    procedure Holiday_EditKeyPress(Sender: TObject; var Key: Char);
  
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
  isExpand: boolean;

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
    1: form1.Article_label.Caption := ' Сегодня ПОНЕДЕЛЬНИК';
    2: form1.Article_label.Caption := ' Сегодня ВТОРНИК';
    3: form1.Article_label.Caption := ' Сегодня СРЕДА';
    4: form1.Article_label.Caption := ' Сегодня ЧЕТВЕРГ';
    5: form1.Article_label.Caption := ' Сегодня ПЯТНИЦА';
    6: form1.Article_label.Caption := ' Сегодня СУББОТА';
    0: form1.Article_label.Caption := ' Сегодня ВОСКРЕСЕНИЕ';
    else form1.Article_label.Caption := ' Продуктивная неделя';
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


procedure TForm1.btn_onTimerTimer(Sender: TObject);
begin
  if isExpand then
  begin
    if Form1.Width < 700 then
      Form1.Width := Form1.Width + 10
    else
      btn_onTimer.Enabled := False;
  end
  else
  begin
  if Form1.Width > 470 then
    Form1.Width := Form1.Width - 10
  else
    btn_onTimer.Enabled := False;
  end;
end;

procedure TForm1.Drag_btnClick(Sender: TObject);
begin
  isExpand := not isExpand;
  case isExpand of
    true:
    begin
      Drag_btn.Caption := '<';
      Current_edit.setFocus();
    end;
    false:
    begin
      Drag_btn.Caption := '>';
      actual_day_listbox.SetFocus();
    end;
  end;
  btn_onTimer.Enabled := True;
end;

procedure TForm1.current_add_btnClick(Sender: TObject);
var
  currentDayText: string;
begin
  if Current_edit.Text = '' then
    exit;
  currentDayText := Current_edit.Text;
  fill_listbox.addCurrentDb(CurrentActiveDay, currentDayText);
  UpdateFormList();
  current_edit.Clear;
end;

procedure TForm1.Holiday_add_btnClick(Sender: TObject);
var
  holidayText: string;
begin
  if Holiday_edit.Text = '' then
    exit;
  holidayText := Holiday_edit.Text;
  fill_listbox.addHolidayDb(holidayText);
  UpdateFormList();
  Holiday_edit.Clear;
end;

procedure TForm1.Current_EditKeyPress(Sender: TObject; var Key: Char);
begin
  if Length((Sender as TEdit).Text) >= 18 then
  begin
    Key := #0;
  end;
end;

procedure TForm1.Holiday_EditKeyPress(Sender: TObject; var Key: Char);
begin
  if Length((Sender as TEdit).Text) >= 18 then
  begin
    Key := #0;
  end;
end;

end.

