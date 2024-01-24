extern createlist
extern printlist
extern free
extern findlast
extern addnode
extern printf
extern getnodeloc
extern removenode

section .data
  fmt: db "%p", 10, 0
  fmt2: db "%d", 10, 0
section .bss
  listptr: resb 8

section .text

global main

main:
  push rbp
  mov rdi, 6
  mov rax, 0
  call createlist
  mov QWORD [listptr], rax
  mov rdi, rax
  mov esi, 64
  call addnode
  inc esi
  call addnode
  inc esi
  call addnode
  inc esi
  call addnode
  inc esi
  call addnode
  inc esi
  call addnode
  mov rbx, listptr
  mov rdi, QWORD [rbx]
  call printlist
  mov rbx, listptr
  mov rdi, QWORD [rbx]
  mov esi, 3
  call removenode
  mov rbx, listptr
  mov rdi, QWORD [rbx]
  mov esi, 70
  call addnode
  mov rbx, listptr
  mov rdi, QWORD [rbx]
  call printlist
  pop rbp
  mov rax, 0
  ret
