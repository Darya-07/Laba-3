unit AddPersonForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TAddUserForm = class(TForm)
    btnAdd: TButton;
    edtPasportNumber: TEdit;
    lblNumber: TLabel;
    lblSeries: TLabel;
    edtPassportSeries: TEdit;
    lblFIO: TLabel;
    edtFIO: TEdit;
    edtAddress: TEdit;
    lblAddress: TLabel;
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure numberFilterKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddUserForm: TAddUserForm;

implementation

uses MainForm, UPerson;
{$R *.dfm}

procedure TAddUserForm.btnAddClick(Sender: TObject);
var
  person: TPerson;
  passport: TPassportData;
begin
  if edtPassportSeries.Text = '' then
    ShowMessage('Не указана серия паспорта')
  else if edtPasportNumber.Text = ''  then
    ShowMessage('Не указан номер паспорта')
  else if edtFIO.Text = '' then
     ShowMessage('Не указаны ФИО')
  else if edtAddress.Text = '' then
     ShowMessage('Не указан адрес')
  else
    begin
      passport.series := StrToInt(edtPassportSeries.Text);
      passport.number := StrToInt(edtPasportNumber.Text);
      person := TPerson.Create( passport, edtFIO.Text, edtAddress.text);
      Self.Hide;
      HashForm.addPerson(person);
    end;
end;

procedure TAddUserForm.FormShow(Sender: TObject);
begin
  edtPassportSeries.Text := '0';
  edtPasportNumber.Text := '0';
  edtFIO.Text := '';
  edtAddress.Text := '';
end;

procedure TAddUserForm.numberFilterKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key >= ' ') and ((Key < '0') or (Key > '9')) then
      Key := #0;
end;

end.
