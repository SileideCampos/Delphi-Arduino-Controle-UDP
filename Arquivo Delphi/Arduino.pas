unit Arduino;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Menus, IdBaseComponent, IdComponent,
  IdUDPBase, IdUDPClient, Vcl.Imaging.jpeg, Vcl.Buttons;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    Comandos: TTabSheet;
    TabSheet2: TTabSheet;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    DigitalWrite1: TMenuItem;
    HIGH1: TMenuItem;
    HIGH2: TMenuItem;
    DigitalRead1: TMenuItem;
    Image4: TImage;
    Image5: TImage;
    IdUDPClient1: TIdUDPClient;
    AnalogWrite1: TMenuItem;
    PopupMenu2: TPopupMenu;
    AnalogRead1: TMenuItem;
    TabSheet1: TTabSheet;
    Memo1: TMemo;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel1: TPanel;
    barrado: TPanel;
    Pin_12: TImage;
    Pin_11: TImage;
    Pin_09: TImage;
    Image2: TImage;
    Pin_08: TImage;
    Pin_10: TImage;
    Pin_07: TImage;
    Pin_06: TImage;
    Pin_05: TImage;
    Pin_04: TImage;
    Pin_03: TImage;
    Pin_02: TImage;
    Pin_13: TImage;
    Pin_A0: TImage;
    Pin_A1: TImage;
    Pin_A2: TImage;
    Pin_A3: TImage;
    Pin_A4: TImage;
    Pin_A5: TImage;
    Image6: TImage;
    Button2: TButton;
    Image8: TImage;
    Pim_13: TImage;
    Panel3: TPanel;
    Pim_12: TImage;
    Pim_11: TImage;
    Pim_10: TImage;
    Pim_09: TImage;
    Pim_08: TImage;
    Pim_07: TImage;
    Pim_06: TImage;
    Pim_05: TImage;
    Pim_04: TImage;
    Pim_03: TImage;
    Pim_02: TImage;
    Pim_01: TImage;
    Pim_00: TImage;
    Pim_14: TImage;
    Pim_15: TImage;
    Pim_16: TImage;
    Pim_17: TImage;
    Pim_18: TImage;
    Pim_19: TImage;
    Pim_20: TImage;
    Pim_21: TImage;
    Image3: TImage;
    Image30: TImage;
    TrackBar1: TTrackBar;
    Image7: TImage;
    GND: TImage;
    Pim_23: TImage;
    Pim_22: TImage;
    Pim_25: TImage;
    Pim_24: TImage;
    Pim_26: TImage;
    Pim_28: TImage;
    Pim_30: TImage;
    Pim_27: TImage;
    Pim_29: TImage;
    Pim_31: TImage;
    Pim_33: TImage;
    Pim_35: TImage;
    Pim_37: TImage;
    Pim_39: TImage;
    Pim_41: TImage;
    Pim_43: TImage;
    Pim_45: TImage;
    Pim_47: TImage;
    Pim_49: TImage;
    Pim_51: TImage;
    Pim_53: TImage;
    comando_entrada: TEdit;
    Pim_32: TImage;
    Pim_34: TImage;
    Pim_36: TImage;
    Pim_38: TImage;
    Pim_A00: TImage;
    Pim_A01: TImage;
    Pim_A02: TImage;
    Pim_A03: TImage;
    Pim_A04: TImage;
    Pim_A05: TImage;
    Pim_A06: TImage;
    Pim_A07: TImage;
    Panel4: TPanel;
    Label4: TLabel;
    Image1: TImage;
    Pim_A08: TImage;
    Pim_A09: TImage;
    Pim_A10: TImage;
    Pim_A11: TImage;
    Pim_A12: TImage;
    Pim_A13: TImage;
    Pim_A14: TImage;
    Pim_A15: TImage;
    Pim_40: TImage;
    Pim_42: TImage;
    Pim_46: TImage;
    Pim_48: TImage;
    Pim_50: TImage;
    Pim_52: TImage;
    Pim_44: TImage;
    Image17: TImage;
    Image18: TImage;
    img_azul: TImage;
    Img_vermelho: TImage;
    img_cinza: TImage;
    Image9: TImage;
    Img_Verde: TImage;
    Label1: TLabel;
    Img_vermelho2: TImage;
    Img_vermelho3: TImage;
    Img_pwmAzul: TImage;
    Img_azul1: TImage;
    Img_azul2: TImage;
    Label2: TLabel;
    Pino_A0: TLabel;
    Pino_A1: TLabel;
    Pino_A2: TLabel;
    Pino_A3: TLabel;
    Pino_A4: TLabel;
    Pino_A5: TLabel;
    Image10: TImage;
    procedure conexao;
    procedure FormActivate(Sender: TObject);
    procedure Pin_12ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure MegaContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure LOWClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure AnalogWrite1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure HIGHClick(Sender: TObject);
    procedure DigitalRead1Click(Sender: TObject);
    procedure AnalogRead1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    function Envia_Comando(msg: String; var retorno: String): Boolean;
    procedure Image8Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure GNDClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Pin_13Click(Sender: TObject);
    procedure Pin_12Click(Sender: TObject);
    procedure Pin_11Click(Sender: TObject);
    procedure Pin_10Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  pino_str: String;
  my_ret: String;

