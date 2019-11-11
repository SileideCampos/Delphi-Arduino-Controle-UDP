# Delphi-Arduino-Controle-UDP

Controle sobre as portas do arduino para ler e escrever; 
Os comandos para comunicação foram previamente configurados no código, seguindo a lógica dos comandos já existentes (digitalRead, digitalWrite, etc).

Para ler o valor de uma porta digital/pwm usa-se o comando: DR12 (D=Digital, R=Read e 12= número da porta a ser lida);
Para ler o valor de uma porta analógica usa-se o comando: AR02 (A=Analog, R=Read e 02= número da porta a ser lida);
Para escrever um valor numa porta digital/pwm usa-se o comando: DW08H ou DW08L (D=Digital, W=Write, 08= número da porta a ser controlada, H= HIGH(nível alto) e L= LOW(nível baixo)).

Cada componente image posicionado nos pinos do arduino, com a utilização da configuração tag, representa um pino do arduino.
E ao acionar o popup desses images, é possível enviar os comandos para controlar as portas do arduino.
