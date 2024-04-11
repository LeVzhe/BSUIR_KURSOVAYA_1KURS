unit fill_listbox;

interface
uses dvunSpisok;
  type
    TArray = array[1..100] of string;

  var
    inputFile: Text;
    line: string;
    i: integer;

  function fillHoliday: dvunSpisok.adr;

implementation


  function fillHoliday: dvunSpisok.adr;
  begin
    AssignFile(inputFile, 'db/hol.txt');
    Reset(inputFile);
    i := 1;

    while not Eof(inputFile) do
    begin
      ReadLn(inputFile, line);
      dvunSpisok.addNode(line);
      Inc(i);
    end;

    CloseFile(inputFile);
    fillHoliday := dvunSpisok.Head;
  end;

end.
 