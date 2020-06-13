program HashProject;

uses
  Forms,
  MainForm in 'MainForm.pas' {HashForm},
  UEntries in 'UEntries.pas',
  UHashTable in 'UHashTable.pas',
  UPerson in 'UPerson.pas',
  AddPersonForm in 'AddPersonForm.pas' {AddUserForm},
  FindForm in 'FindForm.pas' {Form1},
  RemoveForm in 'RemoveForm.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(THashForm, HashForm);
  Application.CreateForm(TAddUserForm, AddUserForm);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
