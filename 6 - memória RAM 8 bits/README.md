### Memória RAM

Para a memória RAM foram usadas as seguintes entrada(s) e saída(s):

* **clock** - para o sinal lógico do processador.
* **ler** - sinal lógico para a leitura da memória.
* **escrever** - sinal lógico para a escrita na memória.
* **endereco** - para indicar o endereco a ser lido/escrito.
* **datain** - dado a ser escrito, caso esteja habilitada a escrita.
* **dataout** - saída de dados para uma possível leitura.

Diferente da memória ROM, que apenas é permitido ler dados, na memória RAM é possível ler dados e também escrever através do endereçamento de memória.
Podemos ver como funciona através da WaveForm disponibilizada no arquivo *WaveForm_RAM_x8.vwf* ou na imagem *WaveForm_RAM_x8.png*, em exatos 210ns temos uma borda alta no ciclo de **clock** e a escrita habilitada, logo em seguida o dado **datain** de valor **00000101** é armazenado no **endereco** de valor **0101**. Logo após em 230ns temos mais uma borda alta no ciclo de **clock** e desta vez a leitura habilitada, o **endereço** a ser lido é o **0101** e logo após obtemos o valor que está contido naquele endereço no **dataout** que é o valor **00000101**.

Segue abaixo a tabela de funcionamento da memória RAM no momento citado acima.

escrever|ler|endereco|datain|dataout
-|-|----|--------|--------
1|0|0101|00000101|XXXXXXXX
0|1|0101|XXXXXXXX|00000101
