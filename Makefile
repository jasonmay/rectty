LIBTOOL = libtool
CC = gcc
CFLAGS= -g -O
INCLUDE_DIRS = -Ilibvterm/include
EXECUTABLE=rectty

rectty: rectty.c rectty.h io.o libvterm/libvterm.la
	$(LIBTOOL) --mode=link $(CC) $(CFLAGS) $(INCLUDE_DIRS) -o $(EXECUTABLE) rectty.c libvterm/libvterm.la io.o

io.o: io.c
	$(CC) -o io.o -c io.c

libvterm/libvterm.la:
	cd libvterm && make

clean:
	cd libvterm && make clean
	rm -f rectty
