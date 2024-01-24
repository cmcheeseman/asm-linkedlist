extern findlast

section .text
global addnode
addnode:
  push rbp
  mov rcx, rdi
  mov al, BYTE [rcx + 12]
  cmp al, 0
  je firstnode
addnodeloop:
  mov al, BYTE [rcx + 12]
  cmp al, 0
  je addnodeend
  add rcx, 13
  jmp addnodeloop
addnodeend:
  mov rax, 0
  call findlast
  mov QWORD [rax], rcx
  mov QWORD [rcx], 0
  mov DWORD [rcx + 8], esi
  mov BYTE [rcx + 12], 1
  pop rbp
  ret
firstnode:
  mov QWORD [rcx], 0
  mov DWORD [rcx + 8], esi
  mov BYTE [rcx + 12], 1
  pop rbp
  ret