implementation

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
begin
 conexao;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  conexao;
end;

procedure TForm1.conexao;
var
  retorno: string;
begin
  IdUDPClient1.Host := '192.168.2.108';
  IdUDPClient1.Port := 8888;
  IdUDPClient1.Connect;

  if(IdUDPClient1.Connected)then
  begin
    IdUDPClient1.Send('TC');
    retorno := IdUDPClient1.ReceiveString(80);
    if retorno = 'TCOK' then
    begin
      pin_02.Enabled := true;
      pin_03.Enabled := true;
      pin_04.Enabled := true;
      pin_05.Enabled := true;
      pin_06.Enabled := true;
      pin_07.Enabled := true;
      pin_08.Enabled := true;
      pin_09.Enabled := true;
      pin_10.Enabled := true;
      pin_11.Enabled := true;
      pin_12.Enabled := true;
      pin_13.Enabled := true;
      Timage(FindComponent('Image9')).Picture := Img_Verde.Picture;
      Label1.Caption := 'Online';
      IdUDPClient1.Active := true;
    end
    else
    begin
      ShowMessage('Não foi possível conectar com o Arduino. 1. Verifique suas configurações de IP e Porta. 2. Certifique-se de que consegue executar um ping no Arduino antes de tentar a conexão');
      Timage(FindComponent('Image9')).Picture := Img_Vermelho3.Picture;
      Label1.Caption := 'Offline';
      IdUDPClient1.Active:= false;
      if MessageDlg('Erro ao enviar o comando - não foi possível conectar com o Arduino. Verifique suas configurações de IP e Porta e as conexões. Deseja tentar reconectar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        conexao;
      end;
    end;
  end
  else
  begin
    ShowMessage('Não foi possível conectar com o Arduino. 1. Verifique suas configurações de IP e Porta. 2. Certifique-se de que consegue executar um ping no Arduino antes de tentar a conexão');
    Timage(FindComponent('Image9')).Picture := Img_Vermelho3.Picture;
    Label1.Caption := 'Offline';
    IdUDPClient1.Active:= false;
    if MessageDlg('Erro ao enviar o comando - não foi possível conectar com o Arduino. Verifique suas configurações de IP e Porta e as conexões. Deseja tentar reconectar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      conexao;
    end;
  end;
end;

procedure TForm1.AnalogRead1Click(Sender: TObject);
begin
  Envia_Comando('AR' + pino_str, my_ret);
end;

procedure TForm1.AnalogWrite1Click(Sender: TObject);
var
 my_value: string;
 valor: integer;
 var
 retorno: boolean;
begin
 my_value := InputBox('Digite um valor inteiro entre 0 e 255', 'Valor: ', '');
 try
  valor := strtoint(my_value);
  my_value := formatcurr('000', valor);
  if (valor >=0 ) and (valor <= 255) then
  begin
   retorno := Envia_Comando('AW' + pino_str + (my_value), my_ret);
   if retorno then
      Timage(FindComponent('Pin_' + pino_str)).Picture := img_pwmAzul.Picture
   else
      Timage(FindComponent('Pin_' + pino_str)).Picture := img_cinza.Picture
  end
  else
   showmessage('Valor incorreto! Valor digitado deve ser um número inteiro entre 0 e 255.');
 except
  Showmessage('COMANDO CANCELADO');
 end;
end;

procedure TForm1.DigitalRead1Click(Sender: TObject);
var
 retorno: boolean;
begin
 retorno := Envia_Comando('DR' + pino_str, my_ret);

 if retorno then
   Timage(FindComponent('Pin_' + pino_str)).Picture := img_azul.Picture
 else
   Timage(FindComponent('Pin_' + pino_str)).Picture := img_cinza.Picture;
end;

procedure TForm1.LOWClick(Sender: TObject);
var
 retorno: boolean;
begin
 retorno := Envia_Comando('DW' + pino_str + 'L', my_ret);
 if retorno then
  Timage(FindComponent('Pin_' + pino_str)).Picture := img_vermelho2.Picture
 else
  Timage(FindComponent('Pin_' + pino_str)).Picture := img_cinza.picture;
end;

procedure TForm1.HIGHClick(Sender: TObject);
var
 retorno: boolean;
begin
 retorno := Envia_Comando('DW' + pino_str + 'H', my_ret);

 if retorno then
 begin
  Timage(FindComponent('Pin_' + pino_str)).Picture := Img_vermelho.Picture;
 end
 else
  Timage(FindComponent('Pin_' + pino_str)).Picture := Img_cinza.Picture;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Envia_Comando(comando_entrada.Text, my_ret);
end;

function TForm1.Envia_Comando(msg: String; var retorno: String): Boolean;
var
  pino : String;
begin
 IdUDPClient1.Send(msg);
 Memo1.Lines.Add(datetimetostr(now) + ' - ' + msg);
 retorno := IdUDPClient1.ReceiveString(700);
 Memo1.Lines.Add(datetimetostr(now) + ' - ' + retorno);
 result := true;
 pino := msg[3]+msg[4];
 if retorno = '' then
 begin
   result := false;
   Timage(FindComponent('Image9')).Picture := Img_Vermelho.Picture;
   Label1.Caption := 'Offline';
   pin_02.Enabled := false;
   pin_03.Enabled := false;
   pin_04.Enabled := false;
   pin_05.Enabled := false;
   pin_06.Enabled := false;
   pin_07.Enabled := false;
   pin_08.Enabled := false;
   pin_09.Enabled := false;
   pin_10.Enabled := false;
   pin_11.Enabled := false;
   pin_12.Enabled := false;
   pin_13.Enabled := false;
   if MessageDlg('Erro ao enviar o comando - não foi possível conectar com o Arduino. Verifique suas configurações de IP e Porta e as conexões. Deseja tentar reconectar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
     conexao;
   end;
 end
 else if (retorno = 'DWOK') or (retorno = 'AWOK') then
   ShowMessage('COMANDO EXECUTADO')
 else if (retorno = 'ERRO') then
   ShowMessage('ERRO AO EXECUTAR COMANDO EXECUTADO')
 else if (msg[1]='D') and (msg[2]='R') then
 begin
    ShowMessage('LEITURA DO PINO DIGITAL '+msg[3]+''+msg[4]+': '+retorno);
    if(retorno = 'LOW') then
    begin
      Timage(FindComponent('Pin_' + pino)).Picture := Img_azul1.Picture;
    end
    else
    begin
      Timage(FindComponent('Pin_' + pino)).Picture := Img_azul2.Picture;
    end;
 end
 else if (msg[1]='A') and (msg[2]='R') then
 begin
    ShowMessage('LEITURA DO PINO ANALOGICO A'+''+msg[4]+' = '+retorno+' V');
    case msg[4] of
    '0':
      Pino_A0.Caption := retorno[1]+retorno[2]+retorno[3]+'v';
    '1':
      Pino_A1.Caption := retorno[1]+retorno[2]+retorno[3]+'v';
    '2':
      Pino_A2.Caption := retorno[1]+retorno[2]+retorno[3]+'v';
    '3':
      Pino_A3.Caption := retorno[1]+retorno[2]+retorno[3]+'v';
    '4':
      Pino_A4.Caption := retorno[1]+retorno[2]+retorno[3]+'v';
    '5':
      Pino_A5.Caption := retorno[1]+retorno[2]+retorno[3]+'v';
    end;
 end;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
 showmessage('Estes pinos não podem ser controlados!');
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
showmessage('Estes pinos não podem ser controlados!');
end;

procedure TForm1.Image6Click(Sender: TObject);
begin
showmessage('Estes pinos não podem ser controlados!');
end;

procedure TForm1.Image7Click(Sender: TObject);
begin
showmessage('Estes pinos não podem ser controlados!');
end;

procedure TForm1.Image8Click(Sender: TObject);
begin
showmessage('Estes pinos não podem ser controlados!');
end;

procedure TForm1.GNDClick(Sender: TObject);
begin
showmessage('Estes pinos não podem ser controlados!');
end;



procedure TForm1.Pin_12ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 if Timage(sender).tag in [3, 5, 6, 9, 10, 11] then
  AnalogWrite1.Visible := true
 else
  AnalogWrite1.Visible := false;

 DigitalWrite1.Caption := 'Digital Write ' + Timage(sender).Name;
 DigitalRead1.Caption  := 'Digital Read '  + Timage(sender).Name;
 AnalogWrite1.Caption  := 'Analog Write '  + Timage(sender).Name;
 AnalogRead1.Caption  := 'Analog Read '  + Timage(sender).Name;

 pino_str := formatcurr('00', Timage(sender).tag);
end;

procedure TForm1.Pin_10Click(Sender: TObject);
begin
   showmessage('PINO UTILIZADO PELO SHIELD');
end;

procedure TForm1.Pin_11Click(Sender: TObject);
begin
   showmessage('PINO UTILIZADO PELO SHIELD');
end;

procedure TForm1.Pin_12Click(Sender: TObject);
begin
  showmessage('PINO UTILIZADO PELO SHIELD');
end;

procedure TForm1.Pin_13Click(Sender: TObject);
begin
   showmessage('PINO UTILIZADO PELO SHIELD');
end;

procedure TForm1.MegaContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 if (Timage(sender).tag >= 2) and (Timage(sender).tag <= 13) then
  AnalogWrite1.Visible := true
 else
  AnalogWrite1.Visible := false;

 DigitalWrite1.Caption := 'Digital Write ' + Timage(sender).Name;
 DigitalRead1.Caption  := 'Digital Read '  + Timage(sender).Name;
 AnalogWrite1.Caption  := 'Analog Write '  + Timage(sender).Name;
 AnalogRead1.Caption  := 'Analog Read '  + Timage(sender).Name;

 pino_str := formatcurr('00', Timage(sender).tag);
end;

end.
