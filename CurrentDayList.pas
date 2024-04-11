unit CurrentDayList;

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

end.
