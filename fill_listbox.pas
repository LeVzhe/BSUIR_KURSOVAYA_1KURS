unit fill_listbox;

interface
  type
    TArray = array[1..100] of string;

  var
    inputFile: Text;
    linesArray: TArray;
    line: string;
    i: integer;

  function fillHoliday: TArray;

implementation


  function fillHoliday: TArray;
  begin
    AssignFile(inputFile, 'db/hol.txt');
    Reset(inputFile);
    i := 1;

    while not Eof(inputFile) do
    begin
      ReadLn(inputFile, line);
      linesArray[i] := line;
      Inc(i);
    end;

    CloseFile(inputFile);
    fillHoliday := linesArray;
  end;

end.
 