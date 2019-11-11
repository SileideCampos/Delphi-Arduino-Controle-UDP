#include <SPI.h>    
#include <Ethernet.h>
#include <EthernetUdp.h> 

byte mac[] = {0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };
IPAddress ip(192, 168, 2, 108);
unsigned int localPort = 8888;    
char packetBuffer[UDP_TX_PACKET_MAX_SIZE]; 

EthernetUDP Udp;

int getPino(char vet[]);
boolean Valida(char vet[],int pino);
void comando(boolean validado, int pin, String comando, String valor);
long getDecimal(float val);
int valorAnalog;

void setup() {
  Ethernet.begin(mac,ip);
  Udp.begin(localPort);
  Serial.begin(9600);  
}

void loop() {
  String cmd;
  int packetSize = Udp.parsePacket();
  if(packetSize) {
    Serial.println(" ");
    Serial.println(" ");
    Serial.print("TAMANHO DO PACOTE RECEBIDO: ");
    Serial.println(packetSize);
    Serial.print("IP DE ORIGEM DA MENSAGEM: ");
    IPAddress remote = Udp.remoteIP();
    for (int i =0; i < 4; i++)
    {
      Serial.print(remote[i], DEC);
      if (i < 3)
      {
        Serial.print(".");
      }
    }
    Serial.print(", PORTA: ");
    Serial.println(Udp.remotePort()); 
    Udp.read(packetBuffer, UDP_TX_PACKET_MAX_SIZE);
    Serial.print("MENSAGEM RECEBIDA: ");
    Serial.println(packetBuffer);
    if ((packetBuffer[0] == 'D') || (packetBuffer[0] == 'A')) { 
      cmd = (packetBuffer[0]);
      cmd = cmd + (packetBuffer[1]);      
      Serial.print("PINO:");
      int pinn = getPino(packetBuffer);
      Serial.println(pinn);   
      boolean validado = validaComando(packetBuffer, pinn); 
      Serial.print("COMANDO VALIDADO? (BOLEANO): ");
      Serial.println(validado);
      comando(validado, pinn, cmd, valorAnalog);
    }else if ((packetBuffer[0] == 'T') && (packetBuffer[1] == 'C')){
      Serial.print("Resposta: TCOK ");
      Udp.beginPacket(Udp.remoteIP(), Udp.remotePort());
      Udp.write("TCOK");
    }     
    Udp.endPacket();
  }
  delay(10);
}

int getPino(char vet[]){
  int und;
  und = int(vet[3]);
  und-=48;
  int dez;
  dez = int(vet[2]);
  dez-=48;
  dez=dez*10;
  int aux;
  aux = dez+und;
  return aux;
}

boolean validaComando(char vet[],int pino){
  boolean retorno;
  retorno = false;
  if ((toUpperCase(vet[0]) == 'D') && (toUpperCase(vet[1]) == 'W')) {
    if ((toUpperCase(vet[4]) == 'H') || (toUpperCase(vet[4]) == 'L')){
      if (vet[4] == 'H') { 
        valorAnalog = 1;
      } else if (vet[4] == 'L') {
        valorAnalog = 0;
      }
      retorno = true;
    }
  } else if (toUpperCase(vet[0]) == 'A') {
    if (((pino>=0)&&(pino<=5)) || ((pino>=0)&&(pino<=5))) {
      if (toUpperCase(vet[1]) == 'R'){
        retorno = true;
      } else if (toUpperCase(vet[1]) == 'W') {
        int centena,dezena,unidade;
        centena = (int(vet[4])-48)*100;
        dezena  = (int(vet[5])-48)*10;
        unidade = (int(vet[6])-48);
        valorAnalog = centena+dezena+unidade;        
        if ((valorAnalog>=0)&&(valorAnalog<=255)){
          retorno = true;
        }
      }
    }
  } else if ((toUpperCase(vet[0]) == 'D') && (toUpperCase(vet[1]) == 'R')) {
    if (((pino>=0)&&(pino<=13)) || ((pino>=22)&&(pino<=53))) {
        retorno = true;
    }
  } 
  return (retorno);
}    

void comando(boolean validado, int pin, String comando, int valor){
  if(validado){
    Udp.beginPacket(Udp.remoteIP(), Udp.remotePort());
    comando.toUpperCase();
    if (comando == "DR") { 
      pinMode(pin,INPUT);
      int saida;
      saida = digitalRead(pin);
      if(saida==1){
        Udp.write("HIGH");
      }else{
        Udp.write("LOW");
      }
      Serial.println("COMANDOS EXECUTADOS");
      Serial.print("pinMode(");
      Serial.print(pin);
      Serial.println(", INPUT);");
      Serial.print("digitalRead(");
      Serial.print(pin);
      Serial.println(");");
      Serial.println("Leitura de entrada digital");
      Serial.print("Resposta do Arduino:");
      Serial.println(saida); 
    } else if (comando == "DW") {
      pinMode(pin,OUTPUT);
      digitalWrite(pin, valor);
      Serial.println("COMANDOS EXECUTADOS");
      Serial.print("pinMode(");
      Serial.print(pin);
      Serial.println(", OUTPUT);");
      Serial.print("digitalWrite(");
      Serial.print(pin);
      Serial.print(", ");
      Serial.print(valorAnalog);
      Serial.println(");");
      Serial.println("Resposta do Arduino: DWOK");
      Udp.write("DWOK");
    } else if (comando == "AR") {
      float readAnalog;
      float valor;
      readAnalog = analogRead(pin);
      Serial.println("COMANDOS EXECUTADOS");
      Serial.print("AnalogRead(");
      Serial.print(pin);
      Serial.println(");"); 
      //valor = (5*readAnalog)/1023;
      valor = readAnalog;
      Serial.println(valor);
      Serial.println("Leitura de Entrada analogica");
      Serial.print("Resposta do Arduino: ");
      Serial.println(valor);
      char b[5];
      String calculoValor;
      calculoValor = String(int(valor))+"."+String(getDecimal(valor));
      calculoValor.toCharArray(b,5);
      Udp.write(b);
    } else if (comando == "AW") {
      analogWrite(pin, valor);
      Serial.println("COMANDOS EXECUTADOS");
      Serial.print("AnalogWrite(");
      Serial.print(pin);
      Serial.print(", ");
      Serial.print(valor);
      Serial.println(");"); 
      Serial.print("valor analogico pwm:");
      Serial.println(valor);
      Serial.println("Resposta do Arduino: AWOK");
      Udp.write("AWOK");
    }    
  }else{
    Serial.println("Resposta do Arduino: ERRO");
    Udp.write("ERRO");
  } 
}  

long getDecimal(float val)
{
  int intPart = int(val);
  long decPart = 1000*(val-intPart); 
  if(decPart>0)  
    return(decPart);    
  else if(decPart<0) 
    return((-1)*decPart);
  else 
    return(00);          
}
