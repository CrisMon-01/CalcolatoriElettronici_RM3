  _EXIT = 1
  _PRINTF = 127
.SECT .TEXT
start:
  MOV CX, end-vec
  SHR CX , 1
  MOV BX, vec
  MOV AX,0
  MOV SI,0
repeat:
  MOV DX , (BX)(SI)
  CMP DX, o
  ADD SI,2
  JNE e
  ADD AX,1
  e:  LOOP repeat
  PUSH AX
  PUSH string
  PUSH _PRINTF
  SYS
  MOV SP,BP
  PUSH 0
  PUSH _EXIT
  SYS
.SECT .DATA
vec: .WORD 1,2,3,3,4,5
stringa: .ASCII "ho %d occorrenze"
o: .WORD 3
end: .SPACE 1
.SECT .BSS
