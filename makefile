all: shm.c
	gcc -o shared_memory shm.c -lrt
