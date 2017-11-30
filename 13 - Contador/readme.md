### Contador Síncrono de 8 bits

Para o extensor de sinal foram usadas as seguintes entrada(s) e saída(s):

* **clock** - para o sinal lógico do processador
* **reset** - para resetar o valor do contador
* **enable** - para habilitar o incremento do contador
* **output** - saída de 8 bits para indicar o valor do contador

O contador funciona incrementando o valor count sempre que temos uma borda alta do **clock** e do **enable**.
Através WaveForm disponibilizada no arquivo *WaveForm_Contador_x8.vwf* ou na imagem *WaveForm_Contador_x8.png*, podemos conferir o funcionamento do contador.