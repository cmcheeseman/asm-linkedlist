extern malloc

section .text

global createlist

createlist:
  push rbp
  mov rax, rdi
  mov rbx, 13
  mul ebx
  mov rdi, rax
  mov rax, 0
  call malloc
  pop rbp
  ret

