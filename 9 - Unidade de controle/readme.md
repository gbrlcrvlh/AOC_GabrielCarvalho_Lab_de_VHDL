### Unidade de Controle

Para a unidade de controle foram utilizadas as seguintes saídas e entradas:
* **clock** - Para sinal lógico do processador
* **opcode** - Entrada para o opcode
* **PCescCond** - flag 1 bit para instruções do tipo jump condicional (Op = 1101-1110)
* **PCesc** - flag 1 bit para habilitar escrita no PC
* **MemParaReg** - flag 1 bit para o MUX de entrada no banco de registradores
* **regEscrita** - flag 1 bit para habilitar a escrita no banco de registradores
* **ULAfonteA** - flag 1 bit para o MUX que leva a primeira entrada da ULA
* **MemLeitura** - flag 1 bit para habilitar leitura na memória
* **MemEscrita** - flag 1 bit para habilitar escrita na memória
* **ULAfonteB** - flag 2 bits para o MUX que leva a segunda entrada da ULA
* **PCfonte** - flag 2 bits para o MUX que leva a entrada do PC
* **ULAop** - flag 4 bits (= opcode) para seleção da operação na ULA

Podemos acompanhar pelas WaveForms os seguintes compotamentos:  
As WaveForms foram separadas em 4 arquivos para representar melhor a unidade de controle multiciclo.  
A WaveForm *WaveForm_UnidadeControle_TipoR.png* demonstra as etapas das instruções do tipo R, são 4 ciclos de clocks. (opcode = 0000-1001)  
A WaveForm *WaveForm_UnidadeControle_LW.png* demonstra a instrução de maior etapas no datapath, são 5 ciclos de clocks. Instrução do tipo load (Opcode = 1010)  
A waveForm *WaveForm_UnidadeControle_SW.png* demonstra as etapas da instrução do tipo SW, são 4 ciclos de clocks. (opcode = 1011)  
A waveform *WaveForm_UnidadeControle_TipoJ.png* demonstra as etapas para instruções do tipo J, são 3 ciclos de clocks.  

Decidimos mostrar apenas as principais na waveform, porém nosso datapath suporta instruções do tipo R com apenas 3 ciclos caso a instrução seja do tipo EQ ou EQI (opcode 0110 e 0111) e também para o desvio condicional BEQ e BNE de 3 ciclos (opcode = 1101 e 1110)
