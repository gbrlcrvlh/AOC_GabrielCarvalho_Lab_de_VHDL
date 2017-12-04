### ULA 8 bits

Para a ULA foram usadas as seguintes entrada(s) e saída(s):

* **input_A** - entrada do registrador A
* **input_B** - entrada do registrador B
* **opcode** - identificador da opreção
* **output** - saída de dados A op B

A ULA contém as seguintes operações
**Opcode**|Operação
----|---------
0000|A and B
0001|A or B
0010|not A
0011|A nand B
0100|A nor B
0101|A xor B
0110|A + B
0111|A - B
1000|<<A
1001|>>A

Através WaveForm disponibilizada no arquivo *WaveForm_ULA_x8.vwf* ou na imagem *WaveForm_ULA_x8.png*, podemos conferir os dados de acordo com a tabela:

**opcode**|**input_A**|**input_B**|**output**
----|--------|--------|--------
0000|00000000|00000011|00000000
0001|00000001|00000100|00000101
0010|00000010|00000101|11111101
0011|00000011|00000110|11111101
0100|00000100|00000111|11111000
0101|00000101|00001000|00001101
0110|00000110|00001001|00001111
0111|00000111|00001010|00000101    > 00000101 = -3
1000|00001000|00001011|00100000
1001|00001001|00001100|00000010
