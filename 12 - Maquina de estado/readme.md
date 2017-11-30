### Maquina de estado

Para a maquina de estado foram usadas as seguintes entrada(s) e saída(s):

* **clock** - para o sinal lógico do processador
* **reset** - para resetar a maquina de estado
* **P** -
* **R** -
* **output** - para indicar qual em qual estado está

De acordo com a imagem, a maquina de estado possui 4 estado sendo eles A, B, C e D
Através WaveForm disponibilizada no arquivo *WaveForm_MaquinadeEstado.vwf* ou na imagem *WaveForm_MaquinadeEstado.png*, podemos conferir que:
* Caso estado A: **R** = 0, **output** = "00". Se **P** = 1 vai para o estado B
* Caso estado B: **R** = 0, **output** = "01". Se **P** = 1 vai para o estado C
* Caso estado C: **R** = 0, **output** = "10". Se **P** = 1 vai para o estado D
* Caso estado D: **R** = 0, **output** = "11". Se **P** = 1 vai para o estado B senão estado A