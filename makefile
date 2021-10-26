all: main.o namegen.o nodeList.o song.o
	gcc -o a.out main.o namegen.o nodeList.o song.o

main.o: main.c namegen.h nodeList.h 
	gcc -c main.c

nodeList.o: nodeList.c nodeList.h
	gcc -c nodeList.c

namegen.o: namegen.c namegen.h
	gcc -c namegen.c

song.o: song.c song.h
	gcc -c song.c

run:
	make && ./a.out

clean:
	rm a.out
	rm *.o
	rm *~