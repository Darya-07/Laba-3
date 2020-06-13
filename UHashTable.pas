unit UHashTable;

interface

uses UEntries, Grids, SysUtils;

const
  TABLE_SIZE = 50;

type

  TFile = TextFile;
  
  THashTable = class
    private
       table: array[0..TABLE_SIZE-1] of THashEntry;
       function hash(key: TKey;i:integer): integer;
       function incIndex(var i:Integer;key:Tkey):Integer;
    public
      constructor Create;
      procedure add(key: TKey; value: TValue);
      function get(key: TKey): TValue;
      function remove(key: TKey): Boolean;
      procedure clear();
      procedure saveToFile(fileName: String);
      function loadFromFile(fileName: String): integer;
      procedure showInTable(table: TStringGrid);
      destructor Destroy; override;
  end;

implementation

function THashTable.incIndex(var i:Integer;key:Tkey):Integer;
begin
  Inc(i);
  Result:=hash(key,i);
end;

constructor THashTable.Create;
var
  i:integer;
begin
  for i:=0 to TABLE_SIZE-1 do
    table[i] := nil;
end;

procedure THashTable.add(key: TKey; value: TValue);
var
  index,nextIndex: integer;
  i:Integer;
  ok:Boolean;
begin
  ok:=False;
  i:=0;
  index := hash(key,i);
  if table[index] = nil then
    table[index]:=THashEntry.Create(key, value)
  else
    while not ok do
      begin
        ok:=table[index].add(key,value);
        if not ok then
          if table[index].nextCell <> -1 then
            index:=table[index].nextCell
          else
            begin
              NextIndex:=incIndex(i, key);
              table[index].nextCell:=nextIndex;
              table[NextIndex]:=THashEntry.Create(key, value);
              ok:=True;
            end;
      end;
end;

function THashTable.get(key: TKey): TValue;
var
  index: integer;
  ok:Boolean;
begin
  result := nil;
  ok:=false;
  index := hash(key,0);
  if table[index]<>nil then
    while (not ok) and (index<>-1) do
      begin
        if (table[index].key.series = key.series) and
           (table[index].key.number = key.number) then
          begin
            if table[index].state = filled then
              Result:=table[index].value;
            ok:=True;
          end
        else
          index:=table[index].nextCell;
      end;
end;

function THashTable.remove(key: TKey): Boolean;
var
  index,i: integer;
begin
  i:=0;
  index := hash(key,i);
  Result := false;
  if table[index]<>nil then
    while (not Result) and (index<>-1) do
      begin
        if (table[index].key.series = key.series) and
           (table[index].key.number = key.number) then
          begin
            Result:=True;
            table[index].state:= Deleted;
          end
        else
          index:=table[index].nextCell;
      end;
end;
                                
function THashTable.hash(key: TKey; i:Integer): integer;
begin
  Result :=(key.series + key.number + Sqr(i)) mod TABLE_SIZE;
end;

procedure THashTable.clear();
var
  i: integer;
begin
    for i:=0 to TABLE_SIZE-1 do
    begin
      table[i].Free;
      table[i] := nil;
    end;
end;

procedure THashTable.saveToFile(fileName: String);
var
  f: TFile;
  i:integer;
begin
  Assign(f, fileName);
  Rewrite(f);
  for i:=0 to TABLE_SIZE - 1 do
    if (table[i] <> nil) and (table[i].state <> deleted)  then
      begin
        writeln(f,table[i].value.FPassport.series);
        writeln(f, table[i].value.FPassport.number);
        writeln(f,table[i].value.FFIO);
        writeln(f,table[i].value.FAddress);
      end;
  Close(f);
end;

function THashTable.loadFromFile(fileName: String): integer;
var
  f: TFile;
  value : TValue;
begin
  result := 0;
  clear();
  Assign(f, fileName);
  Reset(f);
  while not Eof(f) do
    begin
      value := TValue.Create();
      readln(f, value.FPassport.series );
      readln(f,value.FPassport.number);
      readln(f, value.FFIO);
      readln(f, value.FAddress);
      add(value.FPassport, value);
      inc(result);
    end;
  Close(f);
end;

procedure THashTable.showInTable(table: TStringGrid);
var
  i:Integer;
  rowIndex: Integer;
begin
  table.RowCount := 1;
  for i:=0 to TABLE_SIZE - 1 do
    if (self.table[i] <> nil) and (Self.table[i].state = filled) then
      with(self.table[i].value) do
        begin
          rowIndex := table.RowCount;
          table.Cells[0,rowIndex] := IntToStr(FPassport.series);
          table.Cells[1,rowIndex] := IntToStr(FPassport.number);
          table.Cells[2,rowIndex] := FFIO;
          table.Cells[3,rowIndex] := FAddress;
          table.RowCount := rowIndex + 1;
        end;
end;

destructor THashTable.Destroy;
begin
  clear();
  inherited;
end;

end.
