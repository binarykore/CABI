install:
	gcc -fPIC -c -o index.o index.c
	gcc -L . -shared -o libindex.so index.o
	gcc -L . -o shared shared.c -lindex
	chmod o+x a.sh
	bash a.sh
