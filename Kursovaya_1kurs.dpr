program Kursovaya_1kurs;

uses
  Forms,
  Main in 'Main.pas' {Form1},
  fill_listbox in 'fill_listbox.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
