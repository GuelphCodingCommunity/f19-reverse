all: secret secreto ex_1 ex_1o

secreto: secret.c
	gcc -o secret.o secret.c -c
secret: secreto
	gcc -o secret secret.o

ex_1o: ex_1.c
	gcc -o ex_1.o ex_1.c -c
ex_1: ex_1o
	gcc -o ex_1 ex_1.o

clean:
	rm secret ex_1 ex_1.o secret.o
