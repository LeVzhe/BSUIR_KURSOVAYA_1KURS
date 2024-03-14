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

uses fill_listbox;
{$R *.dfm}


procedure TForm1.FormCreate(Sender: TObject);

var
  i, today: integer;

begin
  today := DayOfWeek(Now)-1;

  for i:=1 to length(fill_listbox.fillHoliday()) do
  begin
    if fill_listbox.fillHoliday()[i] = '' then
      break;
    holiday_listbox.addItem(fill_listbox.fillHoliday()[i], nil)
  end;
  //holiday_listbox.addItem(intToStr(Today), nil); для проверки, какой сейчас день недели

end;

end.

