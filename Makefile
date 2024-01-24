all: removenode.o getnodeloc.o createlist.o main.o searching.o addnode.o printlist.o
	gcc -static removenode.o createlist.o main.o searching.o addnode.o printlist.o getnodeloc.o

createlist.o: createlist.asm
	nasm -felf64 createlist.asm

main.o: main.asm
	nasm -felf64 main.asm

searching.o: searching.asm
	nasm -felf64 searching.asm

addnode.o: addnode.asm
	nasm -felf64 addnode.asm

printlist.o: printlist.asm
	nasm -felf64 printlist.asm

removenode.o: removenode.asm
	nasm -felf64 removenode.asm

getnodeloc.o: getnodeloc.asm
	nasm -felf64 getnodeloc.asm

clean:
	rm *.o a.out
