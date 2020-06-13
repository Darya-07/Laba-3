unit RemoveForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    SeriesEdt: TEdit;
    NumberEdt: TEdit;
    RemoveBtn: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure RemoveBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure numberFilterKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses MainForm, UPerson;

{$R *.dfm}

procedure TForm2.RemoveBtnClick(Sender: TObject);
var
  passport: TPassportData;
begin
  if SeriesEdt.Text = '' then
    ShowMessage('Не указана серия паспорта')
  else if NumberEdt.Text = ''  then
    ShowMessage('Не указан номер паспорта')
  else
    begin
      passport.series := StrToInt(SeriesEdt.Text);
      passport.number := StrToInt(NumberEdt.Text);
      Self.Hide;
      HashForm.RemovePerson(passport);
    end;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  SeriesEdt.Text := '0';
  NumberEdt.Text := '0';
end;

procedure TForm2.numberFilterKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key >= ' ') and ((Key < '0') or (Key > '9')) then
      Key := #0;
end;

end.
