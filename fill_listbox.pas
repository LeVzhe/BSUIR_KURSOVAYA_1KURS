unit fill_listbox;

interface
uses HolydayList, CurrentDayList, PriorityList, sortPriority, SysUtils;

  var
    inputFile: Text;
    line: string;
    i: integer;

  procedure addCurrentDb(CurrentActiveDay: integer; str:string);
  procedure addHolidayDb(str:string);
  function fillHoliday: HolydayList.adr;
  function fillCurrentDay(CurrentActiveDay: integer): CurrentDayList.adr;
  function fillPriority: PriorityList.adr;
  procedure addPriorityDb(str:string);

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

  function fillPriority: PriorityList.adr;
  begin
    AssignFile(inputFile, 'db/pr.txt');
    Reset(inputFile);
    i := 1;

    while not Eof(inputFile) do
    begin
      ReadLn(inputFile, line);
      PriorityList.addNode(line);
      Inc(i);
    end;

    CloseFile(inputFile);
    fillPriority := PriorityList.Head;
  end;

  function fillCurrentDay(CurrentActiveDay: integer): CurrentDayList.adr;
  var
    dbRef: string;
  begin
    dbRef := 'db/' + IntToStr(CurrentActiveDay) + '.txt';
    AssignFile(inputFile, dbRef);
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

procedure addCurrentDb(CurrentActiveDay: integer; str:string);
  var
    dbRef: string;
  begin
    dbRef := 'db/' + IntToStr(CurrentActiveDay) + '.txt';
    AssignFile(inputFile, dbRef);
    append(inputFile);
    write(inputFile, str);
    writeln(inputFile);
    close(inputFile);
  end;

procedure addHolidayDb(str:string);
  var
    dbRef: string;
  begin
    dbRef := 'db/hol.txt';
    AssignFile(inputFile, dbRef);
    append(inputFile);
    write(inputFile, str);
    writeln(inputFile);
    close(inputFile);
  end;

  procedure addPriorityDb(str:string);
  var
    dbRef: string;
  begin
    dbRef := 'db/pr.txt';
    AssignFile(inputFile, dbRef);
    append(inputFile);
    write(inputFile, str);
    writeln(inputFile);
    close(inputFile);

    sortPriority.sortInFile();
  end;
end.
 