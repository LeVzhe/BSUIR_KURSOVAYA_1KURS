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
{$R *.dfm}


procedure TForm1.FormCreate(Sender: TObject);
var
  holidayItems: array[1..100] of string;
begin
  holidayItems := fill_listbox.fillHoliday()

  for i:=1 to length(holidayItems) do
  begin
    holiday_listbox.Items.Add(holidayItems[i])
  end;


end;

end.

