unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmMain = class(TForm)
    GrpMsgConfirmacao: TGroupBox;
    BtnConfirmacao: TButton;
    EdtMsgConfirmacaoMensagem: TEdit;
    Label1: TLabel;
    EdtMsgConfirmacaoTitulo: TEdit;
    Label2: TLabel;
    GrpMsgPergunta: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    BtnPergunta: TButton;
    EdtMsgPerguntaMensagem: TEdit;
    EdtMsgPerguntaTitulo: TEdit;
    procedure BtnConfirmacaoClick(Sender: TObject);
    procedure BtnPerguntaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}


uses Classe.Notification;

procedure TFrmMain.BtnConfirmacaoClick(Sender: TObject);
begin
  TNotificacao.New
    .SetTitulo(EdtMsgConfirmacaoTitulo.Text)
    .SetMensagem(EdtMsgConfirmacaoMensagem.Text)
    .Execute;
end;

procedure TFrmMain.BtnPerguntaClick(Sender: TObject);
begin
  if TNotificacao.New
    .SetTitulo(EdtMsgPerguntaTitulo.Text)
    .SetMensagem(EdtMsgPerguntaMensagem.Text)
    .SetPergunta(True)
    .Execute then
  begin
    { Se clicou em sim execute sua rotina aqui }
    TNotificacao.New
      .SetMensagem('Clicou em sim!!!')
      .Execute;
  end
  else
  begin
    { Se clicou em não execute sua rotina aqui }
    TNotificacao.New
      .SetMensagem('Clicou em não!!!')
      .Execute;
  end;
end;

end.
