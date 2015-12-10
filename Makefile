main: main.o mainasm.o
	g++ main.o mainasm.o -o main
	rm -Rf *.o

mainasm.o: main.asm
	nasm -f macho64 main.asm -o mainasm.o

main.o: main.cpp
	g++ -c main.cpp -o main.o
