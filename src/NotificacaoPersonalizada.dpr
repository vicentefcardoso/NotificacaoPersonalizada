program NotificacaoPersonalizada;

uses
  Vcl.Forms,
  Main in 'Main.pas' {FrmMain},
  Classe.Notification in 'Classe.Notification.pas',
  Notificacao in 'Notificacao.pas' {FrmNotificacao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
