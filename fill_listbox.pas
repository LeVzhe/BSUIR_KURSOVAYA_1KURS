unit fill_listbox;

interface
uses HolydayList, CurrentDayList;

  var
    inputFile: Text;
    line: string;
    i: integer;

  function fillHoliday: HolydayList.adr;
  function fillCurrentDay: CurrentDayList.adr;

implementation


  function fillHoliday: HolydayList.adr;
  begin
    AssignFile(inputFile, 'db/hol.txt');
    Reset(inputFile);
    i := 1;

    while not Eof(inputFile) do
    begin
      ReadLn(inputFile, line);
      HolydayList.addNode(line);
      Inc(i);
    end;

    CloseFile(inputFile);
    fillHoliday := HolydayList.Head;
  end;

  function fillCurrentDay: CurrentDayList.adr;
  begin
    AssignFile(inputFile, 'db/1.txt');
    Reset(inputFile);
    i := 1;
    while not Eof(inputFile) do
    begin
      ReadLn(inputFile, line);
      CurrentDayList.addNode(line);
      Inc(i);
    end;

    CloseFile(inputFile);
    fillCurrentDay := CurrentDayList.Head;
  end;

end.
 