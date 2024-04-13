unit HolydayList;

interface
type
  adr = ^node;
  node = record
            prev: adr;
            next: adr;
            element: string;
          end;

var
  head, tail: adr;

procedure addNode(elem: string);
procedure ClearList;
procedure deleteNode(index: integer);
function getFocus(index: integer): string;

implementation

procedure addNode(elem: string);
  var
    newNode: adr;
  begin
    new(newNode);
    newNode^.element := elem;
    newNode^.next := nil;
    newNode^.prev := nil;
    if head = nil then
    begin
      head := newNode;
      Tail := newNode;
    end
    else
    begin
      tail^.next := newNode;
      newNode^.prev := tail;
      tail := newNode;
    end;
  end;
  
procedure ClearList;
  var
    currentNode, tempNode: adr;
  begin
    currentNode := head;
    while currentNode <> nil do
    begin
      tempNode := currentNode;
      currentNode := currentNode^.next;
      Dispose(tempNode);
    end;
    head := nil;
    tail := nil;
  end;

procedure deleteNode(index: integer);
var
  inputFile: Text;
  currentNode, tempNode: adr;
  i: integer;
  dbRef: string;
begin
  if (index < 1) or (head = nil) then
  begin
    Exit;
  end;

  if index = 1 then
  begin
    tempNode := head;
    head := head^.next;
    if head <> nil then
      head^.prev := nil
    else
      tail := nil;
    Dispose(tempNode);
    Exit;
  end;

  currentNode := head;
  i := 1;
  while (i < index) and (currentNode <> nil) do
  begin
    currentNode := currentNode^.next;
    Inc(i);
  end;

  if currentNode = nil then
  begin
    Exit;
  end;

  tempNode := currentNode;
  currentNode^.prev^.next := currentNode^.next;
  if currentNode^.next <> nil then
    currentNode^.next^.prev := currentNode^.prev
  else
    tail := currentNode^.prev;
  Dispose(tempNode);

  currentNode := head;
  dbRef := 'db/hol.txt';
  AssignFile(inputFile, dbRef);
  Rewrite(inputFile);
  while currentNode <> nil do
  begin
    Write(inputFile, currentNode^.element);
    Writeln(inputFile);
    currentNode := currentNode^.next;
  end;
  CloseFile(inputFile);
end;

function getFocus(index: integer): string;
var
  i:integer;
  currentNode: adr;
begin
  currentNode := head;
  for i:=1 to index do
  begin
    currentNode := currentNode^.next;
  end;
  getFocus := currentNode^.element;
end;

end.
