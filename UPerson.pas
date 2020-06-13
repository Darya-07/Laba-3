unit UPerson;

interface
  
type
     
  TPassportData = record
     series: Integer;
     number: Integer;
  end;

  TPerson = class
    FPassport: TPassportData;
    FFIO : string[30];
    FAddress: string[30];

    constructor Create();  overload;
    constructor Create(Passport: TPassportData; FIO, Address:string);overload;
  end;
  
  function createPassport(series, number: Integer): TPassportData;

implementation

constructor TPerson.Create();
begin
  Self.FPassport:=createPassport(0,0);
  Self.FFIO := '';
  Self.FAddress:='';
end;

constructor TPerson.Create(Passport: TPassportData; FIO, Address:string);
begin
  inherited Create;
  Self.FPassport:=Passport;
  Self.FFIO:=FIO;
  Self.FAddress:=Address;
end;

function createPassport(series, number: Integer): TPassportData;
begin
  Result.series:=series;
  Result.number:=number;
end;

end.
