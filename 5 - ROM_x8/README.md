### Mémoria ROM

Para a mémoria ROM foram utilizadas as seguintes entrada(s), saída(s) e variáveis:

* **clock** - para o sinal lógico do processador.
* **enable** - para habilitar a escrita no registrador.
* **reset** - para resetar o dado do registrador (para 0).
* **leitor** - sinal para habilitar a leitura da instrução.
* **endereco** - sinal usado para acessar os endereços da mémoria **ROM**.
* **output** - para saída de dado em 8 bits que contém no registrador.

A mémoria **ROM** é uma mémoria apenas de leitura, que fucionará da seguinte maneira:

Se caso **reset** for **1**, **output** receberá **"00000000"**, se não ele ele verificará se os eventos de **clock**, **enable** e **leitor** se estão habilitados, assim será acessado um valor da mémoria e armazenado em **output**, caso o leitor seja **0**, **output** será **"00000000"**. Podemos verificar isso no seguite trecho de código:

```
if( reset = '1' ) then
  output <= "00000000";
	  elsif( clock'event and  clock = '1' ) then
			if( Enable = '1' ) then
				if( leitor = '1' ) then
					output <= memoria(conv_integer(endereco));
				else
					output <= "00000000";
				end if;
			end if;
 end if;
 ```
    
Podemos ainda verificar a validação dos resultados em *WaveForm_ROM_x8*.
