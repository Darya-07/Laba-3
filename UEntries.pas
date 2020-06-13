unit UEntries;

interface

uses UPerson;

type
  TKey = TPassportData;
  TValue = TPerson;
  TCellState = (Filled, Deleted);

  THashEntry = class
    key:TKey;
    value: TValue;
    state: TCellState;
    nextCell: Integer;
    constructor Create(key: TKey; value:TValue);
    function add(key: TKey; value: TValue):Boolean;
  end;

implementation

constructor THashEntry.Create(key: TKey; value:TValue);
begin
  inherited Create;
  self.key := key;
  self.value := value;
  state:=  Filled;
  nextCell:= -1;
end;

function THashEntry.add(key: TKey; value: TValue):Boolean;
begin
  Result:=False;
  if Self = nil then
    begin
      Self:=THashEntry.Create(key, value);
      Result:=True;
    end
  else
    if (Self.key.series = key.series) and (Self.key.number =key.number) then
      begin
        Self.value:=value;
        state:=Filled;
        Result:=True;
      end;
end;

end.







