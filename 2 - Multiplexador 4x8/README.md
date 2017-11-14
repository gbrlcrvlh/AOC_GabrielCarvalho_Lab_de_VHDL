### MULTIPLEXADOR:
Para o multiplexador foram utilizados os seguintes componentes:
* **Clock** - para o sinal lógico do processador.
* **selector** - para indicar a saída do MUX, com 2 bits.
* **E0** - para primeira entrada de 8 bits do MUX.
* **E1** - para segunda entrada de 8 bits do MUX.
* **E3** - para terceira entrada de 8 bits do MUX.
* **E4** - para quarta entrada de 8 bits do MUX.
	
O multiplexador é um componente onde terá diversas entradas e apenas uma saída que será definida através do **selector** dependendo do seu valor:
	caso o **selector** seja "00", a saída do MUX terá o valor de **E0**.
	caso o **seletor** seja "01", a saída do MUX terá o valor de **E1**.
	caso o **seletor** seja "10", a saída do MUX terá o valor de **E2**.
	caso o **seletor** seja "11", a saída do MUX terá o valor de **E3**.
Obs: todos os casos necessitam do evento de borda alta no ciclo de **clock**.

Como podemos conferir no arquivo *WaveForm_mux_4x8.vwf* ou na imagem *WaveForm_mux_4x8.png*, em 30ns temos uma borda alta no ciclo de **clock** e assim é lido o valor contido no **selector**, que consta como "01" em 30ns e logo o **output** assume o valor de **E1 (00001000)**. Um pouco mais adiante, em 70ns, temos mais um exemplo onde o **selector** tém o valor de "11" e logo após o **output** assume o valor de **E3 (00000110)**.
