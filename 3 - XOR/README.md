### Porta Lógica XOR

Para a porta lógica xor foram usadas as seguintes entrada(s) e saída(s):

* **A** - entrada que recebe até 8 bits de sinais.
* **B** - entrada que recebe até 8 bits de sinais.
* **output** - saída que contem até 8 bits de sinais.

Segundo a lógica proposicional a porta **XOR** funciona da seguinte maneira (~A.B)v(A.~B), ou seja quando A e B assumirem estados diferentes o resultado é 1, iguais o resultado é 0.
O mesmo acontece acima, mas acontece bit a bit, ou seja, dada duas entradas de exemplo de testes *00000101* e *10100000* o resultado será *10100101*, podemos observar em *Waveform_Xor2x8* onde os testes são realizados, **A** recebe um ciclo de clock de 20ns e **B** 40ns. O resultado é obtido a cada 20ns de clock, com pode se observar em *Waveform_Xor2x8.

Segue a tabela de funcionamento do **XOR**:

A|B|XOR
-|-|---
0|0| 0
0|1| 1
1|0| 1
1|1| 0
