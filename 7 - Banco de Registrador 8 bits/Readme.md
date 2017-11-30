### Banco de Registradores 8 bits

Para o banco de registradores foram usadas as seguintes entradas e saídas:
* **clock** - para o sinal lógico do processador.
* **reset** - para resetar os valores dos registradores.
* **write_register** - para habilitar a escrita no registrador.
* **register_Adress1** - para indicar o endereço do registrador A.
* **register_Adress2** - para indicar o endereço do registrador B.
* **write_data** - dado de 8 bits caso esteja habilitado a escrita no registrador.
* **ReadData1** - dado de 8 bits no endereço do registrador A
* **read_data2** - dado de 8 bits no endereço do registrador B

O banco de registradores funciona como um seletor de dados, caso o **write_register** esteja em 0, é procurado os dados registrado no endereço **register_Adress1** e **register_Adress2** utilizando o componente FlipFlopD. Caso o **write_register** esteja em 1, o banco de registrador irá guardar o dado contido no **write_data** no endereço **register_Adress1** através do demultiplexador.

Podemos ver como funciona através da WaveForm disponibilizada no arquivo *WaveForm_BancodeRegistrador.vwf* ou na imagem *WaveForm_BancodeRegistrador.png*, em 30ns temos uma escrita no registrador de endereço "01" o dado "00000001" e em 70ns outra escrita no endereço "11" o dado "00000011". Podemos conferir em 110 onde requer-se os dados contido no **register_Adress1** e **register_Adress2**, logo é colocado na saída **read_data1** e **read_data2** os valores previamente inseridos no endereço.
