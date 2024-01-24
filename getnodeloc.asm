
section .text

global getnodeloc

getnodeloc:
  push rbp
  mov rax, rdi
  mov ecx, esi
loop:
  cmp esi, 0
  je end
  mov rax, QWORD [rax]
  dec esi
  jmp loop
end:
  mov esi, ecx
  pop rbp
  ret
