unit Classe.Notification;

interface

uses Notificacao;

type
  iNotificacao = interface
    ['{B838E408-8572-41BA-A132-86F4803AEAA2}']
    function SetTitulo(Value: string): iNotificacao;
    function SetMensagem(Value: string): iNotificacao;
    function SetPergunta(Value: Boolean): iNotificacao;
    function Execute: Boolean;
  end;

  TNotificacao = class(TInterfacedObject, iNotificacao)
  private
    FTitulo: string;
    FMensagem: string;
    FPergunta: Boolean;
    FFrmNotificacao: TFrmNotificacao;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iNotificacao;

    function SetTitulo(Value: string): iNotificacao;
    function SetMensagem(Value: string): iNotificacao;
    function SetPergunta(Value: Boolean): iNotificacao;
    function Execute: Boolean;
  end;

implementation

{ TNotificacao }

uses Vcl.Forms, System.SysUtils;

constructor TNotificacao.Create;
begin

end;

destructor TNotificacao.Destroy;
begin

  inherited;
end;

function TNotificacao.Execute: Boolean;
begin
  { Cria formulário de notificação }
  FFrmNotificacao := TFrmNotificacao.Create(nil);

  { Verifica se Titulo for vazio e o tipo, se é pergunta ou não e atribuir valor padrão }
  if (FTitulo.Trim = '') and (FPergunta = False) then
    FFrmNotificacao._Titulo := 'Notificação'
  else if (FTitulo.Trim = '') and (FPergunta = True) then
    FFrmNotificacao._Titulo := 'Confirmação'
  else
    FFrmNotificacao._Titulo := FTitulo;

  FFrmNotificacao._Mensagem := FMensagem;
  FFrmNotificacao._Pergunta := FPergunta;
  FFrmNotificacao.ShowModal;
  Result := FFrmNotificacao._ModalResult;

  { Libera a memória alocada para o formulário }
  if Assigned(FFrmNotificacao) then
  begin
    FFrmNotificacao.Free;
    FFrmNotificacao := nil;
  end;
end;

class function TNotificacao.New: iNotificacao;
begin
  Result := Self.Create;
end;

function TNotificacao.SetMensagem(Value: string): iNotificacao;
begin
  { Carrega Variável Mensagem }
  Result := Self;
  FMensagem := Value;
end;

function TNotificacao.SetPergunta(Value: Boolean): iNotificacao;
begin
  { Carrega Variável Pergunta, True ou False }
  Result := Self;
  FPergunta := Value;
end;

function TNotificacao.SetTitulo(Value: string): iNotificacao;
begin
  { Carrega Variável Título }
  Result := Self;
  FTitulo := Value;
end;

end.
