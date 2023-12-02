%include 'in_out.asm'

SECTION   .data
 msg2 db 'Наименьшее число: ', 0h
 A dd '41'
 B dd '62'
 C dd '35'
SECTION   .bss
 min resb 10
SECTION   .text
GLOBAL _start
 _start:

  mov ecx, [B]
  mov [min], ecx
  mov edx, [A]

  cmp ecx, ebx
  jl check_C
  mov ecx, [A]
  mov [min], ecx

  check_C:

  mov ecx, [min]
  cmp ecx, edx
  jl fin
  mov ecx, [C]
  mov [min], ecx

  mov eax, min
  call atoi
  mov [min], eax

  fin:
  mov eax, msg2
  call sprint
  mov eax, [min]
  call iprintLF
  call quit
