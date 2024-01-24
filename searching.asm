
section .text
global findlast

findlast:
  push rbp
  mov rbx, rdi
findlastloop:
  mov rax, QWORD [rbx]
  cmp rax, 0
  je findlastdone
  mov rbx, rax
  jmp findlastloop
findlastdone:
  mov rax, rbx
  pop rbp
  ret
