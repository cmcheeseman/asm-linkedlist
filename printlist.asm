extern printf

section .data
  fmt1: db "%d ", 0
  fmt2: db 10, 0

section .text
global printlist

printlist:
  push rbp
  mov rbx, rdi
  mov rdi, fmt1
printlistloop:
  cmp rbx, 0
  je end
  mov esi, DWORD [rbx + 8]
  call printf
  mov rdi, fmt1
  mov rbx, QWORD [rbx]
  jmp printlistloop
end:
  mov rdi, fmt2
  call printf
  pop rbp
  ret
