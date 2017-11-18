### Mémoria ROM

Para a mémoria ROM foram utilizadas as seguintes entrada(s), saída(s) e variáveis:

* **clock** - para o sinal lógico do processador.
* **enable** - para habilitar a escrita no registrador.
* **reset** - para resetar o dado do registrador (para 0).
* **leitor** - sinal para habilitar a leitura da instrução.
* **endereco** - sinal usado para acessar os endereços da mémoria **ROM**.
* **output** - para saída de dado em 8 bits que contém no registrador.

A mémoria **ROM** é uma mémoria apenas de leitura, que fucionará da seguinte maneira:

Se caso **resent** for **1**, **output** receberá **"00000000"**, se não ele ele verificará se os eventos de **clock**, **enable** e **leitor** para que ele acesse um valor da mémoria e armazene em **output**, caso o leitor seja **0**, **output** será **"00000000"**.
