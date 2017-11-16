### Somador Imediato

Para o somador imediato foram utilizadas as seguintes entrada(s), saída(s) e variáveis:

* **input**   - para entrada de dado em 8 bits a ser escrito no registrador.
* **output**  - para saída de dado em 8 bits que contém no registrador.
* **a**       - constante com valor **00000100**.
* **b**       - que recebe **input** como valor.
* **cin**     - que recebe **cout** como calor.
* **cout**    - que é iniciado com o valor.
* **result**  - recebe o valor da soma.

O componente somador imediato funciona da seguinte maneira:

A variavel **result** irá receber a soma dos valores das variáveis **a**,**b** e **cin**, quando a soma realizada, por exemlo, de **1 + 1** o resultado será **0** e o valor **1** vai para **cout**, assim no próximo loop o **cin** receberá o valor de **cout**. Podemos obeservar isto no seguinte trecho de código do arquivo *somadorImediato_x8*:

```
for i in 0 to 7 loop
    cin := cout;
    result(i) := (a(i) xor b(i)) xor cin;
    cout := (b(i) and cin) or (a(i) and cin) or (a(i) and b(i));
end loop;
```

Assim que as iterações do loop terminar o valor de **result** irá ser armazenado em **output** e então podemos conferir a soma de valores de 8 bits com o valor **00000100**, podemos obeservar isto em *WaveForm_somadorImediato_x8*.

Para um melhor entendimento, segue a tabela verdade básica do somador:

A|B|CIN|S|COUT
-|-|---|-|----
0|0| 0 |0| 0
0|1| 0 |1| 0
1|0| 0 |1| 0
1|1| 0 |0| 1
0|0| 1 |1| 0
0|1| 1 |0| 1
1|0| 1 |0| 1
1|1| 1 |1| 1
