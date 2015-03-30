program PreSufGen;

uses
  Forms,
  uPreSufGen in 'uPreSufGen.pas' {fPreSufGen};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfPreSufGen, fPreSufGen);
  Application.Run;
end.
