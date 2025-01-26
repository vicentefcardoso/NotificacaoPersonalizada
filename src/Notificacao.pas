unit Notificacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmNotificacao = class(TForm)
    PnlTop: TPanel;
    PnlBottom: TPanel;
    PnlCenter: TPanel;
    LblMessage: TLabel;
    BtnClose: TSpeedButton;
    LblTitulo: TLabel;
    BtnNao: TButton;
    BtnSim: TButton;
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnNaoClick(Sender: TObject);
    procedure BtnSimClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure LblTituloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LblMessageMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    procedure MoveForm(AButton: TMouseButton);
  public
    _ModalResult, _Pergunta: Boolean;
    _Mensagem, _Titulo: string;
  end;

var
  FrmNotificacao: TFrmNotificacao;

implementation

{$R *.dfm}


procedure TFrmNotificacao.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmNotificacao.BtnNaoClick(Sender: TObject);
begin
  _ModalResult := False;
  Close;
end;

procedure TFrmNotificacao.BtnSimClick(Sender: TObject);
begin
  _ModalResult := True;
  Close;
end;

procedure TFrmNotificacao.FormCreate(Sender: TObject);
var
  region: HRGN;
begin
  { Arredonda os cantos do formulário }
  region := CreateRoundRectRgn(0, 0, Width, Height, 15, 15);
  SetWindowRgn(Handle, region, True);
end;

procedure TFrmNotificacao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then { Se pressionar a Tecla Enter }
    BtnSimClick(Self)
  else if Key = VK_ESCAPE then { Se pressionar a Tecla ESC }
    BtnNaoClick(Self);
end;

procedure TFrmNotificacao.FormShow(Sender: TObject);
begin
  _ModalResult := False;
  LblTitulo.Caption := _Titulo;
  LblMessage.Caption := _Mensagem;

  if _Pergunta then
    BtnSim.Caption := 'Sim'
  else
    BtnSim.Caption := 'Ok';

  BtnNao.Visible := _Pergunta;
end;

procedure TFrmNotificacao.LblMessageMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  MoveForm(Button);
end;

procedure TFrmNotificacao.LblTituloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  MoveForm(Button);
end;

procedure TFrmNotificacao.MoveForm(AButton: TMouseButton);
begin
  { Permite clicar e arrastar o form }
  if AButton = mbLeft then
  begin
    ReleaseCapture;
    Self.Perform(WM_SYSCOMMAND, $F012, 0);
  end;
end;

end.
