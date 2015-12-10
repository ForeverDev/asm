all: hello
	./hello

hello: main.o hello.o
	g++ main.o hello.o -o hello
	rm -Rf *.o

hello.o: hello.asm
	nasm -f macho64 hello.asm -o hello.o

main.o: main.cpp
	g++ -c main.cpp -o main.o
