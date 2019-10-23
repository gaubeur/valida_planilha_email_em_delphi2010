program ValidaPlanilhaEmailDelphi;

uses
  Forms,
  UCarregaPlanilhaBancoDados in 'UCarregaPlanilhaBancoDados.pas' {FrmCarregaPlanilhaBancoDados},
  UGlobal in 'UGlobal.pas',
  UDados in 'UDados.pas' {FrmDados};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmCarregaPlanilhaBancoDados, FrmCarregaPlanilhaBancoDados);
  Application.CreateForm(TFrmDados, FrmDados);
  Application.Run;
end.
