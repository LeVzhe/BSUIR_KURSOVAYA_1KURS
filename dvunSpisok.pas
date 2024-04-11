unit dvunSpisok;

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
//function Calc: extended;

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
  
/////////////////////////////////////////////////////////
{function Calc: extended;
var
  currentNode1: adr;
  currentNode2: adr;
  res: extended;
  el1, el2: extended;
  resText, addText: string;
begin
  currentNode1 := Head;
  currentNode2 := tail;
  res := 1;

  while (currentNode1 <> nil) and (currentNode1 <> currentNode2) do
  begin
    el1 := currentNode1^.element;
    el2 := currentNode2^.element;
    write('(', (currentNode1^.element):0:2, ' - ', (currentNode2^.element):0:2, ')');
    res := res * (el1 - el2);
    if currentNode1^.next = nil then
      Break;

    currentNode1 := currentNode1^.next.next;
    currentNode2 := currentNode2^.prev.prev;
  end;
  Calc := res;
end; }

end.
