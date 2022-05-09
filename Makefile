install:
	gcc -fPIC -c -o index.o index.c
	gcc -L . -shared -o libindex.so index.o
	gcc -L . -o shared shared.c -lindex
	bash a.sh
