!Verifico se Primo
  _EXIT=1
  _PRINTF=127
.SECT .TEXT
start:  MOV AX,(n)
        MOV BX,(n)
verifica:
      MOV AX,(n)
      DEC BX
      CMP BX,1
      JE fine
      DIV BX
      CMP DX, 0
      JNE verifica
      MOV AX, 0
      PUSH AX
      JMP chiusura
fine : MOV AX,1
      PUSH AX
      PUSH _EXIT
chiusura:  PUSH _EXIT
.SECT .DATA
n: .WORD 5
.SECT .BSS
