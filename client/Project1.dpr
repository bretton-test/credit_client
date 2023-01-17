program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {mainForm},
  SMTP1 in 'SMTP1.pas' {Form1},
  dmUnit in 'dmUnit.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Приём платежей';
  Application.CreateForm(TmainForm, mainForm);
  Application.Run;

  end.
