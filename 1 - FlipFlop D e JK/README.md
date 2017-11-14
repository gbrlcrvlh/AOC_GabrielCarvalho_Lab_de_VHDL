### Flip-Flop D:

Para o Flip-Flop do tipo D foram utilizados os seguintes componentes:

* Clock - para o sinal lógico do processador.
* Enable - para habilitar a escrita no registrador.
* Reset - para resetar o dado do registrador (para 0).
* Input - para entrada de dado em 8 bits a ser escrito no registrador.
* Output - para saída de dado em 8 bits que contém no registrador.
	
Quando há variação de **CLOCK** e o componente **ENABLE** encontra-se com valor 1, o valor armazenado no registrador será o valor do **INPUT** naquele instante.
Podemos verificar no arquivo *WaveForm0.vwf* ou na imagem *Waveform_FlipFlopD_x8.png* no momento 110ns o Flip-Flop está habilitado para a escrita no registrador e há uma variação de clock para 1, logo em seguida é armazenado o valor do **INPUT (00000010)**, como podemos ver no **output (00000010)**.

Seque a baixo a tabela básica do funcionamento do FlipFlop D:

D|Q
-|-
0|0
1|1

### Flip-FLop JK:

Para o Flip-Flop do tipo JK foram utilizados os seguintes componentes:

* Clock - para o sinal lógico do processador.
* Enable - para habilitar a alteração no valor guardado no Flip-Flop
* Reset - para resetar o dado do registrador (para 0).
* Jump - para representar o sinal lógico JUMP no Flip-Flop.
* Kill - para representar o sinal lógico KILL no Flip-Flop.
* Output - para entrada e saída do dado armazenado no Flip-Flop.
	
No Flip-Flop do tipo JK os possíveis valores serão *1* e *0* que são definidos através das seguintes condições:

* Condição 1: JUMP contém o sinal lógico '1' e o KILL o '1' => Sendo Q o sinal lógico armazenado, o Flip-FLop altera o valor de Q (Q');
* Condição 2: JUMP contém o sinal lógico '0' e o KILL o '0' => Sendo Q o sinal lógico armazenado, o Flip-Flop mantém Q;
* Condição 3: JUMP contém o sinal lógico '1' e o KILL o '0' => Valor armazenado no Flip-Flop será 1;
* Condição 4: JUMP contém o sinal lógico '0' e o KILL o '1' => Valor armazenado no FLip-FLop será 0.

Podemos verificar no arquivo *WaveForm1.vwf* ou na imagem *WaveForm_FlipFlopJK.png* em 10ns caindo na condição 2, logo em seguida em 30ns caindo na condição 3, em 50ns caindo na condição 4 e em 70ns caindo na condição 1. O Output foi utilizado como **INOUT** pois na condição 1 precisamos negar o valor armazenado então utilizamos o *output <= not output*.

Segue abaixo a tabela básica do funcionamento do FlipFlop JK:

J|K|Q
-|-|-
0|0|Q
0|1|0
1|0|1
1|1|'Q
	
