unit sortPriority;

interface
uses SysUtils;

const
  DaysOfWeek: array [1..6] of string = ('|ом|', '|бр|', '|яп|', '|вр|', '|ор|', '|бшу|');

procedure sortInFile;

implementation

procedure sortInFile;
var
  InputFile, outputFile: text;
  Line: string;
  Data: array [1..6] of array of string;
  i, j, DayIndex: integer;
begin
  assign(InputFile, 'db\pr.txt');
  reset(InputFile);

  readln(InputFile, Line);

  for i := 1 to 6 do
    SetLength(Data[i], 0);

  while not eof(InputFile) do
  begin
    readln(InputFile, Line);

    DayIndex := 0;
    for i := 1 to 6 do
    begin
      if Pos(DaysOfWeek[i], Line) > 0 then
      begin
        DayIndex := i;
        break;
      end;
    end;

    if DayIndex > 0 then
    begin
      SetLength(Data[DayIndex], Length(Data[DayIndex]) + 1);
      Data[DayIndex, High(Data[DayIndex])] := Line;
    end;
  end;

  close(InputFile);

  AssignFile(outputFile, 'db\pr.txt');
  Rewrite(outputFile);

  WriteLn(outputFile, '] [] [] [] [] [] [] [] [] [] [] []');

  for i := 1 to 6 do
  begin
    for j := 0 to High(Data[i]) do
      WriteLn(outputFile, Data[i, j]);
  end;

  CloseFile(outputFile);
end;

end.
