%include 'in_out.asm'

SECTION .data
msg1 db 'Type A ', 0h
msg2 db "Type b ", 0h
SECTION .bss
x resb 100
a resb 100
SECTION .text
GLOBAL _start
 _start:
  mov ecx, x
  mov edx, 100
  call sread

  mov eax, x
  call atoi

  cmp eax, 2
  jge _steptwo

  mov ecx, a
  mov edx, 100
  call sread

  mov eax, a
  call atoi

  jmp _stepone

 _stepone:

  mov ebx, 3
  mul ebx
  jmp _fin

 _steptwo:

  sub eax, 2

 _fin:
  call iprintLF
  call quit
