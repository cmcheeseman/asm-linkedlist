extern getnodeloc


section .bss
  buff1: resb 8
  buff2: resb 8

section .text

global removenode

removenode:
  push rbp
  mov rbx, rdi
  call getnodeloc
  mov rcx, buff1
  mov QWORD [rcx], rax
  dec esi
  call getnodeloc
  mov rcx, buff2
  mov QWORD [rcx], rax
  add esi, 2
  call getnodeloc
  mov rbx, buff2
  mov rbx, QWORD [rbx]
  mov QWORD [rbx], rax
  mov rbx, buff1
  mov rbx, QWORD [rbx]
  mov BYTE [rbx + 12], 0
  pop rbp
  ret
