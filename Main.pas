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
    Panel3: TPanel;
    priority_del_btn: TButton;
    priority_clear_btn: TButton;
    Label3: TLabel;

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
    procedure Current_del_buttonClick(Sender: TObject);
    procedure Holiday_del_btnClick(Sender: TObject);
    procedure Current_mark_btnClick(Sender: TObject);
    procedure Holiday_mark_btnClick(Sender: TObject);
    procedure priority_del_btnClick(Sender: TObject);
  
  private

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses fill_listbox,
      PriorityList,
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
  PriorityNode: PriorityList.adr;
begin
  currentNode := fill_listbox.fillCurrentDay(CurrentActiveDay);
  HolydayNode := fill_listbox.fillHoliday();
  PriorityNode := fill_listbox.fillPriority();

  while True do
  begin
    form1.holiday_listbox.addItem(HolydayNode^.element, nil);
    HolydayNode := HolydayNode^.next;

    if HolydayNode = nil then
      Break;
  end;

  while True do
  begin
    form1.priority_listbox.addItem(PriorityNode^.element, nil);
    PriorityNode := PriorityNode^.next;
    if PriorityNode = nil then
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
  form1.priority_listbox.clear();
  CurrentDayList.ClearList();
  HolydayList.ClearList();
  PriorityList.ClearList();
end;

procedure UpdateFormList;
begin
  ClearList();
  FillList();
  case CurrentActiveDay of
    1: form1.Actual_label.Caption := '����� �� �����������';
    2: form1.Actual_label.Caption := '����� �� �������';
    3: form1.Actual_label.Caption := '����� �� �����';
    4: form1.Actual_label.Caption := '����� �� �������';
    5: form1.Actual_label.Caption := '����� �� �������';
    else form1.Actual_label.Caption := '����� �� ����';
  end;
end;
//////////////////////////

procedure TForm1.FormCreate(Sender: TObject);
begin


  CurrentActiveDay := DayOfWeek(Now)-1;
  case CurrentActiveDay of
    1: form1.Article_label.Caption := ' ������� �����������';
    2: form1.Article_label.Caption := ' ������� �������';
    3: form1.Article_label.Caption := ' ������� �����';
    4: form1.Article_label.Caption := ' ������� �������';
    5: form1.Article_label.Caption := ' ������� �������';
    6: form1.Article_label.Caption := ' ������� �������';
    0: form1.Article_label.Caption := ' ������� �����������';
    else form1.Article_label.Caption := ' ������������ ������';
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

procedure TForm1.Current_del_buttonClick(Sender: TObject);
var
  Current_elem_index: integer;
begin
  Current_elem_index := actual_day_listbox.ItemIndex + 1;
  currentDayList.deleteNode(Current_elem_index, CurrentActiveDay);
  UpdateFormList();
end;

procedure TForm1.Holiday_del_btnClick(Sender: TObject);
var
  holyday_elem_index: integer;
begin
  holyday_elem_index := holiday_listbox.ItemIndex + 1;
  holydayList.deleteNode(holyday_elem_index);
  UpdateFormList();
end;

procedure TForm1.Current_mark_btnClick(Sender: TObject);
var
  Current_elem_index: integer;
  focus_elem: string;
begin
  Current_elem_index := actual_day_listbox.ItemIndex;
  focus_elem := currentDayList.getFocus(Current_elem_index);

  fill_listbox.addPriorityDb(focus_elem);
  currentDayList.deleteNode(Current_elem_index+1, CurrentActiveDay);
  UpdateFormList();
end;

procedure TForm1.Holiday_mark_btnClick(Sender: TObject);
var
  holyday_elem_index: integer;
  focus_elem: string;
begin
  holyday_elem_index := holiday_listbox.ItemIndex;
  focus_elem := HolydayList.getFocus(holyday_elem_index);

  fill_listbox.addPriorityDb(focus_elem);
  HolydayList.deleteNode(holyday_elem_index+1);
  UpdateFormList();
end;



procedure TForm1.priority_del_btnClick(Sender: TObject);
var
  priority_elem_index: integer;
begin
  priority_elem_index := priority_listbox.ItemIndex + 1;
  PriorityList.deleteNode(priority_elem_index);
  UpdateFormList();
end;

end.
