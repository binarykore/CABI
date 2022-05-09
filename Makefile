install:
	gcc -fPIC -c -o index.o index.c
	gcc -L . -shared -o libindex.so index.o
	gcc -L . -o shared shared.c -lindex
	LD_LIBRARY_PATH=$PWD
	export LD_LIBRARY_PATH
	./shared
