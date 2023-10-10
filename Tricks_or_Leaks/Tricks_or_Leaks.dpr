program Tricks_or_Leaks;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1};

{$R *.res}

begin

//  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
