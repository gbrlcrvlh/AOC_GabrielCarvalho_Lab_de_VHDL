### Somador 8 bits

Para o somador foram usadas as seguintes entrada(s) e saída(s):

* **input1** - para a entrada de dado 1.
* **input2** - para a entrada de dado 2
* **output** - para o resultado.
* **overflow** - caso seja uma soma com overflow.

Basicamente o somador soma os valores contidos no **input1** e **input2**.
Através WaveForm disponibilizada no arquivo *WaveForm_Somador8bits.vwf* ou na imagem *WaveForm_Somador8bits.png*, podemos conferir os dados de acordo com a tabela:

**input1**|**input2**|**output**|**overflow**
--------|--------|--------|-
00000000|00000100|00000100|0
00000001|00000101|00000110|0
00000010|00000110|00001000|0
00000011|00000111|00001010|0
00000100|00001000|00001100|0